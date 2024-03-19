<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
class ExportUser implements FromCollection, WithHeadings,ShouldAutoSize
{
    protected $data;
    public function __construct($data){
        $this->data=$data;
    }
     public function collection()
    {
        return collect($this->data);
    }
    public function headings() :array
    {
        return [
            'ID',
           'Group ID',
           'First Name',
           'Last Name',
           'Email',
           'Phone',
           'Fax',
           'Created_at',
           'Updated_at',
        ];
    }
}
