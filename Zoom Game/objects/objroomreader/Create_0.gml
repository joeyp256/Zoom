global.roomData = ds_list_create();

with(all)
{
	var obj = ds_map_create();
	obj[?"object index"] =object_index;
	obj[?"x"] = x;
	obj[?"y"] = y;
	obj[?"image_xscale"] = image_xscale;
	obj[?"image_yscale"] = image_yscale;
	obj[?"layer"] = layer_get_name;
	ds_list_add(global.roomData, obj);
	ds_list_mark_as_map(global.roomData,ds_list_size(global.roomData)-1);
}