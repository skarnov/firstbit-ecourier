<?php 

class Courier_Model extends CI_Model {
    
    public function personal_login_check($data)
    {
        $this->db->select('*');
        $this->db->from('tbl_customer');
        $this->db->where('customer_email',$data['customer_email']);
        $this->db->where('customer_password', $data['customer_password']);
	$this->db->where('customer_status',1);
	$this->db->where('customer_type',3);
        $query_result=$this->db->get();
        $result=$query_result->row();
        return $result;
    }
    
    public function corporate_login_check($data)
    {
        $this->db->select('*');
        $this->db->from('tbl_customer');
        $this->db->where('customer_email',$data['customer_email']);
        $this->db->where('customer_password', $data['customer_password']);
	$this->db->where('customer_status',1);
	$this->db->where('customer_type',4);
        $query_result=$this->db->get();
        $result=$query_result->row();
        return $result;
    }
    
    public function select_customer_by_id($customer_id)
    {
        $this->db->select('*');
        $this->db->from('tbl_customer');
        $this->db->where('customer_id',$customer_id);
        $query_result=$this->db->get();
        $result=$query_result->row();
        return $result;
    }
    
    public function select_all_news()
    {
        $sql = "SELECT * FROM tbl_news";
        $query_result = $this->db->query($sql);
        $result = $query_result->row();
        return $result;
    }
    
    public function select_all_banner()
    {
        $sql = "SELECT * FROM tbl_banner WHERE banner_type=3";
        $query_result = $this->db->query($sql);
        $result = $query_result->result();
        return $result;
    }
  
    public function save_personal_delivery_info()
    {
        $data=array();
        $data['customer_name'] = $this->input->post('user_name', true);
        $data['customer_address'] = $this->input->post('user_address', true);
        $data['customer_email'] = $this->input->post('user_email', true);
        $data['customer_password'] = $this->input->post('user_password', true);
        $data['customer_mobile'] = $this->input->post('user_mobile', true);
        $data['customer_type'] = 3;
        $this->db->insert('tbl_customer',$data);
        $customer_id=$this->db->insert_id();
        $sender=array();
        $sender['customer_id'] = $customer_id;
        $sender['sender_name'] = $this->input->post('sender_name', true);
        $sender['pick_address'] = $this->input->post('pick_address', true);
        $sender['sender_landmark'] = $this->input->post('sender_landmark', true);
        $sender['sender_mobile'] = $this->input->post('sender_mobile', true);
        $this->db->insert('tbl_sender',$sender); 
        $sender_id=$this->db->insert_id();
        $receiver=array();
        $receiver['customer_id'] = $customer_id;
        $receiver['sender_id'] = $sender_id;
        $receiver['receiver_name'] = $this->input->post('receiver_name', true);
        $receiver['drop_address'] = $this->input->post('drop_address', true);
        $receiver['receiver_landmark'] = $this->input->post('receiver_landmark', true);
        $receiver['receiver_mobile'] = $this->input->post('receiver_mobile', true);
        $this->db->insert('tbl_receiver',$receiver);
        $receiver_id=$this->db->insert_id();
        $delivery=array();
        $delivery['customer_id'] = $customer_id;
        $delivery['sender_id'] = $sender_id;
        $delivery['receiver_id'] = $receiver_id;
        $delivery['delivery_time'] = $this->input->post('delivery_time', true);
        $delivery['product_details'] = $this->input->post('product_details', true);
        $delivery['product_weight'] = $this->input->post('product_weight', true);
        $delivery['product_price'] = $this->input->post('product_price', true);
        $delivery['delivery_date'] = $this->input->post('delivery_date', true);
        $delivery['delivery_charge_given'] = $this->input->post('delivery_charge_given', true);
        $delivery['delivery_note'] = $this->input->post('delivery_note', true);
        $this->db->insert('tbl_delivery',$delivery);
    }
    
    public function save_corporate_delivery_info()
    {
        $data=array();
        $data['customer_name'] = $this->input->post('company_name', true);
        $data['customer_address'] = $this->input->post('company_address', true);
        $data['customer_landmark'] = $this->input->post('company_landmark', true);
        $data['customer_email'] = $this->input->post('company_email', true);
        $data['customer_password'] = $this->input->post('company_password', true);
        $data['customer_mobile'] = $this->input->post('company_mobile', true);
        $data['customer_website'] = $this->input->post('website_url', true);
        $data['customer_type'] = 4;
        $this->db->insert('tbl_customer',$data);
    }
    
    public function save_franchise_info()
    {
        $data=array();
        $data['company_name'] = $this->input->post('company_name', true);
        $data['company_address'] = $this->input->post('company_address', true);
        $data['company_email'] = $this->input->post('company_email', true);
        $data['company_mobile'] = $this->input->post('company_mobile', true);
        $data['interested_area'] = $this->input->post('interested_area', true);
        $data['past_experienced'] = $this->input->post('past_experienced', true);
        $data['details_about_franchise'] = $this->input->post('details_about_franchise', true);
        $data['company_landmark'] = $this->input->post('company_landmark', true);
        $this->db->insert('tbl_franchise',$data);
    }
    
    public function save_quotation_info()
    {
        $data=array();
        $data['mobile'] = $this->input->post('mobile', true);
        $data['email'] = $this->input->post('email', true);
        $data['document_type'] = $this->input->post('document_type', true);
        $this->db->insert('tbl_quotation',$data);
    }
    
    public function trace_the_delivery()
    {
        $delivery_id = $this->input->post('delivery_id', true);
        $sql = "SELECT * FROM tbl_delivery WHERE delivery_id LIKE '$delivery_id%'";
        $query_result = $this->db->query($sql);
        $result = $query_result->row();
        return $result;
    }  
    
    public function update_customer_info()
    {
        $data=array();
        $data['customer_name'] = $this->input->post('customer_name', true);
        $data['customer_address'] = $this->input->post('customer_address', true);
        $data['customer_email'] = $this->input->post('customer_email', true);
        $data['customer_password'] = $this->input->post('new_password', true);
        $data['customer_mobile'] = $this->input->post('customer_mobile', true);
        $customer_id=$this->input->post('customer_id',true);
        $this->db->where('customer_id',$customer_id);
        $this->db->update('tbl_customer',$data);
    }
    
    public function save_delivery_info($customer_id)
    {
        $sender=array();
        $sender['customer_id'] = $customer_id;
        $sender['sender_name'] = $this->input->post('sender_name', true);
        $sender['pick_address'] = $this->input->post('pick_address', true);
        $sender['sender_landmark'] = $this->input->post('sender_landmark', true);
        $sender['sender_mobile'] = $this->input->post('sender_mobile', true);
        $this->db->insert('tbl_sender',$sender); 
        $sender_id=$this->db->insert_id();
        $receiver=array();
        $receiver['customer_id'] = $customer_id;
        $receiver['sender_id'] = $sender_id;
        $receiver['receiver_name'] = $this->input->post('receiver_name', true);
        $receiver['drop_address'] = $this->input->post('drop_address', true);
        $receiver['receiver_landmark'] = $this->input->post('receiver_landmark', true);
        $receiver['receiver_mobile'] = $this->input->post('receiver_mobile', true);
        $this->db->insert('tbl_receiver',$receiver);
        $receiver_id=$this->db->insert_id();
        $delivery=array();
        $delivery['customer_id'] = $customer_id;
        $delivery['sender_id'] = $sender_id;
        $delivery['receiver_id'] = $receiver_id;
        $delivery['delivery_time'] = $this->input->post('delivery_time', true);
        $delivery['product_details'] = $this->input->post('product_details', true);
        $delivery['product_weight'] = $this->input->post('product_weight', true);
        $delivery['product_price'] = $this->input->post('product_price', true);
        $delivery['delivery_date'] = $this->input->post('delivery_date', true);
        $delivery['delivery_charge_given'] = $this->input->post('delivery_charge_given', true);
        $delivery['delivery_note'] = $this->input->post('delivery_note', true);
        $this->db->insert('tbl_delivery',$delivery);
    }
    
    public function select_customer_delivery($customer_id)
    {
        $sql = "SELECT * FROM tbl_delivery AS d, tbl_customer AS c, tbl_sender AS s, tbl_receiver AS r WHERE d.customer_id='$customer_id' AND d.customer_id=c.customer_id AND d.sender_id=s.sender_id AND d.receiver_id=r.receiver_id";
        $query_result = $this->db->query($sql);
        $result = $query_result->result();
        return $result;
    }
}