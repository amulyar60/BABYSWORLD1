package com.niit.BABYSWORLD.service.impl;

import com.niit.BABYSWORLD.dao.CustomerOrderDao;
import com.niit.BABYSWORLD.model.Cart;
import com.niit.BABYSWORLD.model.CartItem;
import com.niit.BABYSWORLD.model.CustomerOrder;
import com.niit.BABYSWORLD.service.CartService;
import com.niit.BABYSWORLD.service.CustomerOrderService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;



@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
    private CartService cartService;

    public void addCustomerOrder(CustomerOrder customerOrder) {
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    public double getCustomerOrderGrandTotal(int cartId) {
        double grandTotal=0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems) {
            grandTotal+=item.getTotalPrice();
        }

        return grandTotal;
    }
}
