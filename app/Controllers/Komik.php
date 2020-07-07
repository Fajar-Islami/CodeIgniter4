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
      ]
    ])) {
      $validation = \Config\Services::validation();

      // Input dikirim ke session
      return redirect()->to('/komik/create')->withInput()->with('vallidation', $validation);
      // withInput => input dikirim kedalam session, buat fitur old
    }

    $slug = url_title($this->request->getVar('judul'), '-', true); //membuat string menjadi huruf kecil semua dan spasinya hilang, spasi nya diganti
    $this->komikModel->save([
      'judul' => $this->request->getVar('judul'),
      'slug' => $slug,
      'penulis' => $this->request->getVar('penulis'),
      'penerbit' => $this->request->getVar('penerbit'),
      'sampul' => $this->request->getVar('sampul')
    ]);

    session()->setFlashdata('pesan', 'Data berhasil ditambahkan');
    return redirect()->to('/komik');
  }

  public function delete($id)
  {
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
      ]
    ])) {
      $validation = \Config\Services::validation();
      return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput()->with('vallidation', $validation);
    }


    $slug = url_title($this->request->getVar('judul'), '-', true); //membuat string menjadi huruf kecil semua dan spasinya hilang, spasi nya diganti
    $this->komikModel->save([
      'id' => $id,
      'judul' => $this->request->getVar('judul'),
      'slug' => $slug,
      'penulis' => $this->request->getVar('penulis'),
      'penerbit' => $this->request->getVar('penerbit'),
      'sampul' => $this->request->getVar('sampul')
    ]);

    session()->setFlashdata('pesan', 'Data berhasil diubah');
    return redirect()->to('/komik');


    //--------------------------------------------------------------------

  }
}
