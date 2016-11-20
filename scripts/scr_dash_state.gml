
d = global.dir
if (instance_exists(obj_player)){
    //player_x = obj_player.phy_position_x;
    //player_y = obj_player.phy_position_y;
    
    // check if you are against the wall
    /*
    if (position_meeting(obj_player.phy_position_x, obj_player.phy_position_y, obj_block_wall))
    {
        obj_player.phy_position_x = obj_player.phy_position_x;
    }   
    */
    // dash
    
    
    if (obj_player.sprite_index == spr_female_right and !place_meeting(
    obj_player.phy_position_x + 240, obj_player.phy_position_y, obj_block_wall))
    {
        obj_player.phy_position_x += 240;
    }   
    if (obj_player.sprite_index == spr_female_left and !place_meeting(
    obj_player.phy_position_x - 240, obj_player.phy_position_y, obj_block_wall))
    {
        obj_player.phy_position_x -= 240;
       
        
    }   
    if (obj_player.sprite_index == spr_female_up and !place_meeting(
    obj_player.phy_position_x, obj_player.phy_position_y - 240, obj_block_wall))
    {
        obj_player.phy_position_y -= 240;
    }   
    if (obj_player.sprite_index == spr_female_down and !place_meeting(
    obj_player.phy_position_x, obj_player.phy_position_y + 240, obj_block_wall))
    {
        obj_player.phy_position_y += 240;
    }
 
    

   if (instance_exists(obj_trap)){
        trap_position_x = obj_trap.phy_position_x;
        trap_position_y = obj_trap.phy_position_y;
        
        
        safe_position_x1 = obj_trap.phy_position_x - 45;
        safe_position_x2 = obj_trap.phy_position_x + 45;
        safe_position_y1 = obj_trap.phy_position_y - 45;
        safe_position_y2 = obj_trap.phy_position_y + 45;
        //safe_position_y = obj_trap.y + 50
        if (obj_player.phy_position_x < safe_position_x2 and obj_player.phy_position_x > safe_position_x1)
        and  (obj_player.phy_position_y > safe_position_y1 and obj_player.phy_position_y < safe_position_y2)
        {
            
            with (obj_player)
            {
                instance_destroy();
            }
            /*with (obj_dash)
            {
                instance_destroy();
            }*/
            room_restart();
            instance_create(420, 480, obj_player);
            obj_player.visible = true;
            //player_x = 420;
            //player_y = 480;
        }
    }
   obj_player.state = scr_move_state; 
   
   var dash = instance_create(obj_player.phy_position_x, obj_player.phy_position_y, obj_dash_effect);
   
   //obj_player.sprite_index = obj_player.sprite_index;
   
   

}

