<!-- menggunakan template di layout/template-->
<?= $this->extend('layout/template'); ?>

<!-- Ngasih tau ini section content yang mana, harus dgn nama di template.php -->
<?= $this->section('content'); ?>

<div class="container">
  <div class="row">
    <div class="col">
      <h1>Ini halaman About</h1>
      <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quasi animi, ullam explicabo molestias eos officia quas necessitatibus provident iusto doloremque odit hic! Reprehenderit, et. Quasi doloribus dolor alias accusamus minus.</p>
    </div>
  </div>
</div>

<?= $this->endSection(); ?>