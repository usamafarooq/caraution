<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends Front_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->is_login();
        $this->load->model('register_model');
    }

	public function index()
	{
		$this->load->front_template('user/register',$this->data);
	}

	public function is_login()
	{
		if ($this->session->userdata('user_id')) {
			redirect("home");
		}
	}

	public function insert_user()
	{
		$data = $this->input->post();
		$data['name'] = $data['email'];
		$data['role'] = 2;
		$username = $this->register_model->get_row_single('users',array('name'=>$data['name']));
		if (!empty($username)) {
			$this->session->set_flashdata('error', 'Username Already Exist');
			redirect("register");
		}
		$email = $this->register_model->get_row_single('users',array('email'=>$data['email']));
		if (!empty($email)) {
			$this->session->set_flashdata('error', 'Email Already Exist');
			redirect("register");
		}
		$data['password'] = md5($data['password']);
		$id = $this->register_model->insert('users',$data);
		if ($id) {
			redirect('login');
		}
	}

}