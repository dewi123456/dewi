<div class="box">
	<div class="box box-success">
	<div class="box-header">
		From Input Data Buku
</div>
<div class="box-body">
	<form action="<?php echo base_url() ?>index.php/Welcome/updatebuku" method="POST">
	<?php
		foreach ($get_id_buku as $tampilkan) { ?>

			<input type="hidden" name="id_buku" value="<?php echo $tampilkan->id_buku?>">
		Nama Buku<input type="text" name="nama_buku" class="form-control" value="<?php echo $tampilkan->nama_buku ?>">
		Jenis Buku<input type="text" name="jenis_buku" class="form-control" value="<?php echo $tampilkan->jenis_buku ?>">
		Penulis Buku <input type="text" name="penulis_buku" class="form-control" value="<?php echo $tampilkan->penulis_buku ?>">
		Penerbit Buku <input type="text" name="penerbit_buku" class="form-control" value="<?php echo $tampilkan->penerbit_buku ?>">
		<br>
		<button class="btn btn-success btn-md pull-right" type="submit">Simpan</button>
	<?php }
	?>
	</form>
</div>
</div>