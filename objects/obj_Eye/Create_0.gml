playerInRange = false;
previousPlayerInRange = playerInRange;

name = "";
switch (global.SELECTED_CLASS)
{
    case CLASSTYPE.Assassin:
        name = "The Winged Shadow";
        break;
    case CLASSTYPE.Berserker:
        name = "The Vengeful Rage";
        break;
    case CLASSTYPE.Mage:
        name = "The Reality Weaver";
        break;
}

if (global.SELECTED_CLASS == CLASSTYPE.Assassin)
{
    scene = [
        new DialogueLine({
            text: "Sneak closer, hero. I would not consume from these shadows...",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: "...but I perceive your hunger for whispers...",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: "...and your hunger for the power to slay the [c_red]Demon Lord[/c]...",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: "...is this true?",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: "Y-Yeah. I want to save my lands.",
            speaker: obj_PCPlayer,
            speakerOffsetPos: [0, -8],
            isBlocking: true,
        }),
        new DialogueLine({
            text: "heheheh....your lands...? Noble, are we? Are we sure our goals are so...heroic?",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: "What're you trying to say?",
            speaker: obj_PCPlayer,
            speakerOffsetPos: [0, -8],
            isBlocking: true,
        }),
        new DialogueLine({
            text: "I'm sure you already know, boy...",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: $"...Very well, I, {name}, shall offer a mere morsel of my power...",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: $"...but it shall not be free-",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: false,
            color: c_black,
        }),
        new DialogueLine({
            text: "I don't care about the price...I AM the hero of these lands. I must do what is necessary.",
            speaker: obj_PCPlayer,
            speakerOffsetPos: [0, -8],
            preTime: 0.5,
            isBlocking: true,
        }),
        new DialogueLine({
            text: $"Hehehehe. Your confidence is...not as real as you might hope. I admire your lies...",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: $"You shall have my power, but in 15 years time, I will return to claim you into the unholy void.",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: "15 years? Okay...ok...that's fine.",
            speaker: obj_PCPlayer,
            speakerOffsetPos: [0, -8],
            isBlocking: true,
        }),
        new DialogueLine({
            text: $"Venture forth to the east, boy. Hide amongst my shadows and slay those in the light!",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
    ];
}

if (global.SELECTED_CLASS == CLASSTYPE.Berserker)
{
    scene = [
        new DialogueLine({
            text: "March closer, boy! Present yourself!",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: "You seek to wreak vengence, do you not?",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: "To burn the [c_red]Demon Lord[/c] in a fiery cloud of blood?",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: "Y-Yeah. I want to save my lands.",
            speaker: obj_PCPlayer,
            speakerOffsetPos: [0, -8],
            isBlocking: true,
        }),
        new DialogueLine({
            text: "SPEAK TRUE, COWARDLY BASTARD!",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: "Wh-what're you talking about?",
            speaker: obj_PCPlayer,
            speakerOffsetPos: [0, -8],
            isBlocking: true,
        }),
        new DialogueLine({
            text: "You should know, boy...I see in your soul. I see vile things within. Do not hide.",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: $"I, {name}, shall offer you a mere morsel of my power...",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: $"...but it shall not be free-",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: false,
            color: c_black,
        }),
        new DialogueLine({
            text: "I-I don't care about the price...I AM the hero of these lands. I must do what is necessary.",
            speaker: obj_PCPlayer,
            speakerOffsetPos: [0, -8],
            preTime: 0.5,
            isBlocking: true,
        }),
        new DialogueLine({
            text: $"Your lies bore me, boy. But your rage, no matter from whence it comes, is delicious.",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: $"You shall have my power, but in 15 years time, I will return to claim you into my Burning Eye.",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: "15 years? Okay...ok...that's fine.",
            speaker: obj_PCPlayer,
            speakerOffsetPos: [0, -8],
            isBlocking: true,
        }),
        new DialogueLine({
            text: $"March to the east, boy. Slay, consume, and unleash the vile intentions you have upon this world!",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
    ];
}

if (global.SELECTED_CLASS == CLASSTYPE.Mage)
{
    scene = [
        new DialogueLine({
            text: "Come close. I have no time for games.",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: "You seek power?",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: "You think power will make those around you finally love you? You think they care?",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: "What?! I just want to save my lands.",
            speaker: obj_PCPlayer,
            speakerOffsetPos: [0, -8],
            isBlocking: true,
        }),
        new DialogueLine({
            text: "Ok...Killing the [c_red]Demon Lord[/c] won't make you a normal person.",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: "I don't know what you're talking about.",
            speaker: obj_PCPlayer,
            speakerOffsetPos: [0, -8],
            isBlocking: true,
        }),
        new DialogueLine({
            text: "I don't give a fuck, kid.",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: $"I, {name}, shall offer you a mere morsel of my power...",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: $"...but it won't be free-",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: false,
            color: c_black,
        }),
        new DialogueLine({
            text: "I-I don't care about the price...I AM the hero of these lands. I must do what is necessary.",
            speaker: obj_PCPlayer,
            speakerOffsetPos: [0, -8],
            preTime: 0.5,
            isBlocking: true,
        }),
        new DialogueLine({
            text: $"Don't interrupt me.",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: $"You'll have my power, but in 15 years time, I'll consume your soul and no one will remember you existed.",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
        new DialogueLine({
            text: "15 years? That's all I get?",
            speaker: obj_PCPlayer,
            speakerOffsetPos: [0, -8],
            isBlocking: true,
        }),
        new DialogueLine({
            text: $"Go east. Get the fuck out of my sight.",
            speaker: obj_Eye,
            speakerOffsetPos: [0, -32],
            isBlocking: true,
            color: c_black,
        }),
    ];
}