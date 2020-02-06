<?php
namespace WooBooking\CMS\OpenSource;
use WooBooking\CMS\OpenSource\WordPress\WooBookingOnWordpress;
class      WooBookingOnOpenSource
{
    public static $instance=null;
    public  $open_source=null;
    public static function getInstance(){

        if (!isset(self::$instance))
        {
            $current_open_source="wordpress";
            if($current_open_source=="wordpress"){
                self::$instance=  WooBookingOnWordpress::getInstance();
            }
        }

        return self::$instance;
    }

    public function __construct()
    {

    }
    public function getSession(){
        $this->open_source->getSession();
    }
    public function redirect($location, $status=302,$x_redirect_by = ""){
        $this->open_source->redirect($location, $status ,  $x_redirect_by);
    }

}