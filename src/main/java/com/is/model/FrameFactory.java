package com.is.model;

public class FrameFactory {

	public Frame createFrame(String type){
		
		if(type.equals("FullSuspension"))
			return new FullSuspensionFrame();
		else 
			return new Frame(); 
		
	}		
	
}
