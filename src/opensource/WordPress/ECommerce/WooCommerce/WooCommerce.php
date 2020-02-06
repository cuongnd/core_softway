<?php

namespace WooBooking\CMS\OpenSource\WordPress\ECommerce\WooCommerce;
use  WooBooking\CMS\OpenSource\WordPress\ECommerce\WooCommerce\Versions\WooCommerce_v1\HookPage\CheckOut;
use  WooBooking\CMS\OpenSource\WordPress\ECommerce\WooCommerce\Versions\WooCommerce_v1\HookPage\Cart;
class WooCommerce
{
    public function __construct()
    {

    }

    public function run()
    {
        $cart=Cart::getInstance();
        //add_action( 'woocommerce_checkout_order_review', [$checkout,'woocommerce_order_review'], 10 );
        add_action( 'woocommerce_before_cart_contents',array($cart,'woocommerce_before_cart_contents'),  1, 1  );
        add_action( 'woocommerce_cart_contents', array($cart,'woocommerce_cart_contents'),  1, 1  );
        add_action( 'woocommerce_after_cart_contents', array($cart,'woocommerce_after_cart_contents'),  1, 1  );


        $checkout=CheckOut::getInstance();
        //add_action( 'woocommerce_checkout_order_review', [$checkout,'woocommerce_order_review'], 10 );
        add_action( 'woocommerce_checkout_order_processed', array($checkout,'woocommerce_checkout_order_processed'),  10, 3   );




    }
    public function get_product($product_id){
        return function_exists('wc_get_product')? wc_get_product($product_id):null;
    }
    public function get_products($args){
        return function_exists('wc_get_products')? wc_get_products($args):array();
    }
}