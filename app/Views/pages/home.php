<!-- menggunakan template di layout/template-->
<?= $this->extend('layout/template'); ?>

<!-- Ngasih tau ini section content yang mana, harus dgn nama di template.php -->
<?= $this->section('content'); ?>

<div class="container">
  <div class="row">
    <div class="col">
      <h1>Hello, world!</h1>

    </div>
  </div>
</div>

<?= $this->endSection(); ?>