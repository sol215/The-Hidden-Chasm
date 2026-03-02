var key_left=keyboard_check(ord("A"));
var key_right=keyboard_check(ord("D"));
var key_jump=keyboard_check_pressed(vk_space);
var move=key_right - key_left;
hsp=move * move_speed;
vsp+=grav;
if(place_meeting(x, y+1, oGround) && key_jump){
	vsp=jump_speed;
	}
if(place_meeting(x + hsp, y, oGround)){
	while(!place_meeting(x + sign(hsp), y,oGround)){
		x+=sign(hsp);
		}
hsp=0;
}
x+=hsp;
if(place_meeting(x, y + vsp, oGround)){
	while(!place_meeting(x, y +sign(vsp), oGround)){
		y+=sign(vsp)}
		vsp=0;}
y+=vsp;	
if(hsp !=0) image_xscale=sign(hsp);

var _moving=false
if(keyboard_check(ord("D"))){
	x+=4
	image_xscale=1
	_moving=true}
else if(keyboard_check(ord("A"))){
	x-=4
	image_xscale=-1
	_moving=true}
if(_moving){
	sprite_index=sRub_player
	image_speed=1}
else {sprite_index=sidle_player
	image_speed=.5}

if (can_move == true) {
    // AICI pui codul tău existent pentru mers (ex: x += hspeed, etc.)
    
    // Verifică dacă ești aproape de groapă (obj_hole)
    if (distance_to_object(oPortal1) < 20 && !show_hole_message) {
        can_move = false;       // Oprește jucătorul
        show_hole_message = true; // Activează mesajul
        speed = 0;              // Forțează oprirea dacă folosești viteza încorporată
    }
}

// Apasă SPACE pentru a închide mesajul și a sări în groapă
if (show_hole_message && keyboard_check_pressed(vk_space)) {
    room_goto(Room1); // Te trimite în nivelul următor
}	


var _speed = 4;
var _h_input = keyboard_check(ord("D")) - keyboard_check(ord("A"));


