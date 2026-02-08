if (point_in_rectangle(obj_PCPlayer.x, obj_PCPlayer.y, x, y, x + sprite_width, y + sprite_height))
{
    Transition(rm15, seqTrans_FadeOut_Long, seqTrans_FadeIn_Long);
}