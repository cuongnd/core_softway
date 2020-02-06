<?php


namespace WooBooking\CMS\OpenSource\WordPress;


use BlockController;
use Exception;
use Factory;
use WooBooking\CMS;
use WooBooking\CMS\Filesystem\File;
use WooBooking\CMS\Filesystem\Folder;
use WooBooking\CMS\Html\Html;
use WooBooking\CMS\Html\HtmlFrontend;
use WooBooking\CMS\OpenSource\WordPress\ECommerce\ECommerce;
use WooBooking\CMS\Utilities\Utility;
use woobooking_controller;
use WoobookingModel;
use WoobookingText;


class WooBookingOnWordpress
{
	public static $instance = null;
	public static $items_submenus = null;
	public static $key_woo_booking = "woobooking";
	public static $version = "1.0";
	public static $prefix_link = "wb_";
	public static $namespace = "woobooking_api/1.0";
	private static $list_environment = array();
	private static $page_default="event-list";
	public $view = "";
	public $ecommerce = null;
	public $scripts = array();
	public $script = array();
	public $plugin_name = 'woobooking';

	public static function getInstance($new = false)
	{
		if (!is_object(self::$instance)) {
			self::$instance = new WooBookingOnWordpress();
			self::$instance->run();
		}

		return self::$instance;
	}

	private static function get_prefix_link()
	{

		return self::$prefix_link;
	}

	private static function get_true_menu_of_woo_booking($menu)
	{
		return str_replace(self::$prefix_link, "", $menu);
	}

	public function __return_false()
	{
		return false;
	}

	public function getKeyWooBooking()
	{
		return self::$key_woo_booking;
	}

	function react2wp_woocommerce_hide_product_price($price)
	{
		return '';
	}

	public function my_action()
	{
		$input = Factory::getInput();
		$data = $input->getData();
		echo "sdfsdfds";
		die;
		$modelBooking = WoobookingModel::getInstance('booking');
		$modelBooking->add_to_cart($data);

		?>
        <script type="text/javascript">
            window.location.href = "http://localhost/woobooking2/cart/";
        </script>
		<?php

	}

	public function render_content($content)
	{
		echo $content;
	}

	public function initOpenWooBookingWooPanelBackend()
	{


		$app = Factory::getApplication();
		$root_url = self::get_root_url();
		Factory::setRootUrl($root_url);
		$user = Factory::getUser();

		$listMenuWooPanel = self::getListMenuWooPanel();
		foreach ($listMenuWooPanel as $menu) {
			add_filter("woopanel_dashboard_{$menu}_endpoint", array($this, "render_body_woopanel_content_by_endpoint"));
		}
		Factory::setRootUrlPlugin($root_url . "/wp-content/plugins/" . PLUGIN_NAME . "/");


		if ($app->getClient() == 1 && !in_array($this->view, $listMenuWooPanel)) {

			return;
		}


		add_action('wp_print_scripts', array($this, 'woopanel_dashboard_woobooking_frontend_shapeSpace_print_scripts'));
		$prefix_link = self::$prefix_link;
		//hook api
		$this->setup_script_woopanel();
		add_action('rest_api_init', array($this, 'woobooking_register_rest_route'));
		//add_action('woopanel_enqueue_scripts', array($this, 'wp_hook_add_script_footer'), 99999, 1);


	}


	function setup_script_woopanel()
	{
		$app = Factory::getApplication();
		$doc = Factory::getDocument();
		//wp_enqueue_media();
		$doc->addScript('admin/nb_apps/nb_woobooking/assets/js/woo_booking_debug.js');
		Html::_('jquery.loading_js');
		Html::_('jquery.confirm');
		$doc->addScript('admin/resources/js/drawer-master/js/hy-drawer.js');
		$doc->addScript('admin/resources/js/less/less.min.js');
		$doc->addScript('admin/resources/js/jquery-validation/dist/jquery.validate.js');
		$doc->addScript('admin/resources/js/Bootstrap-Loading/src/waitingfor.js');
		$doc->addScript('admin/resources/js/jquery.form/jquery.form.js');
		$doc->addScript('admin/resources/js/form-serializeObject/jquery.serializeObject.js');
		$doc->addScript('admin/resources/js/form-serializeObject/jquery.serializeToJSON.js');
		$doc->addScript('admin/nb_apps/nb_woobooking/assets/js/main_script.js');
		$doc->addLessStyleSheet('admin/nb_apps/nb_woobooking/assets/less/main_style.less');
		$doc->addStyleSheet('admin/resources/js/drawer-master/css/style.css');
		Html::_('jquery.tooltip');
		Html::_('jquery.bootstrap');

		$doc->addStyleSheet('admin/resources/js/drawer-master/css/style.css');
		$doc->addStyleSheet('admin/resources/js/jquery-confirm-master/dist/jquery-confirm.min.css');
		$doc->addScript('admin/resources/js/autoNumeric/autoNumeric.js');
		Html::_('jquery.fontawesome');
	}

	public function render_body_woopanel_content_by_endpoint()
	{
		if (!self::checkInstalled()) {
			self::goToPopupInstall();
		}
		Html::_('jquery.tooltip');
		Html::_('jquery.bootstrap');
		$root_url = self::get_root_url();
		$input = Factory::getInput();
		$data = $input->getData();
		$task = array_key_exists('task', $data) ? $data['task'] : null;
		$layout = array_key_exists('layout', $data) ? $data['layout'] : null;
		$layout = $layout ? $layout : "list";

		if ($task) {

			echo woobooking_controller::action_task();
		} else {


			$menu = $this->get_current_page();
			$menu = self::get_true_menu_of_woo_booking($menu);
			$file_controller_path = WOOBOOKING_PATH_COMPONENT . "/controllers/" . ucfirst($menu) . ".php";

			$file_controller_short_path = Utility::get_short_file_by_path($file_controller_path);
			if (file_exists($file_controller_path)) {
				require_once $file_controller_path;
				$class_name = ucfirst($menu) . "Controller";

				if (class_exists($class_name)) {
					$class_controller = new $class_name();
					echo $class_controller->view("$menu.$layout");
				} else {
					echo "Class $class_name not exit in file $file_controller_short_path, please create this class";
				}
			} else {

				echo "File controller not found,please create file $file_controller_short_path";
			}
		}
		$this->render_script_body_woopanel_content_by_endpoint();


	}


	public function getSession()
	{

		if (!session_id()) {
			session_start();
		}
		$wp_session = $_SESSION;
		return $wp_session;
	}

	public function getECommerceOrderDetail($order_id)
	{
		$order = wc_get_order($order_id);
		return $order;
	}

	public function initOpenWooBookingWordpressFrontend()
	{

		$root_url = self::get_root_url();
		$input = Factory::getInput();
		Factory::setRootUrl($root_url);
		Factory::setRootUrlPlugin($root_url . "/wp-content/plugins/" . PLUGIN_NAME . "/");

		add_action('wp_print_scripts', array($this, 'frontend_shapeSpace_print_scripts'));
		$task = $input->getString('task', '');


		//trying remove add to cart and price
		remove_action('woocommerce_after_shop_loop_item', 'woocommerce_template_loop_add_to_cart');
		//add_filter( 'woocommerce_is_purchasable',array($this,'__return_false'));

		add_filter('woocommerce_get_price_html', array($this, 'react2wp_woocommerce_hide_product_price'));


		add_action('wp_login', array($this, 'wp_login'));
		add_action('wp_logout', array($this, 'wp_logout'));

		//end remove add to cart and price

		add_action('woocommerce_after_single_product_summary', array($this, 'woocommerce_after_single_product_summary'),
			10, 0);


		// add action when booking order
		add_action('woocommerce_checkout_create_order', array($this, 'woobooking_checkout_create_order'), 20, 2);
		$page = $input->getString('page', self::$page_default);

		$page = strtolower($page);
		$list_view = self::get_list_layout_view_frontend();
		if (!isset($list_view[$page])) {
			echo "cannot found page";
			die;
		}
		add_shortcode("wp-booking-pro", array($this, 'woo_booking_render_by_tag_func'));

		$list_view = self::get_list_layout_block_frontend();

		foreach ($list_view as $key => $view) {
			$a_key = self::$key_woo_booking . "-block-" . $key;
			add_shortcode($a_key, array($this, 'woo_booking_render_block_by_tag_func'));
		}


		if (!$task) {

		} else {

			list($controller, $task) = explode(".", $task);
			$file_controller_path = WOOBOOKING_PATH_COMPONENT . "/controllers/" . ucfirst($controller) . ".php";
			$file_controller_short_path = Utility::get_short_file_by_path($file_controller_path);
			$file_short_controller_path = Utility::get_short_file_by_path($file_controller_path);
			require_once $file_controller_path;
			$class_name = ucfirst($controller) . "Controller";
			if (file_exists($file_controller_path)) {
				if (class_exists($class_name)) {
					$class_controller = new $class_name();
					if (method_exists($class_controller, $task)) {
						//not return
						call_user_func(array($class_controller, $task));
					}
				} else {
					echo "class $class_name in file $file_short_controller_path can not found function(task) $task";
				}

			} else {
				echo "class $class_name not exit in file $file_controller_short_path, please create this class";
			}
		}
		$this->add_basic_script_and_style_front_end();

		add_action('wp_footer', array($this, 'wp_hook_add_script_footer'));
		//hook api
		add_action('rest_api_init', array($this, 'woobooking_register_rest_route'));





		//TODO làm đăng ký khi người dùng active plugin

		//register_deactivation_hook( __FILE__,  array( $this, 'pluginprefix_deactivation' )  );
		//register_activation_hook( __FILE__, 'pluginprefix_deactivation' );

		//dang ky router


	}

	function add_custom_header()
	{

		$document = Factory::getDocument();
		foreach ($document->_lessStyleSheets as $src => $attribs) {
			ob_start();
			?>
            <link rel="stylesheet/less" type="text/css"
                  href="<?php echo plugins_url() . "/" . PLUGIN_NAME . "/" . $src ?>"/>
			<?php
			echo ob_get_clean();
		}


	}

	public static function wp_login($user_login)
	{
		if (!self::checkInstalled()) {
			return;
		}
		$user = get_user_by('login', $user_login);
		$userModel = WoobookingModel::getInstance('user');
		$open_source_user_id = $user->__get('id');
		$data = $user->to_array();
		$user = $userModel->getUserByOpenSourceUserId($open_source_user_id);
		if (!$user) {
			$date_user = array(
				'open_source_user_id' => $open_source_user_id,
				'first_name' => $data['user_nicename'],
				'last_name' => "",
				'email' => $data['user_email'],
				'created' => $data['user_registered'],
				'published' => $data['user_status'],
			);
			$user = $userModel->save($date_user);
		}
		$session = Factory::getSession();
		$session->set('user', $user);
	}

	public static function wp_logout()
	{

		$session = Factory::getSession();
		$session->set('user', null);
	}

	public static function get_stander_page_front_end($page)
	{
		return self::getKeyWooBooking() . "-$page";
	}

	function bl_new_demo_route_callback()
	{
		return "Congrats! Your demo callback is fully functional. Now make it do something fancy";
	}

	public static function checkInstalled()
	{
		$app = Factory::getApplication();
		$db = Factory::getDBO();
		$installed = true;
		$list_table_in_database = $db->setQuery("SHOW TABLES LIKE " . $db->quote("woobooking\\_%"))->loadColumn();
		if (count($list_table_in_database) == 0) {
			$installed = false;
		}
		if (!class_exists('WooCommerce')) {
			$installed = false;

		}


		if (!class_exists('NBWooCommerce_Dashboard')) {
			// some code
			$installed = false;
		}

		$json_table_need_install = File::read(WOOBOOKING_PATH_ROOT . "/install/tables.json");

		$json_table_need_install = json_decode($json_table_need_install);

		foreach ($json_table_need_install as $need_table) {

			if (!in_array($need_table, $list_table_in_database)) {
				$installed = false;
				break;
			}
		}

		return $installed;
	}

	public static function is_backend_wordpress()
	{
		return is_admin();
	}

	public function run()
	{
		$this->view = self::get_current_page();
		$app = Factory::getApplication();
		$input = Factory::getInput();
		add_filter('woopanel_query_var_filter', array($this, 'add_plus_menu_woopanel'), 999, 1);

		add_filter('woopanel_navigation_items', array($this, 'woobooking_add_plus_navigation_items'), 10, 1);

		if ($app->getClient() == 1) {

			if (self::is_backend_wordpress()) {
				$this->initWordpressBackend();
			} else {
				$this->initOpenWooBookingWooPanelBackend();
			}
		} else {

			$this->initOpenWooBookingWordpressFrontend();
			$this->ecommerce = ECommerce::getInstance();
		}


	}

	function start_session()
	{
		if (!session_id()) {
			session_start();
		}

	}

	function getEcommerce()
	{
		return $this->ecommerce;
	}

	function woobooking_block_category($categories, $post)
	{

		return array_merge(
			$categories,
			array(
				array(
					'slug' => 'woobooking-block',
					'title' => __('Woo booking block', 'woobooking-block'),
				),
			)
		);
	}

	function add_script_admin_wordpress()
	{
		$doc = Factory::getDocument();
		echo '<script type="text/javascript" src="' . Factory::getRootUrlPlugin() . 'admin/resources/js/less/less.min.js"></script>';
		//echo '<script type="text/javascript" src="'.Factory::getRootUrlPlugin() .'lib/WooBooking/opensource/WordPress/blocks.build.js"></script>';
	}

	public function initWordpressBackend()
	{


		$root_url = self::get_root_url();
		Factory::setRootUrl($root_url);
		$input = Factory::getInput();
		$doc = Factory::getDocument();
		require_once WOOBOOKING_PATH_LIB . "/tgm-plugin-activation/class-tgm-plugin-activation.php";
		add_action('admin_head', array($this, 'admin_wordpress_shapeSpace_print_scripts'));
		$doc->addScript('admin/nb_apps/nb_woobooking/assets/js/woo_booking_debug.js');


		Html::_('jquery.loading_js');
		$doc->addScript('admin/resources/js/drawer-master/js/hy-drawer.js');
		$doc->addScript('admin/resources/js/less/less.min.js');
		$doc->addScript('admin/resources/js/jquery-validation/dist/jquery.validate.js');
		Html::_('jquery.confirm');
		$doc->addScript('admin/resources/js/Bootstrap-Loading/src/waitingfor.js');
		$doc->addScript('admin/resources/js/jquery.form/jquery.form.js');
		$doc->addScript('admin/resources/js/form-serializeObject/jquery.serializeObject.js');
		$doc->addScript('admin/resources/js/form-serializeObject/jquery.serializeToJSON.js');
		$doc->addScript('admin/nb_apps/nb_woobooking/assets/js/main_script.js');
		$doc->addLessStyleSheet('admin/nb_apps/nb_woobooking/assets/less/main_style.less');
		$doc->addStyleSheet('admin/resources/js/drawer-master/css/style.css');
		Html::_('jquery.tooltip');
		Html::_('jquery.bootstrap');
		Html::_('jquery.fontawesome');

		$doc->addStyleSheet('admin/resources/js/drawer-master/css/style.css');
		$doc->addScript('admin/resources/js/autoNumeric/autoNumeric.js');

		if (!self::is_rest_api()) {
			Html::_('jquery.less');
		}
		Html::_('jquery.fontawesome');
		Html::_('jquery.confirm');
		Html::_('jquery.serialize_object');
		Html::_('jquery.bootstrap');

		$doc->addLessStyleSheet('nb_apps/nb_woobooking/assets/less/main_style_backend_wordpress.less');
		Factory::setRootUrlPlugin($root_url . "/wp-content/plugins/" . PLUGIN_NAME . "/");
		//$list_view=self::get_list_layout_view_frontend();
		if (!function_exists('wp_add_inline_script')) {
			require_once ABSPATH . WPINC . '/functions.wp-scripts.php';
		}


		// inline script via wp_print_scripts

		add_action('wp_print_scripts', array($this, 'shapeSpace_print_scripts'));


		add_action('admin_footer', array($this, 'add_script_admin_wordpress'));
		add_filter('block_categories', array($this, 'woobooking_block_category'), 10, 2);


		/* wp_update_nav_menu_item(23, 0, array('menu-item-title' => 'About',
			 'menu-item-object' => 'page',
			 'menu-item-object-id' => get_page_by_path('about')->ID,
			 'menu-item-type' => 'post_type',
			 'menu-item-status' => 'publish'));*/

		// Registering the block
		/* foreach ($list_view as $key=> $view) {
			 register_block_type("woobooking/$key", array(
				 'render_callback' => [$this, 'render_last_posts'],
			 ));
		 }*/

		add_action('admin_head-nav-menus.php', array($this, 'my_register_menu_metabox'));


		//add_action('admin_init', array($this, 'add_nav_menu_meta_boxes'));
		//add admin menu
		add_action('admin_menu', array($this, 'woobooking_plugin_setup_menu'));
		add_action('tgmpa_register', array($this, 'my_theme_register_required_plugins'));

		// [bartag foo="foo-value"]


		add_action('vc_before_init', array($this, 'your_name_integrateWithVC'));
		if (function_exists("vc_add_shortcode_param")) {
			vc_add_shortcode_param('woo_booking_block_type', array($this, 'woo_booking_block_type_settings_field'));
		}
		add_action('admin_footer', array($this, 'wp_hook_add_script_footer'));

		//vc_add_shortcode_param('my_param', 'my_param_settings_field', plugins_url('test.js', __FILE__));


	}

	function my_register_menu_metabox()
	{
		$custom_param = array(0 => 'This param will be passed to my_render_menu_metabox');

		add_meta_box('my-menu-test-metabox', 'Wp booking pro menu', array($this, 'my_render_menu_metabox'), 'nav-menus',
			'side', 'default', $custom_param);
	}

	/**
	 * Displays a menu metabox
	 *
	 * @param string $object Not used.
	 * @param array $args Parameters and arguments. If you passed custom params to add_meta_box(),
	 * they will be in $args['args']
	 */
	function my_render_menu_metabox($object, $args)
	{
		global $nav_menu_selected_id;

		// Create an array of objects that imitate Post objects

		$list_page = self::get_list_layout_view_frontend();
		$key_woo_booking = self::$key_woo_booking;
		$removed_args = array(
			'action',
			'customlink-tab',
			'edit-menu-item',
			'menu-item',
			'page-tab',
			'_wpnonce',
		); ?>
        <div id="my-plugin-div">
            <div id="tabs-panel-my-plugin-all" class="tabs-panel tabs-panel-active">
                <ul id="my-plugin-checklist-pop" class="categorychecklist form-no-clear">
					<?php foreach ($list_page as $key => $page) { ?>
                        <?php
						if(!$page['show_main_menu'])
						    continue;
                        ?>
                        <li>
                            <label class="menu-item-title">
                                <input type="checkbox" class="menu-item-checkbox"
                                       name="menu-item[-1][menu-item-object-id]"
                                       value="-1"> <?php echo $page['title'] ?>
                            </label>
                            <input type="hidden" class="menu-item-type" name="menu-item[-1][menu-item-type]"
                                   value="custom">
                            <input type="hidden" class="menu-item-title" name="menu-item[-1][menu-item-title]"
                                   value="<?php echo $page['title'] ?>">
                            <input type="hidden" class="menu-item-url" name="menu-item[-1][menu-item-url]"
                                   value="<?php bloginfo('wpurl'); ?>/<?php echo "wp-booking-pro/?page=$key" ?>">
                        </li>
					<?php } ?>
                </ul>

                <p class="button-controls">
			<span class="list-controls">
				<a href="<?php
				echo esc_url(add_query_arg(
					array(
						'my-plugin-all' => 'all',
						'selectall' => 1,
					),
					remove_query_arg($removed_args)
				));
				?>#my-menu-test-metabox" class="select-all"><?php _e('Select All'); ?></a>
			</span>
                    <span class="add-to-menu">
				<input type="submit"<?php wp_nav_menu_disabled_check($nav_menu_selected_id); ?>
                       class="button-secondary submit-add-to-menu right" value="<?php esc_attr_e('Add to Menu'); ?>"
                       name="add-my-plugin-menu-item" id="submit-my-plugin-div"/>
				<span class="spinner"></span>
			</span>
                </p>
            </div>
        </div>

		<?php
	}

	/**
	 * Register the required plugins for this theme.
	 *
	 * In this example, we register five plugins:
	 * - one included with the TGMPA library
	 * - two from an external source, one from an arbitrary source, one from a GitHub repository
	 * - two from the .org repo, where one demonstrates the use of the `is_callable` argument
	 *
	 * The variables passed to the `tgmpa()` function should be:
	 * - an array of plugin arrays;
	 * - optionally a configuration array.
	 * If you are not changing anything in the configuration array, you can remove the array and remove the
	 * variable from the function call: `tgmpa( $plugins );`.
	 * In that case, the TGMPA default settings will be used.
	 *
	 * This function is hooked into `tgmpa_register`, which is fired on the WP `init` action on priority 10.
	 */
	function my_theme_register_required_plugins()
	{
		$root_plugin = Factory::getRootUrlPlugin();

		/*
		 * Array of plugin arrays. Required keys are name and slug.
		 * If the source is NOT from the .org repo, then source is also required.
		 */
		$plugins = array(

			// This is an example of how to include a plugin bundled with a theme.
			array(
				'name' => 'Woocommerce dashboard',
				// The plugin name.
				'slug' => 'woopanel',
				// The plugin slug (typically the folder name).
				'source' => 'http://45.119.84.18/~wbkfitnes/woopanel_download/wc-dashboard.zip',
				// The plugin source.
				'required' => true,
				// If false, the plugin is only 'recommended' instead of required.
				'version' => '',
				// E.g. 1.0.0. If set, the active plugin must be this version or higher. If the plugin version is higher than the plugin version installed, the user will be notified to update the plugin.
				'force_activation' => false,
				// If true, plugin is activated upon theme activation and cannot be deactivated until theme switch.
				'force_deactivation' => false,
				// If true, plugin is deactivated upon theme switch, useful for theme-specific plugins.
				// If set, overrides default API URL and points to an external URL.
				'is_callable' => '',
				// If set, this callable will be be checked for availability to determine if a plugin is active.
			),
			array(
				'name' => 'woocommerce',
				// The plugin name.
				'slug' => 'woocommerce',
				// The plugin slug (typically the folder name).
				'source' => 'https://downloads.wordpress.org/plugin/woocommerce.3.8.1.zip',
				// The plugin source.
				'required' => true,
				// If false, the plugin is only 'recommended' instead of required.
				'version' => '',
				// E.g. 1.0.0. If set, the active plugin must be this version or higher. If the plugin version is higher than the plugin version installed, the user will be notified to update the plugin.
				'force_activation' => false,
				// If true, plugin is activated upon theme activation and cannot be deactivated until theme switch.
				'force_deactivation' => false,
				// If true, plugin is deactivated upon theme switch, useful for theme-specific plugins.
				// If set, overrides default API URL and points to an external URL.
				'is_callable' => '',
				// If set, this callable will be be checked for availability to determine if a plugin is active.
			)
		);

		/*
		 * Array of configuration settings. Amend each line as needed.
		 *
		 * TGMPA will start providing localized text strings soon. If you already have translations of our standard
		 * strings available, please help us make TGMPA even better by giving us access to these translations or by
		 * sending in a pull-request with .po file(s) with the translations.
		 *
		 * Only uncomment the strings in the config array if you want to customize the strings.
		 */
		$config = array(
			'id' => 'tgmpa',
			// Unique ID for hashing notices for multiple instances of TGMPA.
			'default_path' => '',
			// Default absolute path to bundled plugins.
			'parent_slug' => 'themes.php',
			'menu' => 'tgmpa-install-plugins',
			// Menu slug.
			'has_notices' => true,
			// Show admin notices or not.
			'dismissable' => true,
			// If false, a user cannot dismiss the nag message.
			'dismiss_msg' => '',
			// If 'dismissable' is false, this message will be output at top of nag.
			'is_automatic' => false,
			// Automatically activate plugins after installation or not.
			'message' => '',
			// Message to output right before the plugins table.


			'strings' => array(
				'notice_can_install_required' => _n_noop(
				/* translators: 1: plugin name(s). */
					'Plugin Woobooking required two plugin: %1$s.',
					'Plugin Woobooking required two plugin: %1$s.',
					'theme-slug'
				),
				/* translators: %s: plugin name. * /
				'installing'                      => __( 'Installing Plugin: %s', 'theme-slug' ),
				/* translators: %s: plugin name. * /
				'updating'                        => __( 'Updating Plugin: %s', 'theme-slug' ),
				'oops'                            => __( 'Something went wrong with the plugin API.', 'theme-slug' ),
				'notice_can_install_required'     => _n_noop(
					/* translators: 1: plugin name(s). * /
					'This theme requires the following plugin: %1$s.',
					'This theme requires the following plugins: %1$s.',
					'theme-slug'
				),
				'notice_can_install_recommended'  => _n_noop(
					/* translators: 1: plugin name(s). * /
					'This theme recommends the following plugin: %1$s.',
					'This theme recommends the following plugins: %1$s.',
					'theme-slug'
				),
				'notice_ask_to_update'            => _n_noop(
					/* translators: 1: plugin name(s). * /
					'The following plugin needs to be updated to its latest version to ensure maximum compatibility with this theme: %1$s.',
					'The following plugins need to be updated to their latest version to ensure maximum compatibility with this theme: %1$s.',
					'theme-slug'
				),
				'notice_ask_to_update_maybe'      => _n_noop(
					/* translators: 1: plugin name(s). * /
					'There is an update available for: %1$s.',
					'There are updates available for the following plugins: %1$s.',
					'theme-slug'
				),
				'notice_can_activate_required'    => _n_noop(
					/* translators: 1: plugin name(s). * /
					'The following required plugin is currently inactive: %1$s.',
					'The following required plugins are currently inactive: %1$s.',
					'theme-slug'
				),
				'notice_can_activate_recommended' => _n_noop(
					/* translators: 1: plugin name(s). * /
					'The following recommended plugin is currently inactive: %1$s.',
					'The following recommended plugins are currently inactive: %1$s.',
					'theme-slug'
				),
				'install_link'                    => _n_noop(
					'Begin installing plugin',
					'Begin installing plugins',
					'theme-slug'
				),
				'update_link' 					  => _n_noop(
					'Begin updating plugin',
					'Begin updating plugins',
					'theme-slug'
				),
				'activate_link'                   => _n_noop(
					'Begin activating plugin',
					'Begin activating plugins',
					'theme-slug'
				),
				'return'                          => __( 'Return to Required Plugins Installer', 'theme-slug' ),
				'plugin_activated'                => __( 'Plugin activated successfully.', 'theme-slug' ),
				'activated_successfully'          => __( 'The following plugin was activated successfully:', 'theme-slug' ),
				/* translators: 1: plugin name. * /
				'plugin_already_active'           => __( 'No action taken. Plugin %1$s was already active.', 'theme-slug' ),
				/* translators: 1: plugin name. * /
				'plugin_needs_higher_version'     => __( 'Plugin not activated. A higher version of %s is needed for this theme. Please update the plugin.', 'theme-slug' ),
				/* translators: 1: dashboard link. * /
				'complete'                        => __( 'All plugins installed and activated successfully. %1$s', 'theme-slug' ),
				'dismiss'                         => __( 'Dismiss this notice', 'theme-slug' ),
				'notice_cannot_install_activate'  => __( 'There are one or more required or recommended plugins to install, update or activate.', 'theme-slug' ),
				'contact_admin'                   => __( 'Please contact the administrator of this site for help.', 'theme-slug' ),

				'nag_type'                        => '', // Determines admin notice type - can only be one of the typical WP notice classes, such as 'updated', 'update-nag', 'notice-warning', 'notice-info' or 'error'. Some of which may not work as expected in older WP versions.
				*/
			),

		);

		tgmpa($plugins, $config);
	}

	function woobooking_plugin_setup_menu()
	{
		$list_view_admin = self::get_list_view_for_woo_panel();
		$first_view = array_shift($list_view_admin);
		$first_view = (object)$first_view;
		$menu_slug = str_replace('_', '-', $first_view->menu_slug);
		$link_dashboard = "wb_dashboard";
		add_menu_page('Wpbookingpro', 'Wpbookingpro', 'manage_options', $link_dashboard, array($this, 'wpbookingpro_page'));
		foreach ($list_view_admin as $key => $view) {
			$view = (object)$view;
			add_submenu_page($link_dashboard, $view->label, $view->label, 'manage_options', $view->menu_slug,
				array($this, 'wpbookingpro_page'));
		}


	}

	function wpbookingpro_page()
	{
		$input = Factory::getInput();
		$page = $input->getString('page', '');
		if (!self::checkInstalled()) {
			self::goToPopupInstall();
		}
		Html::_('jquery.tooltip');
		Html::_('jquery.bootstrap');
		$root_url = self::get_root_url();
		$input = Factory::getInput();
		$data = $input->getData();
		$task = array_key_exists('task', $data) ? $data['task'] : null;
		$layout = array_key_exists('layout', $data) ? $data['layout'] : null;
		$layout = $layout ? $layout : "list";

		if ($task) {

			echo woobooking_controller::action_task();
		} else {
			$menu = self::get_true_menu_of_woo_booking($page);
			$file_controller_path = WOOBOOKING_PATH_COMPONENT . "/controllers/" . ucfirst($menu) . ".php";
			$file_controller_short_path = Utility::get_short_file_by_path($file_controller_path);
			if (file_exists($file_controller_path)) {
				require_once $file_controller_path;
				$class_name = ucfirst($menu) . "Controller";

				if (class_exists($class_name)) {
					$class_controller = new $class_name();
					echo $class_controller->view("$menu.$layout");
				} else {
					echo "Class $class_name not exit in file $file_controller_short_path, please create this class";
				}
			} else {

				echo "File controller not found,please create file $file_controller_short_path";
			}
		}
	}

	function woo_booking_block_type_settings_field($settings, $value)
	{
		ob_start();
		?>
        <div data-type="<?php esc_attr($settings['type']) ?>" class="woo-booking-block-edit-content">
            <div class="row">
                <div class="col-md-12">
                    <div class="block-content" style="text-align: center">
                        <svg version="1.1" id="L2" style="width: 100px;height: 100px;"
                             xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
                             y="0px"
                             viewBox="0 0 100 100" enable-background="new 0 0 100 100" xml:space="preserve">
<circle fill="none" stroke="#a00" stroke-width="4" stroke-miterlimit="10" cx="50" cy="50" r="48"/>
                            <line fill="none" stroke-linecap="round" stroke="#a00" stroke-width="4"
                                  stroke-miterlimit="10" x1="50" y1="50" x2="85" y2="50.5">
                                <animateTransform
                                        attributeName="transform"
                                        dur="2s"
                                        type="rotate"
                                        from="0 50 50"
                                        to="360 50 50"
                                        repeatCount="indefinite"/>
                            </line>
                            <line fill="none" stroke-linecap="round" stroke="#a00" stroke-width="4"
                                  stroke-miterlimit="10" x1="50" y1="50" x2="49.5" y2="74">
                                <animateTransform
                                        attributeName="transform"
                                        dur="15s"
                                        type="rotate"
                                        from="0 50 50"
                                        to="360 50 50"
                                        repeatCount="indefinite"/>
                            </line>
</svg>


                    </div>
                </div>
            </div>

            <input name="<?php echo esc_attr($settings["param_name"]) ?>"
                   class="wpb_vc_param_value wpb-textinput  <?php echo esc_attr($settings['param_name']) ?> <?php esc_attr($settings['type']) ?>_field"
                   type="hidden" value="<?php echo esc_attr($value) ?>"/>
            <script type="text/javascript">
                $('.woo-booking-block-edit-content').render_block_config({
                    id: "<?php echo $value ?>",
                    block_setting:<?php echo json_encode($settings) ?>
                });
            </script>
        </div>
		<?php
		return ob_get_clean();
	}


	function woopanel_dashboard_woobooking_frontend_shapeSpace_print_scripts()
	{
		$root_url = self::get_root_url();
		?>
        <script type="text/javascript">
            root_url = "<?php echo $root_url ?>";
            current_url = "<?php echo $root_url . 'sellercenter/' . $this->view ?>";
            root_url_plugin = "<?php echo $root_url ?>/wp-content/plugins/<?php render_content(PLUGIN_NAME); ?>/";
            api_task = "/wp-json/<?php echo self::$namespace . self::get_api_task() ?>";
        </script>
		<?php
	}

	function frontend_shapeSpace_print_scripts()
	{
		$root_url = self::get_root_url();
		?>
        <script type="text/javascript">
            root_url = "<?php echo $root_url ?>";
            root_url_plugin = "<?php echo $root_url ?>/wp-content/plugins/<?php render_content(PLUGIN_NAME); ?>/";
            api_task = "/wp-json/<?php echo self::$namespace . self::get_api_task() ?>";
        </script>
		<?php
	}

	function admin_wordpress_shapeSpace_print_scripts()
	{
		$root_url = self::get_root_url();
		?>
        <script type="text/javascript">
            root_url = "<?php echo $root_url ?>";
            current_url = "<?php echo $root_url ?>";
            root_url_plugin = "<?php echo $root_url ?>/wp-content/plugins/<?php render_content(PLUGIN_NAME); ?>/";
            api_task = "/wp-json/<?php echo self::$namespace . self::get_api_task() ?>";
        </script>
		<?php
	}

	protected static function get_list_layout_view_frontend()
	{
		$views_path = WOOBOOKING_PATH_COMPONENT_FRONT_END . "/views";

		$list_view = array();
		$folders = Folder::folders($views_path);


		foreach ($folders as $view) {
			$view_path = $views_path . "/$view";
			if (!Folder::exists($view_path . "/tmpl")) {
				continue;
			}
			$files = Folder::files($view_path . "/tmpl", ".xml");


			foreach ($files as $file) {
				if (strpos($file, "config_") === 0) {
					continue;
				}
				$xmlFile = pathinfo($file);
				$filename = $xmlFile['filename'];
				$file_path = $view_path . "/tmpl/$file";
				$title = "";
				$show_main_menu = true;
				$xml = simplexml_load_file($file_path);

				try {
					$title = (string)($xml->layout->attributes())['title'];
					$bool = (string)($xml->layout->attributes())['show_main_menu'];
					$show_main_menu = filter_var($bool, FILTER_VALIDATE_BOOLEAN);;
				} catch (Exception $e) {
					echo "please check file tructor xml";
					die;
				}
				$title = WoobookingText::_($title);
				if (!$title) {
					continue;
				}
				$list_view["$view-$filename"] = array(
					"title" => $title,
					"show_main_menu" => $show_main_menu
				);


			}
		}
		return $list_view;
	}

	protected static function get_list_layout_block_frontend()
	{
		$blocks_path = WOOBOOKING_PATH_ROOT . "/blocks";

		$list_block = array();
		$folders = Folder::folders($blocks_path);


		foreach ($folders as $block) {
			$block_path = $blocks_path . "/$block";
			$file_config_block = str_replace("block_", "", $block);
			$file = $block_path . "/$file_config_block.xml";
			if (!File::exists($file)) {
				continue;
			}
			$xml = simplexml_load_file($file);

			try {
				$title = (string)($xml->layout->attributes())['title'];
			} catch (Exception $e) {
				echo "please check file tructor xml";
				die;
			}
			$title = WoobookingText::_($title);
			$list_block["$file_config_block"] = array(
				"title" => $title
			);
		}
		return $list_block;
	}

	protected static function get_list_view_backend()
	{
		$views_path = WOOBOOKING_PATH_COMPONENT . "/views";
		$list_view = array();
		$folders = CMS\Filesystem\Folder::folders($views_path);
		foreach ($folders as $view) {
			$view_path = $views_path . "/$view";

			if (!Folder::exists($view_path . "/tmpl")) {
				continue;
			}
			$files = Folder::files($view_path . "/tmpl", ".xml");
			foreach ($files as $file) {

				$xmlFile = pathinfo($file);
				$filename = $xmlFile['filename'];
				$file_path = $view_path . "/tmpl/$file";
				$title = "";
				$xml = simplexml_load_file($file_path);
				try {
					$title = (string)($xml->layout->attributes())['title'];
				} catch (Exception $e) {
					echo "please check file tructor xml";
					die;
				}
				$title = WoobookingText::_($title);
				$list_view["$view-$filename"] = array(
					"title" => $title
				);


			}
		}
		return $list_view;
	}

	function shapeSpace_print_scripts()
	{
		$list_view = self::get_list_layout_view_frontend();
		$root_url = self::get_root_url();
		?>

        <script type="text/javascript">
            root_url = "<?php echo $root_url ?>";
            root_url_plugin = "<?php echo $root_url ?>/wp-content/plugins/<?php render_content(PLUGIN_NAME); ?>/";
            api_task = "/wp-json/<?php echo self::$namespace . self::get_api_task() ?>";
            list_view =<?php echo json_encode($list_view) ?>
        </script>

		<?php

	}

	function woo_booking_render_by_tag_func($atts, $content, $a_view)
	{

		$input = Factory::getInput();
		$page = $input->getString('page', self::$page_default);
		$type = null;
		if (is_array($atts) && $id = reset($atts)) {
			list($view, $layout) = explode("-", $page);
			echo woobooking_controller::display_block_app($id, "$view.$layout");
		} else {
			list($view, $layout) = explode("-", $page);
			echo woobooking_controller::view("$view.$layout");
		}
	}

	function goToPopupInstall()
	{
		$root_url = Factory::getRootUrl();
		$html = '<html><head>';
		$html .= '<meta http-equiv="content-type" content="text/html; charset=utf-8" />';
		$html .= '<script>document.location.href=' . json_encode(str_replace("'", '&apos;',
				$root_url . '/wp-booking-pro/?page=install-form')) . ';</script>';
		$html .= '</head><body></body></html>';
		echo $html;
	}

	function woo_booking_render_block_by_tag_func($atts, $content, $a_view)
	{
		if (!self::checkInstalled()) {
			self::goToPopupInstall();
		}
		require_once WOOBOOKING_PATH_COMPONENT_FRONT_END . "/controllers/Block.php";
		$input = Factory::getInput();
		if (is_array($atts) && $id = reset($atts)) {

			list($package, $block, $block_name) = explode("-", $a_view);
			echo BlockController::view_block_module($id, $block_name);
		}
		return false;
	}

	function your_name_integrateWithVC()
	{
		$list_view = self::get_list_layout_view_frontend();
		foreach ($list_view as $key => $value) {
			$a_key = self::$key_woo_booking . "-" . $key;
			vc_map(array(
				"name" => __($value['title'], "my-text-domain"),
				"base" => $a_key,
				"class" => "",
				'admin_enqueue_js' => array(plugins_url('render_block_config.js', __FILE__)),
				"category" => __("Woo Booking", "my-text-domain"),
				"params" => array(
					array(
						"type" => "woo_booking_block_type",
						"holder" => "div",
						"class" => "",
						"param_name" => $a_key,
						"value" => '',
					),
				)
			));

		}

		$list_layout_block = self::get_list_layout_block_frontend();
		foreach ($list_layout_block as $key => $value) {
			$a_key = self::$key_woo_booking . "-block-" . $key;
			vc_map(array(
				"name" => __("Block " . $value['title'], "my-text-domain"),
				"base" => $a_key,
				"class" => "",
				'admin_enqueue_js' => array(plugins_url('render_block_config.js', __FILE__)),
				"category" => __("Woo Booking block", "my-text-domain"),
				"params" => array(
					array(
						"type" => "woo_booking_block_type",
						"holder" => "div",
						"class" => "",
						"param_name" => $a_key,
						"value" => '',
					),
				)
			));

		}
	}


	function render_last_posts($attributes, $content)
	{
		$input = Factory::getInput();
		$open_source_client_id = $attributes['open_source_client_id'];
		$modelBlock = WoobookingModel::getInstance('block');
		$block = $modelBlock->getItem($open_source_client_id);
		$params = $block->params;

		$type = $block->type;
		$data_param = $params->toArray();
		foreach ($data_param as $key => $value) {
			$input->set($key, $value);
		}
		if (!$type) {

		} else {

			list($view, $layout) = explode("-", $type);
			echo woobooking_controller::view("$view.$layout");
		}


	}

	public static function pluginprefix_activation()
	{
		$list_page = WooBookingOnWordpress::get_list_layout_view_frontend();
		$key_woo_booking = self::$key_woo_booking;
		$key_page = "wp-booking-pro";
		$my_post = array(
			'post_name' => "$key_page",
			'post_title' => "Wp booking pro",
			'post_content' => "[$key_page]",
			'post_status' => "publish",
			'post_author' => get_current_user_id(),
			'post_type' => "page",
		);
		$page_check = get_page_by_path($key_page);
		if (!isset($page_check->ID)) {

			wp_insert_post($my_post, '');
		}
		return true;
	}

	public function add_nav_menu_meta_boxes()
	{
		add_meta_box(
			'wl_login_nav_link',
			__('Wp booking pro menu item'),
			array($this, 'nav_menu_link'),
			'page',
			'side',
			'low'
		);
	}

	public function nav_menu_link()
	{ ?>
		<?php
		$list_page = self::get_list_layout_view_frontend();
		$key_woo_booking = self::$key_woo_booking;
		?>
        <div id="posttype-wl-login">
            <div class="tabs-panel tabs-panel-active">
                <ul id="wishlist-login-checklist" class="categorychecklist form-no-clear">
					<?php foreach ($list_page as $key => $page) { ?>
                        <li>
                            <label class="menu-item-title">
                                <input type="checkbox" class="menu-item-checkbox"
                                       name="menu-item[-1][menu-item-object-id]"
                                       value="-1"> <?php echo $page['title'] ?>
                            </label>
                            <input type="hidden" class="menu-item-type" name="menu-item[-1][menu-item-type]"
                                   value="custom">
                            <input type="hidden" class="menu-item-title" name="menu-item[-1][menu-item-title]"
                                   value="<?php echo $page['title'] ?>">
                            <input type="hidden" class="menu-item-url" name="menu-item[-1][menu-item-url]"
                                   value="<?php bloginfo('wpurl'); ?>/<?php echo "wp-booking-pro/?page=$key_woo_booking-$key" ?>">
                        </li>
					<?php } ?>
                </ul>
            </div>
            <p class="button-controls">
        			<span class="list-controls">
        				<a href="/wordpress/wp-admin/nav-menus.php?page-tab=all&amp;selectall=1#posttype-page"
                           class="select-all">Select All</a>
        			</span>
                <span class="add-to-menu">
        				<input type="submit" class="button-secondary submit-add-to-menu right" value="Add to Menu"
                               name="add-post-type-menu-item" id="submit-posttype-wl-login">
        				<span class="spinner"></span>
        			</span>
            </p>
        </div>
	<?php }


	/**
	 * CALLBACK
	 *
	 * Render callback for the dynamic block.
	 *
	 * Instead of rendering from the block's save(), this callback will render the front-end
	 *
	 * @since    1.0.0
	 * @param $att Attributes from the JS block
	 * @return string Rendered HTML
	 */
	public function block_dynamic_render_cb($att)
	{
		// Coming from RichText, each line is an array's element
		$sum = $att['number1'][0] + $att['number2'][0];
		$html = "<h1>$sum</h1>";
		return $html;
	}


	public static function is_rest_api()
	{
		$request_uri = $_SERVER['REQUEST_URI'];
		if ((strpos($request_uri, 'wp-json/') !== false) || (strpos($request_uri, 'wc-ajax') !== false)) {
			return true;
		}
		return false;
	}

	function get_current_page()
	{
		$request_uri = $_SERVER['REQUEST_URI'];
		$view = "";
		$listMenu = self::getListMenuWooPanel();
		if (self::is_rest_api()) {
			foreach ($listMenu as $menu) {
				if (strpos($request_uri, self::$namespace . "/$menu") !== false) {
					$view = $menu;
					break;
				}
			}
		} else {
			foreach ($listMenu as $menu) {
				if (strpos($request_uri, 'sellercenter/' . $menu) !== false) {
					$view = $menu;
					break;
				}
			}
		}


		return $view;

	}


	public function woocommerce_after_single_product_summary()
	{

		$product = wc_get_product();
		$id = $product->get_id();
		$input = Factory::getInput();
		$app = Factory::getApplication();

		$file_controller_path = WOOBOOKING_PATH_COMPONENT . "/controllers/Booking.php";
		require_once $file_controller_path;
		$class_name = "BookingController";
		$class_controller = new $class_name();
		$input->set('open_source_link_id', $id);
		echo $class_controller->view("booking.training");

	}

	//TODO chú ý sửa cái này trước khi đẩy live
	public static function set_environments($list_environment)
	{
		self::$list_environment = $list_environment;
	}

	public function get_root_url()
	{
		$config = Factory::getConfig();
		$list_environment = self::$list_environment;

		$uri = Factory::getUri();
		$live_site = $config->get('live_site', "");
		$current_running = $uri->toString(array('scheme', 'user', 'pass', 'host', 'port', 'path'));

		$root_url = "";
		foreach ($list_environment as $environment) {
			if ($current_running == "http://demo9.cmsmart.net") {
				return $live_site;
			} elseif (strpos($current_running, $environment) !== false) {

				$root_url = $environment;
				break;
			}
		}
		return $root_url;
	}

	public static function get_api_task()
	{
		$prefix_link = self::get_prefix_link();
		$app = Factory::getApplication();
		if ($app->getClient() == 1) {
			return "/{$prefix_link}db_appointments/task";
		} else {
			return "/nbwoobooking/task";
		}

	}

	function woobooking_register_rest_route()
	{
		$view = self::get_current_page();
		//root/wp-json/woobooking_api/1.0/db_appointments/task //post
		register_rest_route(
			self::$namespace,
			self::get_api_task(),
			array(
				'methods' => 'POST',
				'callback' => array('woobooking_controller', 'ajax_action_task'),
			)
		);


		$listMenu = self::getListMenuWooPanel();
		foreach ($listMenu as $menu) {
			$menu = self::get_true_menu_of_woo_booking($menu);
			$file_api_path = WOOBOOKING_PATH_COMPONENT . "/api/Api{$menu}.php";
			if (file_exists($file_api_path)) {
				require_once $file_api_path;
				$class_name = "Api{$menu}";
				new $class_name();
			}

		}


	}

	//for woobooking admin
	function add_basic_script_and_style_front_end()
	{
		$app = Factory::getApplication();
		$doc = Factory::getDocument();
		//wp_enqueue_media();
		$doc->addScript('admin/nb_apps/nb_woobooking/assets/js/woo_booking_debug.js');
		HtmlFrontend::_('jquery.loading_js');
		$doc->addScript('resources/js/less/less.min.js');
		$doc->addScript('resources/js/autoNumeric/autoNumeric.js');
		$doc->addScript('resources/js/Bootstrap-Loading/src/waitingfor.js');

		HtmlFrontend::_('jquery.bootstrap');

		$doc->addScript('nb_apps/nb_woobooking/assets/js/main_script.js');
		$doc->addLessStyleSheet('nb_apps/nb_woobooking/assets/less/main_style.less');
		HtmlFrontend::_('jquery.fontawesome');
	}

	public static function get_list_view_for_woo_panel()
	{
		if (empty(static::$items_submenus)) {
			$list_menu_by_xml = self::get_list_view_xml();
			$confingModel = WoobookingModel::getInstance('config');
			$list_view = $confingModel->get_list_view_publish();
			$items_submenus = array();
			$index = 21;

			$config = Factory::getConfig();
			$environment = $config->get('environment', 'production');
			$list_environment = array(
				"production"
			);
			if ($environment == "development") {
				$list_environment[] = "development";
			}

			foreach ($list_menu_by_xml as $view) {

				if (in_array($view->environment, $list_environment) && ($view->is_system || in_array($view->menu_slug,
							$list_view))) {
					$items_submenus[] = array(
						'id' => self::$prefix_link . $view->id,
						'menu_slug' => self::$prefix_link . $view->menu_slug,
						'label' => $view->label,
						'page_title' => $view->page_title,
						'capability' => $view->capability,
						'icon' => $view->icon,
						"item_url" => $view->item_url,
						"environment" => $view->environment
					);

					$index++;
				}

			}
			self::$items_submenus = $items_submenus;
		}


		return self::$items_submenus;
	}


	//TODO sẽ phải định  nghĩ lại menu
	public static function getListMenuWooPanel()
	{
		$list_view_admin = self::get_list_view_for_woo_panel();


		$list_menu = array();
		foreach ($list_view_admin as $view) {
			$list_menu[] = $view['id'];
		}

		return $list_menu;
	}

	public function wp_hook_add_script_footer()
	{

		$doc = Factory::getDocument();
		$styleSheets = $doc->getStyleSheets();
		foreach ($styleSheets as $src => $attribs) {
			$random = random_int(100000, 900000);
			if (strpos($src, 'http') !== false) {
				wp_enqueue_style('woobooking-css-' . $random, $src);
			} else {
				wp_enqueue_style('woobooking-css-' . $random, plugins_url() . '/' . PLUGIN_NAME . '/' . $src);
			}
		}
		$lessStyleSheets = $doc->getLessStyleSheets();
		foreach ($lessStyleSheets as $src => $attribs) {
			ob_start();
			?>
            <link rel="stylesheet/less" type="text/css"
                  href="<?php echo plugins_url() . "/" . PLUGIN_NAME . "/" . $src ?>"/>
			<?php
			echo ob_get_clean();
		}
		$scripts = $doc->getScripts();


        foreach ($scripts as $src => $attribs) {


            $random = random_int(100000, 900000);
            $options = array();
            if (isset($attribs['selector']) && $attribs['selector'] != "")
                $options['selector'] = $attribs['selector'];
            if (isset($attribs['options']) && !empty($attribs['options']))
                $options = array_merge($options, (array)$attribs['options']);
            if (strpos($src, 'http') !== false) {
                wp_enqueue_script('woobooking-script-' . $random, $src, array('jquery'));

            } else {
                wp_enqueue_script('woobooking-script-' . $random, Factory::getRootUrlPlugin() . $src, array('jquery'));
            }
            if (!empty($options))
                wp_localize_script('woobooking-script-' . $random, 'wboptions', $options);
        }

        // Register the script


        wp_enqueue_script('my-script', Factory::getRootUrlPlugin() . 'resources/js/emtry.js');
        wp_localize_script('my-script', 'myScript', array(
            'pluginsUrl' => plugins_url(),
        ));

		$script = $doc->getScript();
		foreach ($script as $attribs => $content) {
			?>
            <script type="text/javascript">
				<?php echo $content ?>
            </script>
			<?php
		}

	}

	public function render_script_body_woopanel_content_by_endpoint()
	{

		$doc = Factory::getDocument();
		$styleSheets = $doc->getStyleSheets();
		foreach ($styleSheets as $src => $attribs) {
			$random = random_int(100000, 900000);
			if (strpos($src, 'http') !== false) {
				wp_enqueue_style('woobooking-css-' . $random, $src);
			} else {
				wp_enqueue_style('woobooking-css-' . $random, plugins_url() . '/' . PLUGIN_NAME . '/' . $src);
			}
		}

		$lessStyleSheets = $doc->getLessStyleSheets();
		foreach ($lessStyleSheets as $src => $attribs) {
			ob_start();
			?>
            <link rel="stylesheet/less" type="text/css"
                  href="<?php echo plugins_url() . "/" . PLUGIN_NAME . "/" . $src ?>"/>
			<?php
			echo ob_get_clean();
		}
		$scripts = $doc->getScripts();
		foreach ($scripts as $src => $attribs) {
			$random = random_int(100000, 900000);
			if (strpos($src, 'http') !== false) {
				echo '<script type="text/javascript" src="' . $src . '"></script>';
			} else {
				echo '<script type="text/javascript" src="' . Factory::getRootUrlPlugin() . $src . '"></script>';
			}
		}


		$script = $doc->getScript();
		foreach ($script as $attribs => $content) {
			?>
            <script type="text/javascript">
				<?php echo $content ?>
            </script>
			<?php
		}

	}


	//Hiển thị các page my-plugin1
	function add_plus_menu_woopanel($arr_query)
	{

		$arr_query_new = self::getListMenuWooPanel();

		$arr_query = array_merge($arr_query, $arr_query_new);

		return $arr_query;
	}

	public static $list_menu_by_xml = array();

	public static function get_list_view_xml()
	{

		if (empty(self::$list_menu_by_xml)) {
			$file_xml_path_app = WOOBOOKING_PATH_ADMIN_COMPONENT1 . "/views.xml";
			$xml = simplexml_load_file($file_xml_path_app);


			$list_menu_by_xml = array();
			foreach ($xml->view as $view) {
				$environment = (string)($view->attributes())['environment'];
				if (!$environment) {
					$environment = "production";
				}
				$list_menu_by_xml[] = (object)array(
					'id' => (string)($view->attributes())['id'],
					'menu_slug' => (string)($view->attributes())['menu_slug'],
					'label' => (string)($view->attributes())['label'],
					'page_title' => (string)($view->attributes())['page_title'],
					'capability' => (string)($view->attributes())['capability'],
					'icon' => (string)($view->attributes())['icon'],
					'class' => (string)($view->attributes())['class'],
					'is_system' => (boolean)($view->attributes())['is_system'],
					'item_url' => (string)($view->attributes())['item_url'],
					'environment' => $environment

				);


			}
			self::$list_menu_by_xml = $list_menu_by_xml;
		}
		return self::$list_menu_by_xml;
	}

	function woobooking_add_plus_navigation_items($output_menus)
	{
		global $woopanel_submenus;
		$list_item = array();
		foreach ($output_menus as $item) {
			$list_item[] = $item;
		}
		$output_menus = $list_item;
		$woopanel_submenus[self::$prefix_link . 'db_appointments'] = self::get_list_view_for_woo_panel();
		$db_appointments = array(
			'id' => self::$prefix_link . 'db_appointments',
			'menu_slug' => self::$prefix_link . 'db_appointments',
			'menu_title' => __('Wp booking pro'),
			'capability' => '',
			'page_title' => '',
			'icon' => 'flaticon-line-graph',
			'classes' => '',
			'submenu' => $woopanel_submenus[self::$prefix_link . 'db_appointments']
		);
		$list = array();
		foreach ($list_item as $index => $item) {
			if ($index == 1) {
				$list[] = $db_appointments;
				$list[] = $item;
			} else {
				$list[] = $item;
			}
		}
		return $list;

	}
}
