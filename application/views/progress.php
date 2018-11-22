<!DOCTYPE html>
<html>
<head> 
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ZI-WBKWBBM</title>
	<link href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css')?>" rel="stylesheet">
	<link href="<?php echo base_url('assets/datatables/css/dataTables.bootstrap.css')?>" rel="stylesheet">
	<!-- <link href="<?php//echo base_url('assets/bootstrap-datepicker/css/bootstrap-datepicker3.min.css')?>" rel="stylesheet">-->
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head> 
<body>

	<div class="container">
		<h3 style="font-size:20pt">Berikut adalah Progress Dokumen Per Subbag/Seksi :</h3>

		<div class="form-group" id="hitung_seksi">
			<label class="control-label col-md-3">Pilih Subbag/Seksi</label>
			<div class="col-md-3">
				<select class="form-control" id="idpic" name="idpic">
					echo "<option value='' disabled selected>Pilih Subbag/Seksi</option>";
					<?php foreach($seksi as $s){
						echo"<option value='".$s->idpic."'>".$s->idpic." - ".$s->namaseksi."</option>";
					}
					?>
				</select>
				
			</div> 					
		</div> 	

		<div class="inner">
			<h3></h3>


			<?php echo $hitung; ?>
		</div>

		<script>  
			$(document).ready(function(){  
				$('#idpic').change(function() {
					var id_pic= $('#idpic').val();
					$.ajax({
						type: "POST",
						url: "<?php echo site_url('dokumen/hitung_baris/')?>/"+ idpic,
						data: "id_pic="+id_pic,
						success: function(result) {
                // do something with result
                $('#inner').show();
            },                
            error : function(req, status, error) {
                // do something with error 
                <?php echo error_log(message); ?> 
                //$('#inner').text("error")
            }

        });
				});
			});

		</script>


	</body>
	</html>