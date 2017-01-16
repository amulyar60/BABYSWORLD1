package com.niit.BABYSWORLD.service.impl;

import com.niit.BABYSWORLD.dao.CartDao;
import com.niit.BABYSWORLD.model.Cart;
import com.niit.BABYSWORLD.service.CartService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartDao cartDao;

    public Cart getCartById(int cartId) {
        return cartDao.getCartById(cartId);
    }

    public void update(Cart cart) {
        cartDao.update(cart);
    }
}
