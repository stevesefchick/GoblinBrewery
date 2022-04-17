/// @description Start of room variables
roomWidth = room_width;
roomHeight = room_height;
cellSize=64;

//debug, add a bunch of workers
CreateWorker(800,550);
CreateWorker(850,550);
CreateWorker(900,500);
CreateWorker(950,600);

//debug, add some tables
PlaceFurniture(640+32,640+32,"table");
PlaceFurniture(960+32,640+32,"table");
PlaceFurniture(640+32,960+32,"table");

//debug, add a bunch of trash
CreateTrash(700,500);



show_debug_message("room start game helper code is running");