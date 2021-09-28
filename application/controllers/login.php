<?php defined('BASEPATH') OR exit('No direct script access allowed');

session_start();

class Login extends CI_Controller {
    
    public function index()
    {
        $data = array();
        $data['title'] = 'Login';
        $data['all_news'] = $this->courier_model->select_all_news();
        $data['home'] = $this->load->view('customer_login', $data, true);
        $this->load->view('master', $data);
    }
    
    public function customer_login_check()
    { 
        $client_type = $this->input->post('client_type', true);
        if($client_type == 1)
        {
           $data = array();
            $data['customer_email'] = $this->input->post('customer_email', true);
            $data['customer_password'] = $this->input->post('customer_password', true);
            $result = $this->courier_model->personal_login_check($data);    
            $sdata = array();
            if ($result != NULL)
            {
                $sdata['customer_id'] = $result->customer_id;
                $sdata['customer_name'] = $result->customer_name;
                $sdata['customer_type'] = $result->customer_type;
                $this->session->set_userdata($sdata);
                redirect('customer');
            } 
            if ($result == NULL)
            {
                $sdata['exception'] = 'Your Email addresses or password do not match';
                $this->session->set_userdata($sdata);
                redirect('login');
            } 
        }
        if($client_type == 2)
        {
           $data = array();
            $data['customer_email'] = $this->input->post('customer_email', true);
            $data['customer_password'] = $this->input->post('customer_password', true);
            $result = $this->courier_model->corporate_login_check($data);    
            $sdata = array();
            if ($result != NULL)
            {
                $sdata['customer_id'] = $result->customer_id;
                $sdata['customer_name'] = $result->customer_name;
                $sdata['customer_type'] = $result->customer_type;
                $this->session->set_userdata($sdata);
                redirect('customer');
            } 
            if ($result == NULL)
            {
                $sdata['exception'] = 'Your Email addresses or password do not match';
                $this->session->set_userdata($sdata);
                redirect('login');
            } 
        }
    }
}