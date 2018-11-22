<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Phone_model extends CI_Model {
 // function to fetch all phone
 public function get_satker()
 {
     $this->db->select('*');
     $this->db->order_by('idData','ASC');
     $query = $this->db->get('t_gabungan');
     return $query->result();
 }
 // function that finds the phone by its ID to display in th Bootstrap modal
 public function get_search_satker($satkerData)
 {
  $this->db->select('*');
  $this->db->where('idData',$satkerData);
  $satker2 = $this->db->get('t_gabungan');
  return $satker2;
 }

 public function get_search_KPA($satkerData)
 {
    $this->db->select('namapejabat');
    $this->db->from('t_gabungan');
    $this->db->where('jabperbend',"KPA");
    $query=$this->db->get();

 }

}