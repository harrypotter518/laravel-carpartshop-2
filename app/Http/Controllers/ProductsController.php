<?php

namespace App\Http\Controllers;

use App\Category_model;
use App\Products_model;
use App\ProductAtrr_model;
use Maatwebsite\Excel\Facades\Excel;
use App\Imports\ProductsImport;
use App\Imports\ProductAttrImport;
use Illuminate\Foundation\Console\StorageLinkCommand;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Image;
use Illuminate\Http\Request;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $menu_active=3;
        $i=0;
        $products=Products_model::paginate(10);
        return view('backEnd.products.index',compact('menu_active','products','i'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */


    public function fileImport(Request $request) 
    {   
        $menu_active=3;
        $categories=Category_model::where('parent_id',0)->pluck('name','id')->all();
        if ($request->file('file'))
        {
            // Excel::import(new ProductsImport, $request->file('file')->store('temp'));
             $data_array =  Excel::toArray(new ProductsImport, $request->file('file'));
             for ($i=1;$i<count($data_array[0]);$i++)
             { 
                $pcode = str_replace("-","", $data_array[0][$i][0] );
                $last_id=  DB::table('products')->insertGetId([
                    'categories_id' => '27',
                    'p_name' => 'TOYOTA Parts: '.$data_array[0][$i][0],
                    'p_code' => $pcode,
                    'p_color' =>'Black',
                    'description' => $data_array[0][$i][1],
                    'price' => $data_array[0][$i][2],
                    'image' => 'to.png',                           
                ]);
                DB::table('product_att')->insert([
                    'products_id' => $last_id,
                    'sku'=>$data_array[0][$i][4],
                    'size' =>$data_array[0][$i][7].'*'.$data_array[0][$i][8].'*'.$data_array[0][$i][9],
                    'price'=>$data_array[0][$i][2],
                    'stock'=>$data_array[0][$i][3],  
                ]);
             } 
                $data = "Products are updated successfully";
                //return back();
                return view('backEnd.products.create',compact('menu_active','categories','data'));
        }
        else
        {
        //    $input_error = 'Select Excel file';
        //     return view('backEnd.products.create',['data'=>$input_error]);
            $data = 'Select Excel file';
            return view('backEnd.products.create',compact('menu_active','categories','data'));
                       
            // return echo '<script type="text/javascript">toastr.success('asda')</script>';
        }
       
    }

    public function create()
    {
        $menu_active=3;
        $categories=Category_model::where('parent_id',0)->pluck('name','id')->all();
        return view('backEnd.products.create',compact('menu_active','categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'p_name'=>'required|min:5',
            'p_code'=>'required',
            'p_color'=>'required',
            'description'=>'required',
            'price'=>'required|numeric',
            'image'=>'required|image|mimes:png,jpg,jpeg|max:1000',
        ]);
        $formInput=$request->all();
        if($request->file('image')){
            $image=$request->file('image');
            if($image->isValid()){
                $fileName=time().'-'.str_slug($formInput['p_name'],"-").'.'.$image->getClientOriginalExtension();
                $large_image_path=public_path('products/large/'.$fileName);
                $medium_image_path=public_path('products/medium/'.$fileName);
                $small_image_path=public_path('products/small/'.$fileName);
                //Resize Image
                Image::make($image)->save($large_image_path);
                Image::make($image)->resize(600,600)->save($medium_image_path);
                Image::make($image)->resize(300,300)->save($small_image_path);
                $formInput['image']=$fileName;
            }
        }
        Products_model::create($formInput);
        return redirect()->route('product.create')->with('message','Add Products Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $menu_active=3;
        $categories=Category_model::where('parent_id',0)->pluck('name','id')->all();
        $edit_product=Products_model::findOrFail($id);
        $edit_category=Category_model::findOrFail($edit_product->categories_id);
        return view('backEnd.products.edit',compact('edit_product','menu_active','categories','edit_category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $update_product=Products_model::findOrFail($id);
        $this->validate($request,[
            'p_name'=>'required|min:5',
            'p_code'=>'required',
            'p_color'=>'required',
            'description'=>'required',
            'price'=>'required|numeric',
            'image'=>'image|mimes:png,jpg,jpeg|max:1000',
        ]);
        $formInput=$request->all();
        if($update_product['image']==''){
            if($request->file('image')){
                $image=$request->file('image');
                if($image->isValid()){
                    $fileName=time().'-'.str_slug($formInput['p_name'],"-").'.'.$image->getClientOriginalExtension();
                    $large_image_path=public_path('products/large/'.$fileName);
                    $medium_image_path=public_path('products/medium/'.$fileName);
                    $small_image_path=public_path('products/small/'.$fileName);
                    //Resize Image
                    Image::make($image)->save($large_image_path);
                    Image::make($image)->resize(600,600)->save($medium_image_path);
                    Image::make($image)->resize(300,300)->save($small_image_path);
                    $formInput['image']=$fileName;
                }
            }
        }else{
            $formInput['image']=$update_product['image'];
        }
        $update_product->update($formInput);
        return redirect()->route('product.index')->with('message','Update Products Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $delete=Products_model::findOrFail($id);
        $image_large=public_path().'/products/large/'.$delete->image;
        $image_medium=public_path().'/products/medium/'.$delete->image;
        $image_small=public_path().'/products/small/'.$delete->image;
        if($delete->delete()){
            unlink($image_large);
            unlink($image_medium);
            unlink($image_small);
        }
        return redirect()->route('product.index')->with('message','Delete Success!');
    }
    public function deleteImage($id){
        //Products_model::where(['id'=>$id])->update(['image'=>'']);
        $delete_image=Products_model::findOrFail($id);
        $image_large=public_path().'/products/large/'.$delete_image->image;
        $image_medium=public_path().'/products/medium/'.$delete_image->image;
        $image_small=public_path().'/products/small/'.$delete_image->image;
        if($delete_image){
            $delete_image->image='';
            $delete_image->save();
            ////// delete image ///
            unlink($image_large);
            unlink($image_medium);
            unlink($image_small);
        }
        return back();
    }
}
