<?php
class ControllerExtensionModuleSend extends Controller {
	public function index() {
		$mail = new Mail();
		$mail->protocol = $this->config->get('config_mail_protocol');
		$mail->parameter = $this->config->get('config_mail_parameter');
		$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
		$mail->smtp_username = $this->config->get('config_mail_smtp_username');
		$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
		$mail->smtp_port = $this->config->get('config_mail_smtp_port');
		$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
		if ($this->request->post['subject'] == 'exclusive') {
			$subject = "Эксклюзивный букет";
			$message = '
			Имя: <b>'.$this->request->post['user-name'].'</b><br> 
			Телефон: <b>'.$this->request->post['user-phone'].'</b><br> 
			';
		} elseif ($this->request->post['subject'] == 'callback') {
			$subject = "Заказ обратного звонка";
			$message = '
			Имя: <b>'.$this->request->post['user-name'].'</b><br> 
			Телефон: <b>'.$this->request->post['user-phone'].'</b><br> 
			';
		} elseif ($this->request->post['subject'] == 'review') {
			$subject = "Новый отзыв";
			$message = '
			Имя: <b>'.$this->request->post['user-name'].'</b><br> 
			Телефон: <b>'.$this->request->post['user-phone'].'</b><br> 
			Отзыв: <br>'.$this->request->post['message'].'
			';
		} elseif ($this->request->post['subject'] == 'byoneclick') {
			$subject = "Заказ в один клик";
			$message = '
			Имя: <b>'.$this->request->post['user-name'].'</b><br> 
			Телефон: <b>'.$this->request->post['user-phone'].'</b><br> 
			Товар: <a href="'.$this->request->post['link'].'">'.$this->request->post['name'].'</a>
			';
		}

		$mail->setTo($this->config->get('config_email'));
		$mail->setFrom($this->config->get('config_email'));
		$mail->setSender(html_entity_decode('Обратная связь "#Правдацветы"', ENT_QUOTES, 'UTF-8'));
		$mail->setSubject(html_entity_decode('Заказ звонка', ENT_QUOTES, 'UTF-8'));
		$mail->setText($message);
		$mail->send();
	}
}
