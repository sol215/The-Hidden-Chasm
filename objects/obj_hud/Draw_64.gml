var display_text=string(global.items_collected)+"/"+string(global.total_items_needed)
draw_text(20, 20, "Coins: " + display_text)
if(global.portal_open){
	draw_text(20, 40, "The portal is open!")}