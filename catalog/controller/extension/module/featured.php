<?php
class ControllerExtensionModuleFeatured extends Controller {
	public function index($setting) {
		$this->load->language('extension/module/featured');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		$data['products'] = array();

		if (!$setting['limit']) {
			$setting['limit'] = 4;
		}
		$data['name'] = $setting['name'];
		$data['class'] = $setting['class'];

		if ($data['class'] == 'mono') {
			$data['btnclass'] = 's-link__btn--white';
		} else {
			$data['btnclass'] = '';
		}
		if (!empty($setting['product'])) {
			$products = array_slice($setting['product'], 0, (int)$setting['limit']);

			foreach ($products as $product_id) {
				$product_info = $this->model_catalog_product->getProduct($product_id);
				 
				$result['stock'] = $product_info['quantity'];
				if ($product_info) {
					if ($product_info['image']) {
						$image = '/image/'.$product_info['image'];
					} else {
						$image = '/image/placeholder.png';
					}

					if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
						$price = $product_info['price'];
					} else {
						$price = false;
					}

					if ((float)$product_info['special']) {
						$special = $product_info['special'];
						$percents = $this->sale_percent($product_info['price'], $product_info['special']);
					} else {
						$special = false;
						$percents = false;
					}

					if ($this->config->get('config_tax')) {
						$tax = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price'], $this->session->data['currency']);
					} else {
						$tax = false;
					}

					if ($this->config->get('config_review_status')) {
						$rating = $product_info['rating'];
					} else {
						$rating = false;
					}
					$options = array(); 
					foreach ($this->model_catalog_product->getProductOptions($product_id) as $option) {
						$product_option_value_data = array();

						foreach ($option['product_option_value'] as $option_value) {
							if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {
								if ((($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) && (float)$option_value['price']) {
									$price = $this->currency->format($this->tax->calculate($option_value['price'], $product_info['tax_class_id'], $this->config->get('config_tax') ? 'P' : false), $this->session->data['currency']);
								} else {
									$price = false;
								}

								$product_option_value_data[] = array(
									'product_option_value_id' => $option_value['product_option_value_id'],
									'option_value_id'         => $option_value['option_value_id'],
									'name'                    => $option_value['name'],
									'image'                   => $this->model_tool_image->resize($option_value['image'], 50, 50),
									'price'                   => $price,
									'price_prefix'            => $option_value['price_prefix']
								);
							}
						}

						$options = array(
							'product_option_id'    => $option['product_option_id'],
							'product_option_value' => $product_option_value_data,
							'option_id'            => $option['option_id'],
							'name'                 => $option['name'],
							'type'                 => $option['type'],
							'value'                => $option['value'],
							'required'             => $option['required']
						);
					}
					if ($product_info['badge'] != '') {
						$badge = $product_info['badge'];
					} else {
						$badge = false;
					}
					$data['products'][] = array(
						'product_id'  => $product_info['product_id'],
						'thumb'       => $image,
						'name'        => $product_info['name'],
						'description' => utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
						'price'       => $price,
						'special'     => $special,
						'tax'         => $tax,
						'rating'      => $rating,
						'href'        => $this->url->link('product/product', 'product_id=' . $product_info['product_id']),
						'options' => array($options),
						'badge' => $badge,
						'percents' => $percents,
						'stock' => $product_info['quantity']
					);
				}
			}
		}
		if ($data['class'] == 'mono') {
			$data['category_link'] = '/monobukety';
		} elseif ($data['class'] == 'compositions') {
			$data['category_link'] = '/kompozicii-i-korziny';
		} else {
			$data['category_link'] = '/bukety';
		}
		if ($data['products']) {
			return $this->load->view('extension/module/featured', $data);
		}
	}

	function sale_percent($price, $sale) {
		return round((($price - $sale) * 100) / $price, 0);
	}
}