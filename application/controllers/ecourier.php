<?php defined('BASEPATH') OR exit('No direct script access allowed');

session_start();

class Ecourier extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        $admin_id = $this->session->userdata('admin_id');
        if ($admin_id == NULL) 
        {
            redirect('admin_login', 'refresh');
        }
    }
    
    public function index()
    {
        $data = array();
        $data['title'] = 'Dashboard';
        $data['dashboard'] = $this->load->view('admin/dashboard', $data, true);
        $this->load->view('admin/master', $data);
    }
    
    public function logout()
    {
        $this->session->unset_userdata('admin_id');
        $this->session->unset_userdata('admin_name');
        $this->session->unset_userdata('admin_date_time');
        $sdata['exception'] = 'You are Successfully Logout ';
        $this->session->set_userdata($sdata);
        redirect('admin_login');
    }
    
    public function edit_admin($admin_id) 
    {
        $data = array();
        $data['title'] = 'Edit Admin';
        $data['admin_info'] = $this->ecourier_model->select_admin_by_id($admin_id);
        $data['dashboard'] = $this->load->view('admin/edit_admin', $data, true);
        $sdata = array();
        $sdata['edit_admin'] = 'Update Admin Information Successfully';
        $this->session->set_userdata($sdata);
        $this->load->view('admin/master', $data);
    }
    
    public function update_admin() 
    {
        $this->ecourier_model->update_admin_info();
        redirect('ecourier');
    }
    
    public function manage_news()
    {
        $data = array();
        $data['title'] = 'Manage News';
        $data['all_news'] = $this->ecourier_model->select_all_news();
        $data['dashboard'] = $this->load->view('admin/manage_news', $data, true);
        $this->load->view('admin/master', $data);
    }
    
    public function edit_news($news_id) 
    {
        $data = array();
        $data['title'] = 'Edit News';
        $data['news_info'] = $this->ecourier_model->select_news_by_id($news_id);
        $data['dashboard'] = $this->load->view('admin/edit_news', $data, true);
        $sdata = array();
        $sdata['edit_news'] = 'Update News Product Successfully';
        $this->session->set_userdata($sdata);
        $this->load->view('admin/master', $data);
    }

    public function update_news() 
    {
        $this->ecourier_model->update_news_info();
        redirect('ecourier/manage_news');
    }
    
    public function add_banner()
    {
        $data = array();
        $data['title'] = 'Add Banner';
        $data['dashboard'] = $this->load->view('admin/add_banner', $data, true);
        $this->load->view('admin/master', $data);
    }

    public function save_banner()
    {
        $data=array();
        $cnt = 0;
        foreach ($_FILES as $eachFile) {
            if ($eachFile['size'] > 0) {
                $config['upload_path'] = 'upload_image/banner_image/';
                $config['allowed_types'] = 'gif|jpg|png';
                $config['max_size'] = '10240';
                $config['max_width'] = '1920';
                $config['max_height'] = '1080';
                $error = '';
                $fdata = array();
                $this->load->library('upload', $config);
                $this->upload->initialize($config);
                if (!$this->upload->do_upload('banner_image')) {
                    $error = $this->upload->display_errors();
                    echo $error;
                    exit();
                } else {
                    $fdata = $this->upload->data();
                    $index = 'banner_image';
                    $data[$index] = $config['upload_path'] . $fdata['file_name'];
                }
            }
        }
        $data['banner_link'] = $this->input->post('banner_link', true);
        $data['banner_position'] = $this->input->post('banner_position', true);
        $data['banner_type'] = 3;
        $this->ecourier_model->save_banner_info($data);
        $sdata = array();
        $sdata['save_banner'] = 'Banner Saved';
        $this->session->set_userdata($sdata);
        redirect('ecourier/add_banner');
    }
    
    public function edit_banner($banner_id) 
    {
        $data = array();
        $data['title'] = 'Edit Banner';
        $data['banner_info'] = $this->ecourier_model->select_banner_by_id($banner_id);
        $data['dashboard'] = $this->load->view('admin/edit_banner', $data, true);
        $sdata = array();
        $sdata['edit_banner'] = 'Update Banner Information Successfully';
        $this->session->set_userdata($sdata);
        $this->load->view('admin/master', $data);
    }
    
    public function update_banner()
    {
        $data=array();
        /** IF THEY DO NOT SELECT A IMAGE **/
	$cnt = 0;
        foreach ($_FILES as $eachFile) {
            if ($eachFile['size'] > 0) {
                $config['upload_path'] = 'upload_image/banner_image/';
                $config['allowed_types'] = 'gif|jpg|png';
                $config['max_size'] = '10240';
                $config['max_width'] = '1920';
                $config['max_height'] = '1080';
                $error = '';
                $fdata = array();
                $this->load->library('upload', $config);
                $this->upload->initialize($config);
                if (!$this->upload->do_upload('banner_image')) {
                    $error = $this->upload->display_errors();
                    echo $error;
                    exit();
                } else {
                    $fdata = $this->upload->data();
                    $index = 'banner_image';
                    $data[$index] = $config['upload_path'] . $fdata['file_name'];
                }
            }
        }
        $data['banner_link'] = $this->input->post('banner_link', true);
        $data['banner_position'] = $this->input->post('banner_position', true);
        $data['banner_type'] = 3;
        $this->ecourier_model->update_banner_info($data);
        $sdata = array();
        $sdata['save_banner'] = 'Banner Edited';
        $this->session->set_userdata($sdata);
        redirect('ecourier/manage_banner');
    }
    
    public function manage_banner()
    {
        $data = array();
        $data['title'] = 'Manage Banner';
        $data['all_banner'] = $this->ecourier_model->select_all_banner();
        $data['dashboard'] = $this->load->view('admin/manage_banner', $data, true);
        $this->load->view('admin/master', $data);
    }
    
    public function delete_banner($banner_id) 
    {        
        $this->ecourier_model->delete_banner_by_id($banner_id);
        redirect('ecourier/manage_banner');
    }
    
    public function manage_customer()
    {
        $data = array();
        $data['title'] = 'Manage Customer';
        $config['base_url'] = base_url() . 'ecourier/manage_customer/';
        $config['total_rows'] = $this->db->count_all('tbl_customer');
        $config['per_page'] = '8';
        /** STYLE PAGINATION **/
        $config['full_tag_open'] = "<ul class='pagination'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tagl_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /** END STYLE PAGINATION **/
        $this->pagination->initialize($config);
        $data['all_customer'] = $this->ecourier_model->select_all_customer($config['per_page'], $this->uri->segment(3));
        $data['dashboard'] = $this->load->view('admin/manage_customer', $data, true);
        $this->load->view('admin/master', $data);
    }
    
    public function view_customer_order($customer_id) 
    {
        $data = array();
        $data['title'] = 'Customer Order';
        $data['customer_order_info'] = $this->ecourier_model->select_customer_order_by_id($customer_id);
        $data['dashboard'] = $this->load->view('admin/view_customer_order', $data, true);
        $this->load->view('admin/master', $data);
    }
    
    public function inactive_customer($customer_id) 
    {
        $this->ecourier_model->inactive_customer_by_id($customer_id);
        redirect('ecourier/manage_customer');
    }
    
    public function active_customer($customer_id) 
    {
        $this->ecourier_model->active_customer_by_id($customer_id);
        redirect('ecourier/manage_customer');
    }
  
    public function delete_customer($customer_id) 
    {
        $this->ecourier_model->delete_customer_by_id($customer_id);
        redirect('ecourier/manage_customer');
    }
    
    public function manage_delivery()
    {
        $data = array();
        $data['title'] = 'Manage Delivery';
        $data['all_delivery'] = $this->ecourier_model->select_all_delivery();
        $data['dashboard'] = $this->load->view('admin/manage_delivery', $data, true);
        $this->load->view('admin/master', $data);
    }

    public function invoice($delivery_id) 
    {
        $data = array();
        $data['title'] = 'Invoice';
        $data['delivery_info'] = $this->ecourier_model->select_delivery_by_id($delivery_id);
        $data['dashboard'] = $this->load->view('admin/invoice', $data, true);
        $this->load->view('admin/master', $data);
    }
   
    public function edit_delivery($delivery_id) 
    {
        $data = array();
        $data['title'] = 'Delivery Status';
        $data['delivery_info'] = $this->ecourier_model->select_delivery_by_id($delivery_id);
        $data['dashboard'] = $this->load->view('admin/edit_delivery', $data, true);
        $this->load->view('admin/master', $data);
    }
    
    public function delivered($delivery_id) 
    {
        $this->ecourier_model->delivered($delivery_id);
        redirect('ecourier/manage_delivery');
    }
    
    public function delivering($delivery_id) 
    {
        $this->ecourier_model->delivering($delivery_id);
        redirect('ecourier/manage_delivery');
    }
    
    public function verifying($delivery_id) 
    {
        $this->ecourier_model->verifying($delivery_id);
        redirect('ecourier/manage_delivery');
    }
    
    public function delete_delivery($delivery_id) 
    {
        $this->ecourier_model->delete_delivery_by_id($delivery_id);
        redirect('ecourier/manage_delivery');
    }
    
    public function manage_franchise()
    {
        $data = array();
        $data['title'] = 'Manage Franchise';
        $config['base_url'] = base_url() . 'ecourier/manage_franchise/';
        $config['total_rows'] = $this->db->count_all('tbl_franchise');
        $config['per_page'] = '8';
        /** STYLE PAGINATION **/
        $config['full_tag_open'] = "<ul class='pagination'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tagl_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /** END STYLE PAGINATION **/
        $this->pagination->initialize($config);
        $data['all_franchise'] = $this->ecourier_model->select_all_franchise($config['per_page'], $this->uri->segment(3));
        $data['dashboard'] = $this->load->view('admin/manage_franchise', $data, true);
        $this->load->view('admin/master', $data);
    }
    
    public function delete_franchise($franchise_id) 
    {
        $this->ecourier_model->delete_franchise_by_id($franchise_id);
        redirect('ecourier/manage_franchise');
    }
    
    public function manage_quotation()
    {
        $data = array();
        $data['title'] = 'Manage Quotation';
        $config['base_url'] = base_url() . 'ecourier/manage_quotation/';
        $config['total_rows'] = $this->db->count_all('tbl_quotation');
        $config['per_page'] = '8';
        /** STYLE PAGINATION **/
        $config['full_tag_open'] = "<ul class='pagination'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tagl_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /** END STYLE PAGINATION **/
        $this->pagination->initialize($config);
        $data['all_quotation'] = $this->ecourier_model->select_all_quotation($config['per_page'], $this->uri->segment(3));
        $data['dashboard'] = $this->load->view('admin/manage_quotation', $data, true);
        $this->load->view('admin/master', $data);
    }
    
    public function delete_quotation($quotation_id) 
    {
        $this->ecourier_model->delete_quotation_by_id($quotation_id);
        redirect('ecourier/manage_quotation');
    }
       
    public function about()
    {
        $data = array();
        $data['title'] = 'LabTrio';
        $data['dashboard'] = $this->load->view('admin/about', $data, true);
        $this->load->view('admin/master', $data);
    }
}