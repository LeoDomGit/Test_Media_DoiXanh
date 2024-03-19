<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Group_User_Model extends Model
{
    use HasFactory;
    protected $table='group_user';
    protected $fillable=['id','title','active'];
}
