package com.abhisheksamuely.gcp.gke.controller;

import java.util.Calendar;
import java.text.SimpleDateFormat;  
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GKEController {

	@GetMapping("/message")
	public String message() {
		Calendar calndr = Calendar.getInstance();
		calndr.setTimeInMillis(System.currentTimeMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("dd:MM:yy HH:mm:ss");
		
		System.out.println("application hit at "+sdf.format(calndr.getTime()));
		
		return "application hit at "+sdf.format(calndr.getTime());
	}
}