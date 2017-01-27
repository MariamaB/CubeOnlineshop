<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $fillable = [
        'name', 'category_id', 'amount', 'price', 'description', 'file_id'
    ];

    public function file() {
        return $this->belongsTo(File::class);
    }
}
