// var ScatterCount

for (var i = 0; i < ScatterCount; i += 1) {
    var randomXPos = x + random_range(0 + sprite_width + 5, room_width - sprite_width - 5);
    var randomYPos = y + random_range(0 + sprite_height + 5, room_height - sprite_height - 5);

    instance_create_layer(randomXPos, randomYPos, layer_get_name(layer), ScatterObject);
}