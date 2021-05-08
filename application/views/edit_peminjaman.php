<div class="box">
	<div class="box box-success">
	<div class="box-header">
		From Input Data Peminjaman
</div>
<div class="box-body">
	<form action="<?php echo base_url() ?>index.php/Welcome/updatepeminjaman" method="POST">
	<?php
		foreach ($get_id_peminjam as $tampilkan) { ?>
			
			<input type="hidden" name="id_peminjam" value="<?php echo $tampilkan->id_peminjam?>">
		Nama Peminjam<input type="text" name="nama_peminjam" class="form-control" value="<?php echo $tampilkan->nama_peminjam?>">
		Kelas<input type="text" name="kelas" class="form-control" value="<?php echo $tampilkan->kelas ?>">
		Nama Buku<input type="text" name="nama_buku" class="form-control" value="<?php echo $tampilkan->nama_buku?>">
		Tanggal Pinjam<input type="text" name="tanggal_pinjam" class="form-control" value="<?php echo $tampilkan->tanggal_pinjam?>">
		Tanggal Kembali<input type="text" name="tanggal_kembali" class="form-control" value="<?php echo $tampilkan->tanggal_kembali?>">
		Tanggal pengembalian<input type="text" name="tanggal_pengembalian" class="form-control" value="<?php echo $tampilkan->tanggal_pengembalian?>">
		Telat<input type="text" name="telat" class="form-control" value="<?php echo $tampilkan->telat?>">
		Denda<input type="text" name="denda" class="form-control" value="<?php echo $tampilkan->denda?>">
		Jumlah Pinjam<input type="text" name="jumlah_pinjam" class="form-control" value="<?php echo $tampilkan->jumlah_pinjam?>">
		Petugas<input type="text" name="petugas" class="form-control" value="<?php echo $tampilkan->petugas?>">
		<br>
		<button class="btn btn-success btn-md pull-right" type="submit">Simpan</button>
	<?php }
	?>
	</form>
</div>
</div>