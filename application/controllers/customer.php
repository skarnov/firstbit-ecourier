<?php defined('BASEPATH') OR exit('No direct script access allowed');

session_start();

class Customer extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        $customer_id = $this->session->userdata('customer_id');
        if ($customer_id == NULL)
        {
            redirect('login', 'refresh');
        }
    }
    
    public function index()
    {
        $customer_id = $this->session->userdata('customer_id');
        $data = array();
        $data['title'] = 'Dashboard';
        $data['all_news'] = $this->courier_model->select_all_news();
        $data['customer'] = $this->courier_model->select_customer_by_id($customer_id);
        $data['home'] = $this->load->view('dashboard', $data, true);
        $this->load->view('master', $data);
    }
    
    public function logout()
    {
        $this->session->unset_userdata('customer_id');
        $this->session->unset_userdata('customer_name');
        $this->session->unset_userdata('customer_type');
        $sdata['exception'] = 'You are Successfully Logout ';
        $this->session->set_userdata($sdata);
        redirect('courier');
    }
    
    public function update_customer() 
    {
        $this->courier_model->update_customer_info();
        redirect('customer');
    }
    
    public function personal_delivery()
    {
        $data = array();
        $data['title'] = 'Personal Delivery';
        $data['all_news'] = $this->courier_model->select_all_news();
        $data['home'] = $this->load->view('personal_delivery', $data, true);
        $this->load->view('master', $data);
    }
    
    public function save_delivery()
    {
        $customer_id = $this->session->userdata('customer_id');
        $this->courier_model->save_delivery_info($customer_id);
        $sdata = array();
        $sdata['save_personal_delivery'] = 'Done!';
        $this->session->set_userdata($sdata);
        redirect('customer/personal_delivery');
    }
    
    public function corporate_delivery()
    {
        $data = array();
        $data['title'] = 'Corporate Register';
        $data['all_news'] = $this->courier_model->select_all_news();
        $data['home'] = $this->load->view('corporate_delivery', $data, true);
        $this->load->view('master', $data);
    }
    
    public function manage_delivery()
    {
        $customer_id = $this->session->userdata('customer_id');
        $data = array();
        $data['title'] = 'Manage Delivery';
        $data['all_news'] = $this->courier_model->select_all_news();
        $data['all_delivery'] = $this->courier_model->select_customer_delivery($customer_id);
        $data['home'] = $this->load->view('manage_delivery', $data, true);
        $this->load->view('master', $data);
    }
}