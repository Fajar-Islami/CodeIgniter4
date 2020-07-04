<?php

namespace App\Controllers;

class Pages extends BaseController
{
  public function index()
  {
    $data = [
      'title' => ' Home | CI 4',
      'tes' => ['satu', 'dua', 'tiga']
    ];
    return view('pages/home', $data);
  }

  public function about()
  {
    $data = [
      'title' => ' Halaman About | CI 4'
    ];
    return view('pages/about', $data);
  }

  public function contact()
  {
    $data = [
      'title' => ' Halaman Contact | CI 4',
      'alamat' => [
        [
          'tipe' => 'rumah',
          'alamat' => 'jl. Abc No. 123',
          'kota' => 'Jakarta'
        ],
        [
          'tipe' => 'Kantor',
          'alamat' => 'jl. Xyz No. 098',
          'kota' => 'Bandung'
        ]
      ]
    ];
    return view('pages/contact', $data);
  }

  //--------------------------------------------------------------------

}
