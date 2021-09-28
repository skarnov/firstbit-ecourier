<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Courier extends CI_Controller {
        
    public function index()
    {
        $data = array();
        $data['title'] = 'Home';
        $data['all_news'] = $this->courier_model->select_all_news();
        $data['all_banner'] = $this->courier_model->select_all_banner();
        $data['home'] = $this->load->view('home', $data, true);
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
    
    public function personal()
    {
        $data = array();
        $data['title'] = 'Personal Delivery';
        $data['all_news'] = $this->courier_model->select_all_news();
        $data['home'] = $this->load->view('personal', $data, true);
        $this->load->view('master', $data);
    }
    
    public function save_personal_delivery()
    {
        $this->courier_model->save_personal_delivery_info();
        $sdata = array();
        $sdata['save_personal_delivery'] = 'Done!';
        $this->session->set_userdata($sdata);
        redirect('courier/personal');
    }
    
    public function corporate()
    {
        $data = array();
        $data['title'] = 'Corporate Register';
        $data['all_news'] = $this->courier_model->select_all_news();
        $data['home'] = $this->load->view('corporate', $data, true);
        $this->load->view('master', $data);
    }
    
    public function save_corporate_delivery()
    {
        $this->courier_model->save_corporate_delivery_info();
        $sdata = array();
        $sdata['save_corporate_delivery'] = 'Done!';
        $this->session->set_userdata($sdata);
        redirect('courier/corporate');
    }
    
    public function franchise()
    {
        $data = array();
        $data['title'] = 'Franchise Register';
        $data['all_news'] = $this->courier_model->select_all_news();
        $data['home'] = $this->load->view('franchise', $data, true);
        $this->load->view('master', $data);
    }
    
    public function save_franchise()
    {
        $this->courier_model->save_franchise_info();
        $sdata = array();
        $sdata['save_franchise'] = 'We will contact you very soon';
        $this->session->set_userdata($sdata);
        redirect('courier/franchise');
    }
    
    public function save_quotation()
    {
        $this->courier_model->save_quotation_info();
        $sdata = array();
        $sdata['save_quotation'] = 'We will contact you very soon';
        $this->session->set_userdata($sdata);
        redirect('courier');
    }
    
    public function delivery_trace()
    {
        $data = array();
        $data['title'] = 'Delivery Trace';
        $data['trace'] = $this->courier_model->trace_the_delivery();
        $data['all_news'] = $this->courier_model->select_all_news();
        $data['home'] = $this->load->view('delivery_trace', $data, true);
        $this->load->view('master', $data);
    }
}