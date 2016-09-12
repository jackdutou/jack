<?php
class ControllerIndexIndex extends Controller {
	public function index() {
        $this->load->language('index/index');
        $this->document->setTitle($this->language->get('title'));

        $data = array();
        $data['header'] = $this->load->controller('common/header');
        $data['content'] = $this->load->controller('common/content');
        $data['footer'] = $this->load->controller('common/footer');

        $data['configTemplate'] = $this->config->get('config_template');//模板目录名称

        $this->load->model('design/banner');


		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/index/index.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/index/index.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/index/index.tpl', $data));
		}
	}
}