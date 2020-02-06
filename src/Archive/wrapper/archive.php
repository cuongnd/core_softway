<?php
/**
 * @package     Joomla.Platform
 * @subpackage  Archive
 *
 * @copyright   Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE
 */

defined('_WOO_BOOKING_EXEC') or die;

/**
 * Wrapper class for Archive
 *
 * @package     Joomla.Platform
 * @subpackage  Archive
 * @since       3.4
 * @deprecated  4.0 use the Joomla\Archive\Archive class instead
 */
class ArchiveWrapperArchive
{
	/**
	 * Helper wrapper method for extract
	 *
	 * @param   string  $archivename  The name of the archive file
	 * @param   string  $extractdir   Directory to unpack into
	 *
	 * @return  boolean  True for success
	 *
	 * @see     Archive::extract()
	 * @since   3.4
	 * @throws InvalidArgumentException
	 * @deprecated 4.0 use the Joomla\Archive\Archive class instead
	 */
	public function extract($archivename, $extractdir)
	{
		return Archive::extract($archivename, $extractdir);
	}

	/**
	 * Helper wrapper method for getAdapter
	 *
	 * @param   string  $type  The type of adapter (bzip2|gzip|tar|zip).
	 *
	 * @return  ArchiveExtractable  Adapter for the requested type
	 *
	 * @see     JUserHelper::getAdapter()
	 * @since   3.4
	 * @deprecated 4.0 use the Joomla\Archive\Archive class instead
	 */
	public function getAdapter($type)
	{
		return Archive::getAdapter($type);
	}
}
