package com.abhisheksamuely.gcp.gke.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GKEController {
	
	@GetMapping("/message")
	public String message() {
		Calendar calndr = Calendar.getInstance();
		calndr.setTimeInMillis(System.currentTimeMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("dd:MM:yy HH:mm:ss");
		
		String instanceId = com.google.cloud.MetadataConfig.getInstanceId();
		
		return "application hit at "+sdf.format(calndr.getTime())+" instance: "+instanceId.indexOf(0, 16);
	}
}
