<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
class DefaultExport implements FromView
{

    public function view(): View
    {
        return view('export.default');
    }
}
