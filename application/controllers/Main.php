<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

	public function index()
	{
		$this->load->view('page/header');
		$this->load->view('page/login');
		$this->load->view('page/footer');
	}

	public function home()
	{
		$this->load->view('page/header');
		$this->load->view('page/side');
		$this->load->view('page/home');
		$this->load->view('page/footer');
	}

	public function menu()
	{
		$this->load->view('page/header');
		$this->load->view('page/side');
		$this->load->view('page/mastermenu');
		$this->load->view('page/footer');
	}

	public function role()
	{
		$this->load->view('page/header');
		$this->load->view('page/side');
		$this->load->view('page/masterrole');
		$this->load->view('page/footer');
	}
}
