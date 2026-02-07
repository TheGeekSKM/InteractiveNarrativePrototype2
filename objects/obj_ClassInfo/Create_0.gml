enum CLASSTYPE
{
    Assassin,
    Berserker,
    Mage
}

currentClass = undefined;

text = "Click on a Class to Select it.";

asText = @"[c_yellow]SELECTED CLASS -> Assassin[c_white]
-----
Assassins seek to stab their adversaries in the back. They are quick, but can be taken down easily.";

beText = @"[c_yellow]SELECTED CLASS -> Berserker[c_white]
-----
Berserkers are front-liners. They'll chase after their enemies and throw/attack them head on.";

maText = @"[c_yellow]SELECTED CLASS -> Mage[c_white]
-----
Mages stay far away from their enemies and launch projectiles at them. They hit hard, but are weak physically.";

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
        text = "[c_yellow][wave][[WARNING][/wave][c_white]: Please select a class before confirming.";
    }
    else
    {
        global.SELECTED_CLASS = currentClass;
        room_goto(rmLevel1);
    }
});