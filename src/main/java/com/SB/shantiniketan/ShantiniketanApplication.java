package com.SB.shantiniketan;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.server.servlet.context.ServletComponentScan;

@SpringBootApplication
@ServletComponentScan
public class ShantiniketanApplication {

	public static void main(String[] args) {
		SpringApplication.run(ShantiniketanApplication.class, args);
	}

}
