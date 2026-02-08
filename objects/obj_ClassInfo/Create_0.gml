enum CLASSTYPE
{
    Assassin,
    Berserker,
    Mage
}

currentClass = undefined;

text = "Click on a Class to Select it.";

asText = @"[c_yellow]SELECTED ELDRITCH DEITY -> The Winged Shadow[c_white]
The Winged Shadow is an entity of darkness. It exists within every shadow under the light, in a perpetual battle with The Burning Eye. It is the void. It hungers. It feeds. It offers little grace to those who worship it, but it promises power to those who hide from the light. The goodness of light is a falsehood, only the void is true.";

beText = @"[c_yellow]SELECTED ELDRITCH DEITY -> The Vengeful Rage[c_white]
The Vengeful Rage does not exist in much of this dead universe. As the stars fade and light darkens, so too shall the Vengeful Rage. Yet it still rules mercilessly. It is life, itself. It is the vengence against the freezing indifference of the universe. It is the rage against the dead gods that never did care. To live is to rage.";

maText = @"[c_yellow]SELECTED ELDRITCH DEITY -> The Reality Weaver[c_white]
The Reality Weaver is the most ambivalent of the three elder beings. It simply does not care. It trades in contracts between nature, itself, the and the forces that alter it. It is the twisting and turning of the infinite clock. It is the moving tendons, the shifting muscles, the passage of time, and the decay of all things.";

Subscribe("ClassSelect", function(_classType)
{
    switch(_classType)
    {
        case CLASSTYPE.Assassin:
            text = asText;
            break;
        case CLASSTYPE.Berserker:
            text = beText;
            break;
        case CLASSTYPE.Mage:
            text = maText;
            break;
    }
    
    currentClass = _classType;
});

Subscribe("ClickedFin", function(_id)
{
    if (currentClass == undefined)
    {
        text = "[c_yellow][wave][[WARNING][/wave][c_white]: Please select an Eldritch Deity before confirming.";
    }
    else
    {
        global.SELECTED_CLASS = currentClass;
        room_goto(rmLevel1);
    }
});