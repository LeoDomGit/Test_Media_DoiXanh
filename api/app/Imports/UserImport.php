<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToArray;
class UserImport implements ToArray
{
    // public function collection(Collection $rows)
    // {
    //     foreach ($rows as $key=> $row) {
    //         // Skip header row or any other rows that need to be skipped
    //         if ($key==0 || $key==1 || $row->isEmpty()) {
    //             continue;
    //         }
    //         $data = [
    //             'group_id' => $row[1],
    //             'first_name'=> $row[2],
    //             'last_name'=> $row[3],
    //             'email'=> $row[4],
    //             'phone'=> $row[5],
    //         ];
    //         User::create($data);
    //     }
    // }
     public function array(array $array)
    {
        return $array;
    }
}
