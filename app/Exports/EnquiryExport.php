<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithHeadings;

class EnquiryExport implements FromArray, WithHeadings {

    use Exportable;

    public function __construct($exportArr, $headings){
        //$this->request = $request;
        $this->exportArr = $exportArr;
        //$this->productQuery = $productQuery;
        $this->headings = $headings;
    }
/*
    public function query(){
        $productQuery = $this->productQuery;
        return $productQuery;
    }*/

    public function array(): array {

        $exportArr = $this->exportArr;
        return $exportArr;
    }

    public function headings(): array {
        $headings = $this->headings;

        return $headings;
    }
}