<?php

namespace App\Models;

use CodeIgniter\Model;

class OrangModel extends Model
{
  // Konfigurasi DB
  protected $table      = 'orang';
  protected $useTimestamps = true;
  protected $allowedFields = ['nama', 'alamat'];


  // Pencarian data
  public function search($keyword)
  {
    //  Kasih tau nama tabelnya
    // $builder = $this->table('orang');

    // $builder->like('nama', $keyword);
    // return $builder;

    return $this->table('orang')->like('nama', $keyword)->orLike('alamat', $keyword);
  }
}
