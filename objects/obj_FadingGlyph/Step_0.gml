
image_alpha = lerp(1, 0, fadeTimer / TimeToFade);
if (fadeTimer >= TimeToFade)
{
    instance_destroy();
}

fadeTimer += delta_time / 1000000; 