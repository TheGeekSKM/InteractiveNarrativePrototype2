// Inherit the parent event
event_inherited();

buttonFunctions = [];

function OnMouseLeftClick()
{
    image_index = 1;
    clicking = true;
}

function OnMouseLeftClickRelease()
{
    image_index = 0;
    clicking = false;

    for (var i = 0; i < array_length(buttonFunctions); i += 1) {
        buttonFunctions[i]();
    }
}

AddMouseExitCallback(function() {
    image_index = 0;
    clicking = false;
})

clicking = false;

function AddButtonFunction(_callback)
{
    array_push(buttonFunctions, _callback);
}