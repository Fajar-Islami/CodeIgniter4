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
    // $komik = $this->komikModel->findAll(); //select * from

    $data = [
      'title' => 'Daftar Komik | CI 4',
      'komik' =>  $this->komikModel->getKomik()

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

  public function detail($slug)
  {

    $data = [
      'title' => 'Detail komik',
      'komik' =>  $komik =  $this->komikModel->getKomik($slug) //select slug from, trus ambil data pertamanya
    ];
    // dd($komik);

    // Jika komik tidak ada ditabel
    if (empty($data['komik'])) {
      throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul komik ' . $slug . " tidak ditemukan");
    }
    return view('komik/detail', $data);
  }

  public function create()
  {
    // // ngambil data session, jalanin session dulu -> di BaseController
    // session();

    $data = [
      'title' => 'Form tambah data komik',
      'validation' => \Config\Services::validation()
    ];

    return view('komik/create', $data);
  }

  public function save()
  {
    // dd($this->request->getVar()); //Ambil request apapun bisa get,post

    // Validasi input
    // dari name 
    if (!$this->validate([
      'judul' => [
        'rules' => 'required|is_unique[komik.judul]',
        'errors' => [
          'required' => '{field} komik harus diisi.',
          'is_unique' => '{field} komik sudah ada.'
        ]
      ], 'sampul' => [
        'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
        'errors' => [
          'max_size' => 'Ukuran gambar terlalu besar',
          'is_image' => 'Yang anda pilih bukan gambar',
          'mime_in' => 'Yang anda pilih bukan gambar',
        ]

      ]
    ])) {
      // $validation = \Config\Services::validation();

      // Input dikirim ke session
      return redirect()->to('/komik/create')->withInput();
      // return redirect()->to('/komik/create')->withInput()->with('vallidation', $validation);
      // withInput => input dikirim kedalam session, buat fitur old
    }

    // Ambil gambar
    $fileSampul = $this->request->getFile('sampul');

    // cek gambar ada atau tidak
    if ($fileSampul->getError() == 4) {
      $namaSampul = 'default.png';
    } else {
      // // pindahkan file ke folder img
      // $fileSampul->move('img');
      // ambil nama file
      // $namaSampul = $fileSampul->getName();

      /// klo mau namanya random
      // generate nama sampul
      $namaSampul = $fileSampul->getRandomName();
      // pindahkan file ke folder img
      $fileSampul->move('img', $namaSampul);
    }
    $slug = url_title($this->request->getVar('judul'), '-', true); //membuat string menjadi huruf kecil semua dan spasinya hilang, spasi nya diganti
    $this->komikModel->save([
      'judul' => $this->request->getVar('judul'),
      'slug' => $slug,
      'penulis' => $this->request->getVar('penulis'),
      'penerbit' => $this->request->getVar('penerbit'),
      'sampul' => $namaSampul
    ]);

    session()->setFlashdata('pesan', 'Data berhasil ditambahkan');
    return redirect()->to('/komik');
  }

  public function delete($id)
  {
    // cari gambar berdasarkan id
    $komik = $this->komikModel->find($id);

    // cek jika file gambar default
    if ($komik['sampul'] != 'default.png') {
      // hapus gambar
      unlink('img/' . $komik['sampul']);
    }

    $this->komikModel->delete($id);
    session()->setFlashdata('pesan', 'Data berhasil dihapus');
    return redirect()->to('/komik');
  }

  public function edit($slug)
  {
    $data = [
      'title' => 'Form ubah data komik',
      'validation' => \Config\Services::validation(),
      'komik' => $this->komikModel->getKomik($slug) //ambil semua data komik
    ];

    return view('komik/edit', $data);
  }

  public function update($id)
  {
    // dd($this->request->getVar());
    // Cek Judul
    $komiklama = $this->komikModel->getKomik($this->request->getVar('slug'));
    if ($komiklama['judul'] == $this->request->getVar('judul')) {
      $rule_judul = 'required';
    } else {
      $rule_judul = 'required|is_unique[komik.judul]';
    }

    if (!$this->validate([
      'judul' => [
        'rules' => $rule_judul,
        'errors' => [
          'required' => '{field} komik harus diisi.',
          'is_unique' => '{field} komik sudah ada.'
        ]
      ], 'sampul' => [
        'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
        'errors' => [
          'max_size' => 'Ukuran gambar terlalu besar',
          'is_image' => 'Yang anda pilih bukan gambar',
          'mime_in' => 'Yang anda pilih bukan gambar',
        ]
      ]
    ])) {
      // $validation = \Config\Services::validation();

      // Input dikirim ke session
      return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput();
      // return redirect()->to('/komik/create')->withInput()->with('vallidation', $validation);
      // withInput => input dikirim kedalam session, buat fitur old
    }

    // ambil file sampul
    $fileSampul = $this->request->getFile('sampul');

    // cek gambar apa berubah/ tidak
    if ($fileSampul->getError() == 4) {
      $namaSampul = $this->request->getVar('sampulLama');
    } else {
      // generate file random
      $namaSampul = $fileSampul->getRandomName();
      // Upload gambar
      $fileSampul->move('img', $namaSampul);
      // hapus file yang lama
      unlink('img/' . $this->request->getVar('sampulLama'));
    }


    $slug = url_title($this->request->getVar('judul'), '-', true); //membuat string menjadi huruf kecil semua dan spasinya hilang, spasi nya diganti
    $this->komikModel->save([
      'id' => $id,
      'judul' => $this->request->getVar('judul'),
      'slug' => $slug,
      'penulis' => $this->request->getVar('penulis'),
      'penerbit' => $this->request->getVar('penerbit'),
      'sampul' => $namaSampul
    ]);

    session()->setFlashdata('pesan', 'Data berhasil diubah');
    return redirect()->to('/komik');


    //--------------------------------------------------------------------

  }
}
