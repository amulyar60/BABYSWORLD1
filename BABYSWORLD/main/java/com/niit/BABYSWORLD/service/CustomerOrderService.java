package com.niit.BABYSWORLD.service;

import com.niit.BABYSWORLD.model.CustomerOrder;


public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
