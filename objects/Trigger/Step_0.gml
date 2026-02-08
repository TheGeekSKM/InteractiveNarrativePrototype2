if (point_in_rectangle(obj_PCPlayer.x, obj_PCPlayer.y, x, y, x + sprite_width, y + sprite_height))
{
    Transition(rmMainMenu, seqTrans_FadeOut_Long, seqTrans_FadeIn);
}