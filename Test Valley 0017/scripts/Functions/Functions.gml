/// Global Variables
global.visible_views = 0;
global.menu_1_active = 0;
global.player1_control = "";
global.player1_ingame = 0;

/// Debug Print Function. Loops through each argurment appending them to string "abcect" 
/// fun_print(a,b,c,ect) example use print("Player HP: ", hp, ". Player Shields ", shields);
function fun_print(){

	var _final_text = "";

	for (var _i = 0; _i < argument_count; _i += 1) {
		if (is_string(argument[_i])) {
			_final_text += argument[_i];
		} else {
       
	   _final_text += string(argument[_i]);
   }
}

show_debug_message(_final_text);

}

/// Input Function for wasd directioncal control.
/// _mspeed = pixels to move per step.
function fun_input_wasd(_mspeed = 2){
	if (keyboard_check(ord("W")) && place_free(x,y-_mspeed)){ y-=_mspeed;global.player1_dir = 1;}
	if (keyboard_check(ord("A")) && place_free(x-_mspeed,y)){ x-=_mspeed;global.player1_dir = 2;}
	if (keyboard_check(ord("S")) && place_free(x,y+_mspeed)){ y+=_mspeed;global.player1_dir = 3;}
	if (keyboard_check(ord("D")) && place_free(x+_mspeed,y)){ x+=_mspeed;global.player1_dir = 0;}
}

/// Input Function for arrow directioncal control
/// _mspeed = pixels to move per step.
function fun_input_arrows(_mspeed = 2){
	if (keyboard_check(vk_up)    && place_free(x,y-_mspeed)){ y-=_mspeed;global.player2_dir = 1;}
	if (keyboard_check(vk_left)  && place_free(x-_mspeed,y)){ x-=_mspeed;global.player2_dir = 2;}
	if (keyboard_check(vk_down)  && place_free(x,y+_mspeed)){ y+=_mspeed;global.player2_dir = 3;}
	if (keyboard_check(vk_right) && place_free(x+_mspeed,y)){ x+=_mspeed;global.player2_dir = 0;}
}


/// Sets which view ports are visible.
function fun_set_views(){
	// Set all but viewport 0 to invisible
	view_set_visible(1, 0);
	view_set_visible(2, 0);
	view_set_visible(3, 0);
	
	// Loop through number of players setting a viewport visible for each one.
	for (var _i = 0; _i < global.current_players; _i+=1){
	
		view_set_visible(_i, 1); fun_print("View ", _i, "Set as Visible");
	
	}
	

}


/// Draws the sprite for split screen and sets the frame
function fun_draw_guiframe(){
	//if(global.current_players==0){draw_sprite(spr_gui_frame, global.current_players, 0, 0);return;}
	//draw_sprite(spr_gui_frame, global.current_players-1, 0, 0);
	draw_sprite(spr_gui_frame, global.visible_views, 0, 0);
	}



/// Initializes a newly created Enity. Typical Args (iv_cur_look)
function fun_init_entity(_cur_look = "spirit",_scalex =1,_scaley = 1,_state = "coma"){	
	self.sprite_index = _cur_look;
	image_xscale = _scalex;
	image_yscale = _scaley;
	if(_state == "controlled"){fun_player_cam(self.iv_controlling_player, self.id,400,225,800,450);}
}


function fun_set_view_size(_cam,_id,_type,_view = 0,_xbor = 800, _ybor = 450){
	if(view_visible[3]){
		for (var _i = 0; _i < 4; _i+=0){
			view_set_wport(_i,800);
			view_set_hport(_i,450);
			fun_print(" View ",_i," Width ",view_get_wport(_i), " Height ", view_get_hport(_i));
			if(_i=3){global.visible_views = 3;
				camera_set_view_size(view_camera[_i],1600,900);
				camera_set_view_border(view_camera[_i],_xbor,_ybor); fun_print("Cam ",_i," border set to ", _xbor," x ",_ybor);
				camera_set_view_target(view_camera[_i],_id); fun_print("camera ",_i," following ",_type," ",_id);
				return;
			}else{_i+=1;}
		}
	}
	else if(view_visible[2]){
		for (var _i = 0; _i < 3; _i+=0){
			view_set_wport(_i,800);
			view_set_hport(_i,450);
			fun_print(" View ",_i," Width ",view_get_wport(_i), " Height ", view_get_hport(_i));
			if(_i=2){global.visible_views = 3;
				camera_set_view_size(view_camera[_cam],1600,900);
				camera_set_view_border(view_camera[_cam],_xbor,_ybor); fun_print("Cam ",_cam," border set to ", _xbor," x ",_ybor);
				camera_set_view_target(view_camera[_cam],_id); fun_print("camera ",_cam," following ",_type," ",_id);
				view_set_camera(_view,view_camera[_cam]); fun_print("Viewport ",_view,"  set for camera ",_cam);
				return;
			}else{_i+=1;}
		}
	}
	else if(view_visible[1]){
		for (var _i = 0; _i < 2; _i+=0){
			view_set_wport(_i,800);
			view_set_hport(_i,900);
			fun_print(" View ",_i," Width ",view_get_wport(_i), " Height ", view_get_hport(_i));
			if(_i=1){global.visible_views = 2;
				camera_set_view_size(view_camera[_cam],1600,900);
				camera_set_view_border(view_camera[_cam],_xbor,_ybor); fun_print("Cam ",_cam," border set to ", _xbor," x ",_ybor);
				camera_set_view_target(view_camera[_cam],_id); fun_print("camera ",_cam," following ",_type," ",_id);
				view_set_camera(_view,view_camera[_cam]); fun_print("Viewport ",_view,"  set for camera ",_cam);
				return;
			}else{_i+=1;}
		}
	}
	else if(view_visible[0]){
		for (var _i = 0; _i < 1; _i+=0){
			view_set_wport(_i,1600);
			view_set_hport(_i,900);
			fun_print(" View ",_i," Width ",view_get_wport(_i), " Height ", view_get_hport(_i));
			if(_i=0){global.visible_views = 1;
				camera_set_view_size(view_camera[_cam],1600,900);
				camera_set_view_border(view_camera[_cam],_xbor,_ybor); fun_print("Cam ",_cam," border set to ", _xbor," x ",_ybor);
				camera_set_view_target(view_camera[_cam],_id); fun_print("camera ",_cam," following ",_type," ",_id);
				view_set_camera(_view,view_camera[_cam]); fun_print("Viewport ",_view,"  set for camera ",_cam);
				return;
			}else{_i+=1;}
		}
	}
}

function fun_camera_follow(_cam,_id,_type,_view = 0,_xbor = 800, _ybor = 450){
	if(!view_visible[_view]){view_visible[_view]=true; fun_print("View ",_view," now visible");}else{fun_print("View ",_view," already visible");}
	fun_set_view_size(_cam,_id,_type,_view,_xbor,_ybor);
}


function fun_check_cam_targets(){
	if(!instance_exists(obj_cam_target)){
		instance_create_layer(800,1350,"instances_bg",obj_cam_target,{cam:0});fun_print("No Cam Target Found. Creating Cam Target 0");
		global.menu_1_active = 1;
		}
	
}

function fun_draw_menu(prompt){
	
	draw_text_transformed(100, 125, prompt,2,2,0);
	if(global.player1_ingame == 0){
		instance_create_layer(75,1050,"instances",obj_entity_master,{iv_state:"creation",iv_scalex:2,iv_scaley:2,iv_controlling_player:1});
	}
}