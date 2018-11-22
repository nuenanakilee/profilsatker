<!DOCTYPE html>
<html>
    <head> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Profil Satker</title>
    <link href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/datatables/css/dataTables.bootstrap.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/bootstrap-datepicker/css/bootstrap-datepicker3.min.css')?>" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="<a class="vglnk" href="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js" rel="nofollow"><span>https</span><span>://</span><span>oss</span><span>.</span><span>maxcdn</span><span>.</span><span>com</span><span>/</span><span>html5shiv</span><span>/</span><span>3</span><span>.</span><span>7</span><span>.</span><span>2</span><span>/</span><span>html5shiv</span><span>.</span><span>min</span><span>.</span><span>js</span></a>"></script>
      <script src="<a class="vglnk" href="https://oss.maxcdn.com/respond/1.4.2/respond.min.js" rel="nofollow"><span>https</span><span>://</span><span>oss</span><span>.</span><span>maxcdn</span><span>.</span><span>com</span><span>/</span><span>respond</span><span>/</span><span>1</span><span>.</span><span>4</span><span>.</span><span>2</span><span>/</span><span>respond</span><span>.</span><span>min</span><span>.</span><span>js</span></a>"></script>
    <![endif]-->
    </head> 
<body>

   <div class="row" align="center">
      <div class="column" style="width: 20%; padding: 5px; background-color: white;"><img src="assets/image/logo.png" style="width: 150px" align="center"/></div>
      <div class="column" style="color: white; background-color: #357EC7; padding: 20px;">
            <h1 >PROFIL SATKER MITRA KPPN SUMBAWA BESAR 2018</h1>
            
      </div>
  </div> 


<div class="container">

       
        <br />
        <button class="btn btn-success" onclick="add_satker()"><i class="glyphicon glyphicon-plus"></i> Tambah Satker</button>
        <button class="btn btn-default" onclick="reload_table()"><i class="glyphicon glyphicon-refresh"></i> Segarkan</button>
        <br />
        <br />
        <table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Kode Satker</th>
                    <th>Nama Satker</th>
                    <th>Alamat</th>
                    <th>Email</th>
                    <th>Jenis Satker</th>
                    <!--th>Jabatan Pengelola perbendaharaan</th-->

                    <th style="width:125px;">Action</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
 
            <tfoot>
            <!--tr>
                <th>Kode Satker</th>
                    <th>Nama Satker</th>
                    <th>Alamat</th>
                    <th>Jenis Satker</th>
                    <th>Nama Pejabat</th>
                    <th>Jabatan Pengelola perbendaharaan</th>
                <th>Action</th>
            </tr-->
            </tfoot>
        </table>
    </div>
 
<script src="<?php echo base_url('assets/jquery/jquery-2.1.4.min.js')?>"></script>
<script src="<?php echo base_url('assets/bootstrap/js/bootstrap.min.js')?>"></script>
<script src="<?php echo base_url('assets/datatables/js/jquery.dataTables.min.js')?>"></script>
<script src="<?php echo base_url('assets/datatables/js/dataTables.bootstrap.js')?>"></script>
<script src="<?php echo base_url('assets/bootstrap-datepicker/js/bootstrap-datepicker.min.js')?>"></script>
 
 
<script type="text/javascript">
 
var save_method; //for save method string
var table;
 
$(document).ready(function() {
 
    //datatables
    table = $('#table').DataTable({ 
 
        "processing": true, //Feature control the processing indicator.
        "serverSide": true, //Feature control DataTables' server-side processing mode.
        "order": [], //Initial no order.
 
        // Load data for the table's content from an Ajax source
        "ajax": {
            "url": "<?php echo site_url('Satker/ajax_list')?>",
            "type": "POST"
        },
 
        //Set column definition initialisation properties.
        "columnDefs": [
        { 
            "targets": [ -1 ], //last column
            "orderable": false, //set not orderable
        },
        ],
 
    });
 
    //datepicker
    $('.datepicker').datepicker({
        autoclose: true,
        format: "yyyy-mm-dd",
        todayHighlight: true,
        orientation: "top auto",
        todayBtn: true,
        todayHighlight: true,  
    });
 
});
 
 
 
function add_satker()
{
    save_method = 'add';
    $('#form')[0].reset(); // reset form on modals
    $('.form-group').removeClass('has-error'); // clear error class
    $('.help-block').empty(); // clear error string
    $('#modal_form').modal('show'); // show bootstrap modal
    $('.modal-title').text('Tambah Satker'); // Set Title to Bootstrap modal title
}
 
function edit_satker(kodesatker)
{
    save_method = 'update';
    $('#form')[0].reset(); // reset form on modals
    $('.form-group').removeClass('has-error'); // clear error class
    $('.help-block').empty(); // clear error string
 
    //Ajax Load data from ajax
    $.ajax({
        url : "<?php echo site_url('satker/ajax_edit/')?>/" + kodesatker,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
 
            $('[name="kodesatker"]').val(data.kodesatker);
            $('[name="namasatker"]').val(data.namasatker);
            $('[name="alamat"]').val(data.alamat);
            $('[name="email"]').val(data.email);
            $('[name="jenissatker"]').val(data.jenissatker);
            $('[name="paktaintegritas"]').val(data.paktaintegritas);
            $('[name="foto"]').val(data.foto);
            //$('[name="namapejabat"]').val(data.namapejabat);
            //$('[name="jabperbend"]').val(data.jabperbend);
            //$('[name="dob"]').datepicker('update',data.dob);
            $('#modal_form').modal('show'); // show bootstrap modal when complete loaded
            $('.modal-title').text('Edit Satker'); // Set title to Bootstrap modal title
 
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax');
        }
    });
}

function lihat_satker(kodesatker)
{
    ////save_method = 'get_by_id';
    //$('#form')[0].reset(); // reset form on modals
    //$('.form-group').removeClass('has-error'); // clear error class
    //$('.help-block').empty(); // clear error string
    //var kodesatker = $(this).attr('kodesatker');
    //var kodesatker = $(this).attr('btn-primary');
    //Ajax Load data from ajax
    $.ajax({
        url : "<?php echo site_url('satker/ajax_data/')?>/" + kodesatker,
        type: "GET",
        //data: {kodesatker:kodesatker},
        dataType: "JSON",
        success: function(data)
        {
            console.log(data);
            $('[class="kodesatker"]').text(data.kodesatker);
            $('[class="namasatker"]').text(data.namasatker);
            $('[class="alamat"]').text(data.alamat);
            $('[class="email"]').text(data.email);
            $('[class="jenissatker"]').text(data.jenissatker);
            $('[class="namapejabat"]').text(data.namapejabat);
            $('[class="jabperbend"]').text(data.jabperbend);
            $('[class="paktaintegritas"]').text(data.paktaintegritas);
            $('[class="foto"]').html('<img src="'+data.foto+'" width="80%"/>');
           // $('[name="dob"]').datepicker('update',data.dob);
            //$('#detail_satker').html(data);
            $('#modal_view').modal('show'); // show bootstrap modal when complete loaded
            $('.modal-title').text('DETAIL INFORMASI SATUAN KERJA'); // Set title to Bootstrap modal title
 
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax'),
            alert(jqXHR.responseText),
            alert(errorThrown.responseText); 
        }

    });
}
 
function reload_table()
{
    table.ajax.reload(null,false); //reload datatable ajax 
}
 
function save()
{
    $('#btnSave').text('saving...'); //change button text
    $('#btnSave').attr('disabled',true); //set button disable 
    var url;
 
    if(save_method == 'add') {
        url = "<?php echo site_url('satker/ajax_add')?>";
    } else {
        url = "<?php echo site_url('satker/ajax_update')?>";
    }
 
    // ajax adding data to database
    $.ajax({
        url : url,
        type: "POST",
        data: $('#form').serialize(),
        dataType: "JSON",
        success: function(data)
        {
 
            if(data.status) //if success close modal and reload ajax table
            {
                $('#modal_form').modal('hide');
                reload_table();
            }
 
            $('#btnSave').text('Simpan'); //change button text
            $('#btnSave').attr('disabled',false); //set button enable 
 
 
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error adding / update data');
            $('#btnSave').text('Simpan'); //change button text
            $('#btnSave').attr('disabled',false); //set button enable 
 
        }
    });
}
 
function delete_satker(id)
{
    if(confirm('yakin akan menghapus data?'))
    {
        // ajax delete data to database
        $.ajax({
            url : "<?php echo site_url('satker/ajax_delete')?>/"+id,
            type: "POST",
            dataType: "JSON",
            success: function(data)
            {
                //if success reload ajax table
                $('#modal_form').modal('hide');
                reload_table();
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Gagal menghapus data');
            }
        });
 
    }
}

function lihat_satker2($kodesatker)
{
    $(document).on("click", ".btn", function () {
         var kodesatker = $(this).data('kodesatker'); 
             $.ajax({
             type: 'GET',
             url: 'satker/ajax_data',
             data: { kodesatker: kodesatker },
             success: function(data) { 
             $('#detail_satker').html(response);
             }
            });
    });
}
 
</script>



<!-- Bootstrap modal -->

<div class="modal fade" id="modal_view" role="dialog">
    <div class="modal-dialog modal-lg vertical-align-center">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">DETAIL INFORMASI SATUAN KERJA</h4>
            </div>
        <div class="modal-body" >
            <!----------TAMPILKAN DATA SATKER TERPILIH----------->
            <div id="detail_satker">
                 <div class="row" align="center">
            <div class="col-lg-12" >
            <table class="table table-bordered"  >
                    <tr>
                    <td colspan="2" style="text-align:center"><span class="foto"></span></td>
                   </tr>
                    <tr>
                    <td><b>Kode Satker</b></td>
                    <td ><span class="kodesatker"></span></td>
                   </tr>
                   <tr>
                    <td><b>Nama Kuasa Pengguna Anggaran</b></td>
                    <td><span class="namapejabat"></span></td>            
                   </tr>            
                   <tr>
                    <td><b>Alamat</b></td>
                    <td><span class="alamat"></span></td>            
                   </tr> 
                   <tr>
                    <td><b>E-Mail Kantor</b></td>
                    <td><span class="email"></span></td>            
                   </tr>
                   <tr>
                    <td><b>Pakta Integritas</b></td>
                    <td><span class="paktaintegritas"></span></td>            
                   </tr>
                   <tr>
                    <td><b>Pagu Anggaran</b></td>
                    <td><span class="pagu"></span></td>            
                   </tr>             
                   <tr>
                    <td><b>Realisasi Triwulan I</b></td>
                    <td><span class="realisasi"></span></td>            
                   </tr>                
            </table>
            </div>
      </div> 

          
           </div>
       
    </div>
    <div class="modal-footer">
          <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
    </div>
</div>
</div>
</div>
 
 
<!-- Bootstrap modal -->
<div class="modal fade" id="modal_form" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title">Form Satker</h3>
            </div>
            <div class="modal-body form">
                <form action="#" id="form" class="form-horizontal">
                    <!--input type="hidden" value="" name="id"/--> 
                    <div class="form-body">
                        <div class="form-group">
                            <div class="form-group">
                            <label class="control-label col-md-3">Kode Satker</label>
                            <div class="col-md-9">
                                <input name="kodesatker" placeholder="Kode Satker" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                            <label class="control-label col-md-3">Nama Satker</label>
                            <div class="col-md-9">
                                <input name="namasatker" placeholder="Nama Satker" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Alamat</label>
                            <div class="col-md-9">
                                <input name="alamat" placeholder="Alamat" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">E-Mail</label>
                            <div class="col-md-9">
                                <input name="email" placeholder="E-Mail" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Jenis satker</label>
                            <div class="col-md-9">
                                <select name="jenissatker" class="form-control">
                                    <option value="">--Pilih Jenis Satker--</option>
                                    <option value="BLU">BLU</option>
                                    <option value="Non BLU">Non BLU</option>
                                </select>
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Link Pakta Integitas</label>
                            <div class="col-md-9">
                                <input name="paktaintegritas" placeholder="Pakta Integritas" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Link Foto</label>
                            <div class="col-md-9">
                                <input name="foto" placeholder="Foto" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <!--div class="form-group">
                            <label class="control-label col-md-3">Nama Kepala Kantor</label>
                            <div class="col-md-9">
                                <textarea name="namapejabat" placeholder="Nama Pejabat Satker" class="form-control"></textarea>
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Jabatan Pengelola Perbendaharaan</label>
                            <div class="col-md-9">
                                <select name="jabperbend" class="form-control">
                                    <option value="">--Pilih Jabatan--</option>
                                    <option value="KPA">KPA</option>
                                    <option value="KPA merangkap PPK">KPA merangkap PPK</option>
                                    <option value="KPA merangkap PPSPM">KPA merangkap PPSPM</option>
                                </select>
                                <span class="help-block"></span>
                            </div>
                        </div-->
                        
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" id="btnSave" onclick="save()" class="btn btn-primary">Simpan</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- End Bootstrap modal -->

</body>
</html>