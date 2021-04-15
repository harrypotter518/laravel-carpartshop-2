<?php

namespace App\Imports;
use App\ProductAtrr_model;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class ProductAttrImport implements ToModel
{
    public function model(array $row)
    {        
        return new ProductAtrr_model([       
            'stock' => $row[3],
            'price'  => $row[2],
            'products_id'=>'23',
            'sku' =>'dfs',
            'size'=>'23',
        ]);
    }
    
   
}