<?php

namespace App\Database\Seeds;

use CodeIgniter\I18n\Time;

class OrangSeeder extends \CodeIgniter\Database\Seeder
{
  // mengisi data ke dalam tabel
  public function run()
  {
    // $data = [
    // [
    //   'nama'      => 'fajar',
    //   'alamat'    => 'jln jakarta no. 123',
    //   'created_at' => Time::now(),
    //   'updated_at' => Time::now()
    // ],
    // [
    //   'nama'      => 'ahmad',
    //   'alamat'    => 'baghdad',
    //   'created_at' => Time::now(),
    //   'updated_at' => Time::now()
    // ],
    // [
    //   'nama'      => 'muhammad',
    //   'alamat'    => 'jln kuffah',
    //   'created_at' => Time::now(),
    //   'updated_at' => Time::now()
    // ]
    // ];

    // Simple Queries
    // $this->db->query(
    //   "INSERT INTO orang (nama, alamat, created_at, updated_at) VALUES(:nama:, :alamat:, :created_at:, :updated_at:)",
    //   $data
    // );

    // Using Query Builder
    // $this->db->table('orang')->insert($data);
    // $this->db->table('orang')->insertBatch($data); //biar bisa insert banyak data

    // membuat data dummy
    $faker = \Faker\Factory::create('id_ID');
    for ($i = 0; $i < 100; $i++) {
      $data = [
        'nama'      => $faker->name,
        'alamat'    => $faker->address,
        'created_at' => Time::createFromTimestamp($faker->unixTime()),
        'updated_at' => Time::now()
      ];
      $this->db->table('orang')->insert($data);
    }
  }
}
