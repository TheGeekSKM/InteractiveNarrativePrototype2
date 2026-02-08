if (array_length(activeLines) <= 0) return;

for (var i = 0; i < array_length(activeLines); i += 1)
{
    var inst = activeLines[i];

    if (inst.scribbleElement == undefined ||
        inst.scribbleTypist == undefined ||
        !instance_exists(inst.speaker))
    {
        continue;
    }

    var drawX = inst.speaker.x + inst.speakerOffsetPos[0];
    var drawY = inst.speaker.y + inst.speakerOffsetPos[1];

    var textWidth = inst.scribbleElement.get_bbox(drawX, drawY).width;
    var textHeight = inst.scribbleElement.get_bbox(drawX, drawY).height;

    draw_sprite_ext(spr_pixel, 0, drawX - textWidth / 2 - 10, drawY - textHeight - 10, 
        textWidth + 20, 
        textHeight + 20, 
        0, c_black, 0.5
    );

    inst.scribbleElement.draw(drawX, drawY, inst.scribbleTypist);
}