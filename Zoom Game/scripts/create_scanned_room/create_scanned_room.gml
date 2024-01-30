///  @function script_create_scanned_room(ds_list, [x-offset], [y-offset])
///    @arg    {real}    ds_list        A list of ds_map objects with info about the object in a room
///    @arg    {real}    *xOffset    Optional x amount to offset this set of objects
///    @arg    {real}    *yOffset    Optional y amount to offset this set of objects


/*
*    This script relies upon having layers
*    with the correct names in your room
*/
/*var dataList = argument[0];
var offX = 0;
var offY = 0;
if(argument_count>1) offX = argument[1];
if(argument_count>2) offY = argument[2];

var L = ds_list_size(dataList);
for(var i=0;i<L;i++){
    var data = dataList[|i];
    var o = instance_create_layer(data[?"x"]+offX, data[?"y"]+offY, data[?"layer"], data[?"object_index"]);
    o.image_xscale = data[?"image_xscale"];
    o.image_yscale = data[?"image_yscale"];
}

*/