<?php

namespace App\Models;

use CodeIgniter\Model;

class KomikModel extends Model
{
  // Konfigurasi DB
  protected $table      = 'komik';
  protected $useTimestamps = true;
}
