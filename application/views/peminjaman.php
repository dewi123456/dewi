<?php $this->load->view('template/header'); ?>
<div class="box box-success">
	<div class="box-header">
		From Input Data Peminjaman	
</div>
<div class="box-body">
	<form action="<?php echo base_url() ?>index.php/Welcome/Simpan_peminjaman" method="POST">
	Nama Peminjam <input type="text" name="nama_peminjam" class="form-control">
	kelas<input type="text" name="kelas" class="form-control">
	Nama Buku<input type="text" name="nama_buku" class="form-control">
	Tanggal Pinjam <input type="text" name="tanggal_pinjam" class="form-control">
	Tanggal Kembali<input type="text" name="tanggal_kembali" class="form-control">
	Tanggal Pengembalian<input type="text" name="tanggal_pengembalian" class="form-control">
	Telat<input type="text" name="telat" class="form-control">
	Denda<input type="text" name="denda" class="form-control">
	Jumlah Pinjam <input type="text" name="jumlah_pinjam" class="form-control">
	Petugas <input type="text" name="petugas" class="form-control">
	<br>
	<button class="btn btn-success btn-md pull-right" type="submit">Simpan</button>
	</form>
</div>
</div>

<?php $this->load->view('template/header'); ?>
	<div class="box box-success">
		<div class="box-body">
			<table class="table table-bordered table-hover">
				<tr>
					<td>Id</td>
					<td>Nama Peminjam</td>
					<td>Kelas</td>
					<td>Nama Buku</td>
					<td>Tanggal Pinjam</td>
					<td>Tanggal Kembali</td>
					<td>Tanggal Pengembalian</td>
					<td>Telat</td>
					<td>Denda</td>
					<td>Jumlah Pinjam</td>
					<td>Petugas</td>
					<td>Aksi</td>
				</tr>
				<?php foreach ($data_peminjaman as $tampilkan) {
					echo "<tr>";
						echo "<td> $tampilkan->id_peminjam</td>";
						echo "<td> $tampilkan->nama_peminjam</td>";
						echo "<td> $tampilkan->kelas</td>";
						echo "<td> $tampilkan->nama_buku</td>";
						echo "<td> $tampilkan->tanggal_pinjam</td>";
						echo "<td> $tampilkan->tanggal_kembali</td>";
						echo "<td> $tampilkan->tanggal_pengembalian</td>";
						echo "<td> $tampilkan->telat</td>";
						echo "<td> $tampilkan->denda</td>";
						echo "<td> $tampilkan->jumlah_pinjam</td>";
						echo "<td> $tampilkan->petugas</td>";
						echo "<td><a href='Editpeminjaman/$tampilkan->id_peminjam'><button class='btn-warning btn-xs'>edit</button></a><button class='btn btn-danger btn-xs' onClick='hapus($tampilkan->id_peminjam)'>Hapus</button>";
					 echo "</tr>";
				} ?>
			</table>
		</div>
	</div>
</div>

<!-- JS -->
 <script>
 	function hapus(id){
 		$('#form_hapus')[0].reset();
 		$.ajax({
 			url:"<?php echo base_url('index.php/Welcome/Getidpeminjam') ?>/"+id,
 			type:"GET",
 			dataType:"JSON",
 			success: function(data){
 				$('[name="id_peminjam"]').val(data.id_peminjam);
 				$('#modal-default').modal('show');
 			},
 			error :function(jqXHR,textStatus,errorThrown){
 				alert('Gagal Ambil Data Ajax');
 			}
 		});
 	}
 </script>
<!-- Modal -->
<div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Pesan Hapus Data</h4>
              </div>
              <div class="modal-body">
              	<form action="<?php echo base_url() ?>index.php/Welcome/Hapuspeminjaman" method="POST" id="form_hapus">
              		<input type="hidden" name="id_peminjam" value="">
              		Apakah Data Tersebut Akan Di Hapus.?<br>
              		
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">TIDAK</button>
                <button type="submit" class="btn btn-success pull-right">YA</button>
              	</form> 
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>