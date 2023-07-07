package net.suncaper.weibo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication

public class WeiboApplication {
	public static void main(String[] args) {
		SpringApplication.run(WeiboApplication.class, args);
	}
}
