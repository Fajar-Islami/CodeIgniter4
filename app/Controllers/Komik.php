<?php

namespace App\Controllers;

use \App\Models\KomikModel;

class Komik extends BaseController
{
  protected $komikModel; // supaya bisa dipakai dikelas ini dan turunannya

  public function __construct()
  {
    $this->komikModel = new KomikModel();
  }

  public function index()
  {
    $komik = $this->komikModel->findAll(); //select * from
    $data = [
      'title' => 'Daftar Komik | CI 4',
      'komik' =>  $komik

    ];

    // // Cara konek db tanpa model
    // $db = \Config\Database::connect();
    // $komik = $db->query("Select * from komik");
    // // dd($komik);
    // foreach ($komik->getResultArray() as $row) {
    //   d($row);
    // }

    // Cara konek db dengan model
    // $komikModel = new \App\Models\KomikModel();




    return view('komik/index', $data);
  }


  //--------------------------------------------------------------------

}
