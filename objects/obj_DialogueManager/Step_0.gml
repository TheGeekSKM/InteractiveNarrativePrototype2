if (array_length(activeLines) <= 0) return;

for (var i = 0; i < array_length(activeLines); i++)
{
    var doOnce = false;
    var inst = activeLines[i];

    if (i > 0) {
        var _is_blocked = false;
        for (var j = 0; j < i; j++) 
        {
            if (activeLines[j].isBlocking) 
            {
                _is_blocked = true;
                break;
            }
        }
        if (_is_blocked) break; 
    }

    if (inst.preTime > 0)
    {
        inst.preTime -= 1 / game_get_speed(gamespeed_fps);
        continue;
    }

    if (inst.scribbleElement == undefined || inst.scribbleTypist == undefined)
    {
        inst.scribbleTypist = scribble_typist()
            .in(inst.typeSpeed, 0);

        inst.scribbleElement = scribble(inst.text)
            .starting_format("Monogram", c_white)
            .wrap(min(240 * inst.size, room_width - 20))
            .scale(inst.size)
            .align(fa_center, fa_bottom);
    }

    if (inst.scribbleTypist.get_state() == 1)
    {
        inst.finishedTyping = true;
    }

    if (inst.finishedTyping)
    {
        if (!doOnce && inst.callbackAtEnd != undefined)
        {
            callbackAtEnd();
            doOnce = true;
        }
        inst.postTime -= 1 / game_get_speed(gamespeed_fps);
        if (inst.postTime <= 0)
        {
            
            array_delete(activeLines, i, 1);
            i--;
        }
    }
}