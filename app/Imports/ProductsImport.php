<?php

namespace App\Imports;
use App\Products_model;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class ProductsImport implements ToModel
{
    public function model(array $row)
    {
        $row[0] = str_replace("-","",$row[0]);
        return new Products_model([       
            'p_code' => $row[0],
            'description' =>$row[1],
            'price'  => $row[2],
            'categories_id' =>'27',
            'p_name' =>'TOYOTA PARTS: '.$row[0],
            'p_color'=>'Black',
            'image'=>'to.png',
                
        ]);
    }  
   
}