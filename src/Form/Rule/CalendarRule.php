<?php
/**
 * woobooking! Content Management System
 *
 * @copyright  Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */

namespace WooBooking\CMS\Form\Rule;

defined('_WOO_BOOKING_EXEC') or die;

use WooBooking\CMS\Date\Date;
use WooBooking\CMS\Form\Form;
use WooBooking\CMS\Form\FormRule;
use woobooking\Registry\Registry;

/**
 * Form Rule class for the woobooking Platform
 *
 * @since  3.7.0
 */
class CalendarRule extends FormRule
{
	/**
	 * Method to test the calendar value for a valid parts.
	 *
	 * @param   \SimpleXMLElement  $element  The SimpleXMLElement object representing the `<field>` tag for the form field object.
	 * @param   mixed              $value    The form field value to validate.
	 * @param   string             $group    The field name group control value. This acts as an array container for the field.
	 *                                       For example if the field has name="foo" and the group value is set to "bar" then the
	 *                                       full field name would end up being "bar[foo]".
	 * @param   Registry           $input    An optional Registry object with the entire data set to validate against the entire form.
	 * @param   Form               $form     The form object for which the field is being tested.
	 *
	 * @return  boolean  True if the value is valid, false otherwise.
	 *
	 * @since   3.7.0
	 */
	public function test(\SimpleXMLElement $element, $value, $group = null, Registry $input = null, Form $form = null)
	{
		// If the field is empty and not required, the field is valid.
		$required = ((string) $element['required'] == 'true' || (string) $element['required'] == 'required');

		if (!$required && empty($value))
		{
			return true;
		}

		if (strtolower($value) == 'now')
		{
			return true;
		}

		try
		{
			return Factory::getDate($value) instanceof Date;
		}
		catch (\Exception $e)
		{
			return false;
		}
	}
}
