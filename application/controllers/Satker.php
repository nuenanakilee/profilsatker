<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Satker extends CI_Controller {
 
    public function __construct()
    {
        parent::__construct();
        $this->load->model('SatkerModel','satker');
        $this->load->model('SatkerModel');
    }
 
    public function index()
    {
        //$data['detailku'] = $this->SatkerModel->lihatDetail();
        $kodesatker = $this->input->get('kodesatker');
        $data['datasatker'] = $this->satker->lihatDetail($kodesatker);
        $this->load->helper('url');
        $this->load->view('satker_view', $data);
    }


    public function ajax_list()
    {
        $list = $this->satker->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $satker) {
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $satker->kodesatker;
            $row[] = $satker->namasatker;
            $row[] = $satker->alamat;
            $row[] = $satker->email;
            $row[] = $satker->jenissatker;
           // $row[] = $satker->foto;
            //$row[] = $satker->namapejabat;
            //$row[] = $satker->jabperbend;
 
            //add html for action
            
            
            $row[] = '<a class="btn btn-sm btn-primary" href="javascript:void(0)" title="Lihat" data-toggle="modal" data-target="#modal_view" onclick="lihat_satker('."'".$satker->kodesatker."'".')"><i class="glyphicon glyphicon-eye-open"> Lihat</i></a>
            <a class="btn btn-sm btn-primary" href="javascript:void(0)" title="Edit" onclick="edit_satker('."'".$satker->kodesatker."'".')"><i class="glyphicon glyphicon-pencil"></i> Ubah</a>
                  <a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_satker('."'".$satker->kodesatker."'".')"><i class="glyphicon glyphicon-trash"></i> Hapus</a>';
 
            $data[] = $row;
        }
 
        $output = array(
                        "draw" => $_POST['draw'],
                        "recordsTotal" => $this->satker->count_all(),
                        "recordsFiltered" => $this->satker->count_filtered(),
                        "data" => $data,
                );
        //output to json format
        echo json_encode($output);
    }

    public function ajax_edit($kodesatker)
    {
        $data = $this->satker->get_by_id($kodesatker);
        echo json_encode($data);
    }

    public function ajax_data($kodesatker)
    {
        $data = $this->satker->get_by_id2($kodesatker);
        echo json_encode($data);
    }
 
    public function ajax_add()
    {
        $data = array(
                'kodesatker' => $this->input->post('kodesatker'),
                'namasatker' => $this->input->post('namasatker'),
                'alamat' => $this->input->post('alamat'),
                'email' => $this->input->post('email'),
                'jenissatker' => $this->input->post('jenissatker'),
                'foto' => $this->input->post('foto'),

                //'namapejabat' => $this->input->post('namapejabat'),
                //'jabperbend' => $this->input->post('jabperbend'),
            );
        $insert = $this->satker->save($data);
        echo json_encode(array("status" => TRUE));
    }
 
    public function ajax_update()
    {
        $data = array(
                'kodesatker' => $this->input->post('kodesatker'),
                'namasatker' => $this->input->post('namasatker'),
                'alamat' => $this->input->post('alamat'),
                 'email' => $this->input->post('email'),
                'jenissatker' => $this->input->post('jenissatker'),
                'foto' => $this->input->post('foto'),
                //'namapejabat' => $this->input->post('namapejabat'),
                //'jabperbend' => $this->input->post('jabperbend'),
            );
        $this->satker->update(array('kodesatker' => $this->input->post('kodesatker')), $data);
        echo json_encode(array("status" => TRUE));
    }
 
    public function ajax_delete($kodesatker)
    {
        $this->satker->delete_by_id($kodesatker);
        echo json_encode(array("status" => TRUE));
    }

    /**public function get_satker_result()
    {
         $kodesatker = $this->input->post('kodesatker');
         if(isset($kodesatker) and !empty($kodesatker)){
            $records = $this->SatkerModel->lihatDetail($kodesatker);
            $output = '';
            foreach($records->result_array() as $row)
                {?>
             

            <h4 class='text-center'> <?php $row["namasatker"];?></h4>
            <center><img style="width:150px; height: 160px;" src="<?php $row['foto'];?>"></center><br><br>
            <div class="row">
            <div class="col-lg-6">
            <table class="table table-bordered">
             <tr>
                    <td><b>Kode Satker</b></td>
                    <td><?php $row["kodesatker"];?></td>
                   </tr>
                   <tr>
                    <td><b>Nama Kuasa Pengguna Anggaran</b></td>
                    <td><?php $row["namapejabat"];?></td>            
                   </tr>            
                   <tr>
                    <td><b>Alamat</b></td>
                    <td><?php $row["alamat"];?></td>            
                   </tr> 
                   <tr>
                    <td><b>E-Mail Kantor</b></td>
                    <td><?php $row["email"];?></td>            
                   </tr>
                   <tr>
                    <td><b>Pagu Anggaran Triwulan I</b></td>
                    <td><?php $row["pagu"];?></td>            
                   </tr>             
                   <tr>
                    <td><b>Realisasi Triwulan I</b></td>
                    <td><?php $row["realisasi"];?></td>            
                   </tr>
                     
       </table>
       </div> 
       </div>
       
            <?php }    
            echo $output;
        }
        else {
         echo '<center><ul class="list-group"><li class="list-group-item">'.'Select a Phone'.'</li></ul></center>';
        }
 }***/

}
?>