var touch = argument0; // touch device number. DO NOT MODIFY. Internal variable
var touch_x = argument1; // DO NOT MODIFY. Internal variable.
var touch_y = argument2; // DO NOT MODIFY. Internal variable.
    
// Write your own routine from here
touch_previous_x = touch_x;
touch_previous_y = touch_y;
    
//obj_example.sprite_index = spr_2;


if (instance_exists(obj_attack))
{
    //x = obj_attack.x;
    
    if point_in_rectangle(touch_previous_x, touch_previous_y, 
    obj_attack.x - 85, obj_attack.y - 85, 
    obj_attack.x + 85, obj_attack.y + 85)
    {
        // attack button is pressed
        obj_player.act = true
        script_execute(scr_attack_state);
        //state = scr_move_state;
        audio_play_sound(snd_sword_swing, 10, false);
        
    }
    

}

if (instance_exists(obj_dash))
{
    //x = obj_attack.x;
    
    if point_in_rectangle(touch_previous_x, touch_previous_y, 
    obj_dash.x - 85, obj_dash.y - 85, 
    obj_dash.x + 85, obj_dash.y + 85)
    {
       if(instance_exists(obj_player))
       {
            obj_player.state = scr_dash_state;
            script_execute(obj_player.state);
            audio_play_sound(snd_dash_sound, 10, false);
       }
        
    }
    

}

