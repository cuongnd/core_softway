<?php
/**
 * @package	HikaShop for Joomla!
 * @version	2.6.3
 * @author	hikashop.com
 * @copyright	(C) 2010-2016 HIKARI SOFTWARE. All rights reserved.
 * @license	GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
 */
defined('_WOO_BOOKING_EXEC') or die('Restricted access');
?><div class="hikashop_collectondelivery_end" id="hikashop_collectondelivery_end">
	<span class="hikashop_collectondelivery_end_message" id="hikashop_collectondelivery_end_message">
		<?php echo WoobookingText::_('ORDER_IS_COMPLETE').'<br/>'.
		WoobookingText::sprintf('AMOUNT_COLLECTED_ON_DELIVERY',$this->amount,$this->order_number).'<br/>'.
		WoobookingText::_('THANK_YOU_FOR_PURCHASE');?>
	</span>
</div>
<?php
if(!empty($this->payment_params->return_url)){
	$doc = JFactory::getDocument();
	$doc->addScriptDeclaration("window.hikashop.ready( function() {window.location='".$this->payment_params->return_url."'});");
}
