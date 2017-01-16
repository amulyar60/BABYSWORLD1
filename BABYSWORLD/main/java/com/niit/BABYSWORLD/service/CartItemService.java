package com.niit.BABYSWORLD.service;

import com.niit.BABYSWORLD.model.Cart;
import com.niit.BABYSWORLD.model.CartItem;


public interface CartItemService {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId (int productId);
}
