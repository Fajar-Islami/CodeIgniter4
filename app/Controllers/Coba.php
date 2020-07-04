<?php

namespace App\Controllers;

class Coba extends BaseController
{
	public function index()
	{
		echo "Ini controller coba method index";
	}

	public function about($nama = 'tes', $umur = 0)
	{
		echo "Ini halaman about $nama, $nama berumur $umur";
	}

	//--------------------------------------------------------------------

}
