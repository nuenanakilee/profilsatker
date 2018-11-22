<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="utf-8">
 <title>Profil Satker Mitra KPPN</title>
 <!-- Bootstrap CSS CDN -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 <!-- DataTables CSS CDN -->
 <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
 <!-- Font Awesome CSS CDN -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
 <div class="container">
  <h2 class="text-center" style="margin-top: 30px;">Profil Satker Mitra KPPN Sumbawa Besar</h2>
  <br><br>
  <div class="panel panel-primary">
    <div class="panel-heading">
      <h3 class="panel-title"><i class="fa fa-database" aria-hidden="true"></i> Stored Phones in Database</h3>
    </div>
    <div class="panel-body">
   <div class="table-responsive">
           <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
             <thead>
               <tr >
                 <th>Kode Satker</th>
                 <th>Nama Satker</th>
                 <th>Alamat</th>
                 <th>Telepon</th>
                 <th>Jenis Satker</th>
                 <th class="text-center">Informasi</th>                          
               </tr>
             </thead>
             <tbody>
               <?php foreach ($allsatker as $row) : ?>
               <tr>
                 <!---td><center><img style="width:50px; height: 60px;" src="<?php echo base_url();?>assets/images/<?php echo $row->image1; ?>" class="thumbnail"></center></td--->
                 <td><?php echo $row->kodesatker ?></td>
                 <td><?php echo $row->namasatker ?></td>
                 <td><?php echo $row->alamat ?></td>
                 <td><?php echo $row->telepon ?></td>
                 <td><?php echo $row->jenissatker ?></td>
                 <td><center><input type="button" class="btn btn-info btn-sm view_data" value="Lihat Data" id="<?php echo $row->idData; ?>"></center></td>
               </tr>
               <?php endforeach; ?>
             </tbody>            
           </table>
    </div>
  </div>
 </div>
 <!-- view Modal -->
 <div class="modal fade" id="satkerModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true" style="margin-top: -20px;">
   <div class="modal-dialog modal-lg">
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
         <h4 class="modal-title" id="myModalLabel">Informasi Satker Mitra</h4>
       </div>
       <div class="modal-body">
        <!-- Place to print the fetched phone -->
         <div id="satker_result"></div>
       </div>
       <div class="modal-footer">
         <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
       </div>
     </div>
   </div>
 </div>
 <!-- jQuery JS CDN -->
 <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script> 
 <!-- jQuery DataTables JS CDN -->
 <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
 <!-- Bootstrap JS CDN -->
 <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
 <!-- Bootstrap JS CDN -->
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> 
    <script type="text/javascript">
     // Start jQuery function after page is loaded
        $(document).ready(function(){
         // Initiate DataTable function comes with plugin
         $('#dataTable').DataTable();
         // Start jQuery click function to view Bootstrap modal when view info button is clicked
            $('.view_data').click(function(){
             // Get the id of selected phone and assign it in a variable called phoneData
                var satkerData = $(this).attr('id');
                // Start AJAX function
                $.ajax({
                 // Path for controller function which fetches selected phone data
                    url: "<?php echo base_url() ?>Satker/get_satker_result",
                    // Method of getting data
                    method: "POST",
                    // Data is sent to the server
                    data: {phoneData:phoneData},
                    // Callback function that is executed after data is successfully sent and recieved
                    success: function(data){
                     // Print the fetched data of the selected phone in the section called #phone_result 
                     // within the Bootstrap modal
                        $('#satker_result').html(data);
                        // Display the Bootstrap modal
                        $('#satkerModal').modal('show');
                    }
             });
             // End AJAX function
         });
     });  
    </script>
</body>
</html>
