///Player attack


d = global.dir
if (instance_exists(obj_player)){
    xx = 0;
    yy = 0;

    if (obj_player.sprite_index == spr_female_right)
    {
        obj_player.sprite_index = spr_female_attack_right
    }   
    if (obj_player.sprite_index == spr_female_left)
    {
        obj_player.sprite_index = spr_female_attack_left
    }
    if (obj_player.sprite_index == spr_female_up)
    {
        obj_player.sprite_index = spr_female_attack_up
    }
    if (obj_player.sprite_index == spr_female_down)
    {
        obj_player.sprite_index = spr_female_attack_down
    }           
   
    
    player_x = obj_player.x;
    player_y = obj_player.y;
    
    xx = player_x;
    yy = player_y;
    
    var dir = point_direction(other.x, other.y, obj_player.x,obj_player.y);
    var x_dir = lengthdir_x(1, global.dir);
    var y_dir = lengthdir_y(1, global.dir);
    
    var damage = instance_create(xx+x_dir, yy+y_dir, obj_damage);
    damage.creator = obj_player.id;
    damage.damage = 1;
}

