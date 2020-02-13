<?php

class Jadwal extends CI_Controller
{
    var $gallerypath;
    var $userSession;
    function __construct()
    {
        parent::__construct();
        $this->load->helper(array('url'));
        $this->load->library(array('form_validation','encryption','pagination','session'));
        $this->load->model('M_Akun');
        $this->load->model('M_Jadwal');

        $this->userSession = $this->session->userdata();

        $level      = $this->userSession['level'];
        if($level != "") {

        }else {
            redirect("Auth");
        }
    }

    function index(){

    	$data['jadwal'] = $this->M_Jadwal->getAllJadwal()->result();

        $this->load->view('part_admin/header');
        if ($this->userSession['level'] == "atlet"){
			$this->load->view('part_admin/sidebar');
		}else{
			$this->load->view('part_admin/sidebar_pelatih');
		}

        $this->load->view('pelatih/data_jadwal',$data);
        $this->load->view('part_admin/footer');
    }

	function addJadwal(){
		$this->load->view('part_admin/header');
		if ($this->userSession['level'] == "atlet"){
			$this->load->view('part_admin/sidebar');
		}else{
			$this->load->view('part_admin/sidebar_pelatih');
		}

		$this->load->view('pelatih/tambah_jadwal');
		$this->load->view('part_admin/footer');
	}

	function editJadwal($idJadwal){
		$this->load->view('part_admin/header');
		if ($this->userSession['level'] == "atlet"){
			$this->load->view('part_admin/sidebar');
		}else{
			$this->load->view('part_admin/sidebar_pelatih');
		}
		$data['jadwal'] = $this->M_Jadwal->getSingleJadwal($idJadwal)->result_array()[0];

		$this->load->view('pelatih/edit_jadwal',$data);
		$this->load->view('part_admin/footer');
	}

	function updateJadwal(){
		$data = $this->input->post();
		$this->M_Jadwal->ubahJadwal($data);
	}

	function simpanJadwal(){

		$data = $this->input->post();
		$this->M_Jadwal->simpanJadwal($data);
	}

	function hapusJadwal(){
    	$idJadwal = $this->input->post('idjadwal');
		$this->M_Jadwal->deleteJadwal($idJadwal);
	}



}
