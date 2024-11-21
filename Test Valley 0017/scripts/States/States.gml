/// Placeholder Function for wandering behaivor, does not handle collisions.
function state_speed_based_random_wandering(_spd){
	self.speed = _spd;

	if (irandom_range(1,100) == 100){self.direction = random(360);}

	if (self.direction < 46){if(self.image_index < 8){self.image_index = 8;}}
	if (self.direction < 46){if(self.image_index > 11){self.image_index = 8;}}
	if (self.direction > 314){if(self.image_index < 8){self.image_index = 8;}}
	if (self.direction > 314){if(self.image_index > 11){self.image_index = 8;}}

	if (self.direction > 45 && self.direction < 136){if(self.image_index < 12){self.image_index = 12;}}
	//if (self.direction > 45 && self.direction < 136){if(self.image_index > 15){self.image_index = 12}}

	if (self.direction > 135 && self.direction < 225){if(self.image_index < 4){self.image_index = 4;}}
	if (self.direction > 135 && self.direction < 225){if(self.image_index > 7){self.image_index = 4;}}

	//if (self.direction > 224 && self.direction < 315){if(self.image_index < 0){self.image_index = 0}}
	if (self.direction > 224 && self.direction < 315){if(self.image_index > 4){self.image_index = 0;}}


}

/// Exits State Function.
function state_coma(){return "comatose";}
function state_idle(){return "idle";}

function state_creation(player){
		if(global.player1_ingame==0){obj_gui_controller.gui_prompt="Press Enter for Player 1"}
		if(player==1 && keyboard_check_released(vk_enter)){
			global.player1_ingame = 0.5;
			obj_gui_controller.gui_prompt = "Select Body Type.";
			fun_print("entity ready");
			// why is this firing a lot
			
		}
				
	}








/// Execute State Behaivor.
function state_exec(_state){
	
	if(_state == "coma"){state_coma();}
	if(_state == "sp_wander"){state_speed_based_random_wandering(0.2);}
	if(_state == "controlled"){
		//fun_player_cam(self.iv_controlling_player, self.id,400,225,800,450);	
		if(self.iv_controlling_player == 1){fun_input_wasd(2);}
		if(self.iv_controlling_player == 2){fun_input_arrows(2);}
	}
	if(_state == "creation"){state_creation(iv_controlling_player);}
	

}
