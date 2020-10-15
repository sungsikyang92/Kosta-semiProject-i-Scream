package org.project.controller;

public class HandlerMapping {
	private static HandlerMapping instance=new HandlerMapping();
	private HandlerMapping() {}
	public static HandlerMapping getInstance() {
		return instance;
	}
	public Controller create(String command) {
		Controller controller=null;
		if(command.contentEquals("login")) {
			controller=new LoginController();
		}else if(command.equals("addBBS"))
			controller = new AddBBSController();
		else if(command.contentEquals("logout")) {
			controller=new LogoutController();
		}else if(command.contentEquals("register")) {
			controller=new RegisterController();
		}else if(command.contentEquals("home")) {
			controller=new HomeController();
		}else if(command.contentEquals("registerForm")) {
			controller=new RegisterFormController();
		}else if(command.contentEquals("registerResult")) {
			controller=new RegisterResultController();
		}else if(command.contentEquals("idcheck")) {
			controller=new IdCheckController();
		}else if(command.equals("getPostList")) {
			controller = new getPostListController();
		}else if(command.equals("UpdatePost")) {
			controller=new UpdatePostController();
		}else if(command.contentEquals("DeletePost")) {
			controller=new DeletePostController();
		}
		return controller; 
	}
}






















