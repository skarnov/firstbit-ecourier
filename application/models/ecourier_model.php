<?php

class Ecourier_Model extends CI_Model {
    
    public function select_admin_by_id($admin_id)
    {
        $this->db->select('*');
        $this->db->from('tbl_admin');
        $this->db->where('admin_id',$admin_id);
        $query_result=$this->db->get();
        $result=$query_result->row();
        return $result;
    }
    
    public function update_admin_info()
    {
        $data=array();
        $data['admin_name'] = $this->input->post('admin_name', true);
        $data['admin_email'] = $this->input->post('admin_email', true);
        $data['admin_password'] = $this->input->post('admin_password', true);
        $data['admin_level'] = $this->input->post('admin_level', true);
        $data['admin_status'] = $this->input->post('admin_status', true);
        $data['admin_type'] = $this->input->post('admin_type', true);
        $admin_id=$this->input->post('admin_id',true);
        $this->db->where('admin_id',$admin_id);
        $this->db->update('tbl_admin',$data);
    }
    
    public function select_all_news()
    {
        $sql = "SELECT * FROM tbl_news";
        $query_result = $this->db->query($sql);
        $result = $query_result->result();
        return $result;
    }
    
    public function select_news_by_id($news_id)
    {
        $this->db->select('*');
        $this->db->from('tbl_news');
        $this->db->where('news_id',$news_id);
        $query_result=$this->db->get();
        $result=$query_result->row();
        return $result;
    }
    
    public function update_news_info()
    {
        $data=array();
        $data['news_title'] = $this->input->post('news_title', true);
        $news_id = $this->input->post('news_id', true);
        $this->db->where('news_id',$news_id);
        $this->db->update('tbl_news',$data);
    }
    
    public function save_banner_info($data)
    {
        $this->db->insert('tbl_banner',$data);
    }
    
    public function select_banner_by_id($banner_id)
    {
        $this->db->select('*');
        $this->db->from('tbl_banner');
        $this->db->where('banner_id',$banner_id);
        $query_result=$this->db->get();
        $result=$query_result->row();
        return $result;
    }
    
    public function update_banner_info($data)
    {
        $slide_id=$this->input->post('banner_id',true);
        $this->db->where('banner_id',$slide_id);
        $this->db->update('tbl_banner',$data);
    }
    
    public function select_all_banner()
    {
        $this->db->select('*');
        $this->db->from('tbl_banner');
        $this->db->where('banner_type',3);
        $query_result=$this->db->get();
        $result=$query_result->result();
        return $result;
    }
    
    public function delete_banner_by_id($banner_id)
    {
        $this->db->where('banner_id',$banner_id);
        $this->db->delete('tbl_banner');
    }
    
    public function select_all_customer($per_page, $offset)
    {
        if ($offset == NULL)
        {
            $offset = 0;
        }
        $sql = "SELECT * FROM tbl_customer WHERE customer_type='3' OR customer_type='4' ORDER BY customer_id DESC LIMIT $offset,$per_page ";
        $query_result = $this->db->query($sql);
        $result = $query_result->result();
        return $result;
    }
    
    public function select_customer_order_by_id($customer_id)
    {
        $sql = "SELECT * FROM tbl_order WHERE customer_id='$customer_id' AND order_type=1";
        $query_result = $this->db->query($sql);
        $result = $query_result->result();
        return $result;
    }

    public function inactive_customer_by_id($customer_id)
    {
        $this->db->set('customer_status',0);
        $this->db->where('customer_id',$customer_id);
        $this->db->update('tbl_customer');
    }
    
    public function active_customer_by_id($customer_id)
    {
        $this->db->set('customer_status',1);
        $this->db->where('customer_id',$customer_id);
        $this->db->update('tbl_customer');
    }
    
    public function delete_customer_by_id($customer_id)
    {
        $this->db->where('customer_id',$customer_id);
        $this->db->delete('tbl_customer');
    }

    public function select_all_delivery()
    {
        $sql = "SELECT * FROM tbl_delivery AS d, tbl_customer AS c, tbl_sender AS s, tbl_receiver AS r WHERE d.customer_id=c.customer_id AND d.sender_id=s.sender_id AND d.receiver_id=r.receiver_id";
        $query_result = $this->db->query($sql);
        $result = $query_result->result();
        return $result;
    }

    public function select_delivery_by_id($delivery_id)
    {
        $sql = "SELECT * FROM tbl_delivery AS d, tbl_customer AS c, tbl_sender AS s, tbl_receiver AS r WHERE d.delivery_id='$delivery_id' AND d.customer_id=c.customer_id AND d.sender_id=s.sender_id AND d.receiver_id=r.receiver_id";
        $query_result = $this->db->query($sql);
        $result = $query_result->row();
        return $result;
    }
    
    public function delivered($delivery_id)
    {
        $this->db->set('delivery_status',2);
        $this->db->where('delivery_id',$delivery_id);
        $this->db->update('tbl_delivery');
    }
    
    public function delivering($delivery_id)
    {
        $this->db->set('delivery_status',1);
        $this->db->where('delivery_id',$delivery_id);
        $this->db->update('tbl_delivery');
    }
    
    public function verifying($delivery_id)
    {
        $this->db->set('delivery_status',0);
        $this->db->where('delivery_id',$delivery_id);
        $this->db->update('tbl_delivery');
    }
    
    public function delete_delivery_by_id($delivery_id)
    {
        $this->db->where('delivery_id',$delivery_id);
        $this->db->delete('tbl_delivery');
    }
    
    public function select_all_franchise($per_page, $offset)
    {
        if ($offset == NULL)
        {
            $offset = 0;
        }
        $sql = "SELECT * FROM tbl_franchise ORDER BY franchise_id DESC LIMIT $offset,$per_page ";
        $query_result = $this->db->query($sql);
        $result = $query_result->result();
        return $result;
    }
    
    public function delete_franchise_by_id($franchise_id)
    {
        $this->db->where('franchise_id',$franchise_id);
        $this->db->delete('tbl_franchise');
    }
    
    public function select_all_quotation($per_page, $offset)
    {
        if ($offset == NULL)
        {
            $offset = 0;
        }
        $sql = "SELECT * FROM tbl_quotation ORDER BY quotation_id DESC LIMIT $offset,$per_page ";
        $query_result = $this->db->query($sql);
        $result = $query_result->result();
        return $result;
    }

    public function delete_quotation_by_id($quotation_id)
    {
        $this->db->where('quotation_id',$quotation_id);
        $this->db->delete('tbl_quotation');
    }
}