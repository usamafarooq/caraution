<?php
		    class Pages extends MY_Controller{

		    	public function __construct()
	    {
	        parent::__construct();
	        $this->load->model('Pages_model');
	        $this->module = 'pages';
	        $this->user_type = $this->session->userdata('user_type');
	        $this->id = $this->session->userdata('user_id');
	        $this->permission = $this->get_permission($this->module,$this->user_type);
	    }public function index()
		{
			if ( $this->permission['view'] == '0' && $this->permission['view_all'] == '0' ) 
			{
				redirect('admin/home');
			}
			$this->data['title'] = 'Pages';
			if ( $this->permission['view_all'] == '1'){$this->data['pages'] = $this->Pages_model->all_rows('pages');}
			elseif ($this->permission['view'] == '1') {$this->data['pages'] = $this->Pages_modelget_rows('pages',array('user_id'=>$this->id));}
			$this->data['permission'] = $this->permission;
			$this->load->template('admin/pages/index',$this->data);
		}public function create()
		{
			if ( $this->permission['created'] == '0') 
			{
				redirect('admin/home');
			}
			$this->data['title'] = 'Create Pages';$this->load->template('admin/pages/create',$this->data);
		}
		public function insert()
		{
			if ( $this->permission['created'] == '0') 
			{
				redirect('admin/home');
			}
			$data = $this->input->post();
			$data['user_id'] = $this->session->userdata('user_id');$id = $this->Pages_model->insert('pages',$data);
			if ($id) {
				redirect('admin/pages');
			}
		}public function edit($id)
		{
			if ($this->permission['edit'] == '0') 
			{
				redirect('admin/home');
			}
			$this->data['title'] = 'Edit Pages';
			$this->data['pages'] = $this->Pages_model->get_row_single('pages',array('id'=>$id));$this->load->template('admin/pages/edit',$this->data);
		}

		public function update()
		{
			if ( $this->permission['edit'] == '0') 
			{
				redirect('admin/home');
			}
			$data = $this->input->post();
			$id = $data['id'];
			unset($data['id']);$id = $this->Pages_model->update('pages',$data,array('id'=>$id));
			if ($id) {
				redirect('admin/pages');
			}
		}public function delete($id)
		{
			if ( $this->permission['deleted'] == '0') 
			{
				redirect('admin/home');
			}
			$this->Pages_model->delete('pages',array('id'=>$id));
			redirect('admin/pages');
		}}