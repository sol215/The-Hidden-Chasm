global.items_collected+=1
if(global.items_collected>=global.total_items_needed){
	global.portal_open=true}
instance_destroy();	