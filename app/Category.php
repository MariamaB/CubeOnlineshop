<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = [
        'name', 'file_id'
    ];

    public function articles() {
        return $this->hasMany(Article::class);
    }

    public function file() {
        return $this->belongsTo(File::class);
    }
}
