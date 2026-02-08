// Inherit the parent event
event_inherited();

testCase = currentState == ButtonState.Hover || currentState == ButtonState.Click;
textPosY = clicking ? y + 5 : y;
text = testCase ? $"[wave]> {Name} <[/wave]" : $"{Name}";
currentColor = clicking ? ClickColor : c_white;

image_blend = currentColor;

scribble(text)
    .align(fa_center, fa_middle)
    .starting_format("Monogram", c_white)
    .transform(TextScale, TextScale, image_angle)
    .wrap(sprite_width - 10)
    .blend(currentColor, 1)
    .draw(x, textPosY - (TextScale * 2));


