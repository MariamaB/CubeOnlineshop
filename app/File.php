<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\UploadedFile;

class File extends Model
{
    protected $fillable = [
        'name', 'file_id', 'path'
    ];

    public static function createFromUpload(UploadedFile $file, $path = '')
    {
        if(!is_dir(public_path('img/'.$path))) {
            mkdir(public_path('img/'.$path));
        }

        $file->move(public_path('img/'.$path));

        return self::create([
            'path'=>$path,
            'name'=>$file->getFilename()
        ]);
    }

    public function getUrlAttribute() {
        return asset('img/'.$this->path.'/'.$this->name);
    }
}
