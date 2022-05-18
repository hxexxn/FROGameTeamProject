package com.frogame.www.model;

import java.util.Base64;

import lombok.Data;

@Data
public class ImgDTO {
	private int game_no;
	private byte[] file;
	
	public String getImage() {
		return "data:image/;base64," + new String(Base64.getEncoder().encodeToString(file)); 
	}

}

