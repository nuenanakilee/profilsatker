<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Satker extends CI_Controller {
 public function __construct()
 {
  parent::__construct();
  $this->load->model('SatkerModel');
 }
 public function index()
 {
  $data['allsatker'] = $this->SatkerModel->get_satker();
  $this->load->view("satker_view",$data);
 }
 public function get_phone_result()
 {
        $satkerData = $this->input->post("satkerData");
        if(isset($satkerData) and !empty($satkerData)){
            $records = $this->SatkerModel->get_search_satker($satkerData);
            $output = '';
            foreach($records->result_array() as $row){
             $output .= '      
         <h4 class="text-center">'.$row["namasatker"].'</h4><br>
         <div class="row">
         <div class="col-lg-6">
          <table class="table table-bordered">
           <tr>
            <td><b>Kode Satker</b></td>
            <td>'.$row["kodesatker"].'</td>
           </tr>
           <tr>
            <td><b>Nama Satker</b></td>
            <td>'.$row["namasatker"].'</td>            
           </tr>            
           <tr>
            <td><b>Alamat</b></td>
            <td>'.$row["alamat"].'</td>            
           </tr> 
           <tr>
            <td><b>Telepon</b></td>
            <td>'.$row["telepon"].'</td>            
           </tr>
                     
       </table>
      </div>
           </div>';
            }    
            echo $output;
        }
        else {
         echo '<center><ul class="list-group"><li class="list-group-item">'.'Select a Phone'.'</li></ul></center>';
        }
 }
}
?>