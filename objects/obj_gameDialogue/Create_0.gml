scene2 = [];

if (global.SELECTED_CLASS == CLASSTYPE.Assassin)
{


    scene2 = [
        new DialogueLine({
            speaker: obj_Player,
            text: $"Stop running from this!",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"You could just leave me alone!",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"I've done nothing but good for these lands.",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Player,
            text: $"Yeah cuz invading people's homes and stealing their stuff is good for these lands.",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"I only did that to survive!",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"You think killing the [c_red]Demon King[/c] was easy?!",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Player,
            text: $"It doesn't matter. You don't need to intend evil to do it.",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Player,
            text: $"And let's be honest, you were always going to steal, even without your powers.",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"How dare-",
            postTime: 0,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Player,
            text: $"You're a thief. You wander the world thinking that other people's stuff is yours.",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Player,
            text: $"It gives you some sick pleasure doesn't it? Stealing and taking?",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"As if you can judge me! All you do is murder!",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"Your gloves are caked with blood from across generations!",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"You and your boss are vile cowards. You hide from everything, believing that the mystery gives you power.",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Player,
            text: $"...touche...",
            postTime: 2,
            isBlocking: true
        }),
    ];
}
else if (global.SELECTED_CLASS == CLASSTYPE.Berserker)
{


    scene2 = [
        new DialogueLine({
            speaker: obj_Player,
            text: $"Why are you running away?",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Player,
            text: $"I thought your anger forbade you from retreat?",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"SHUT UP!!!",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Player,
            text: $"You just seem more scared than angry, I gotta say.",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"...Is there really a difference?",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Player,
            text: $"What?",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"I'm always terrified of everything. I'm always angry at everything. What's the difference?",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"No matter what, I'm always gonna snap and someone or something will always get hurt.",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"It's just what I do.",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Player,
            text: $"oh...",
            postTime: 2,
            isBlocking: true
        }),
    ];
}
else if (global.SELECTED_CLASS == CLASSTYPE.Mage)
{


    scene2 = [
        new DialogueLine({
            speaker: obj_Player,
            text: $"Why aren't you fighting?",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"Why would I?",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Player,
            text: $"It seems sensible. I'm here for your soul..so...",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"I don't care.",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Player,
            text: $"What?",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"I said I don't care. If I run, you kill me. If I fight, you kill me.",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"What difference does it make?",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"Your boss said that no one will remember me after I die.",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"But even if you didn't kill me, no one will remember me in 100 years.",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"I'm already a memory in most people's eyes.",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"So what reason do I have to run? What do I need to protect?",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Player,
            text: $"What about your family? Maybe friends? People who care about you...? No?",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"Do you see any of them here?",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"Listen...do you hear anyone calling for me?",
            postTime: 4,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Player,
            text: $"...No.",
            postTime: 2,
            isBlocking: true
        }),
        new DialogueLine({
            speaker: obj_Enemy,
            text: $"So get it over with, please.",
            postTime: 4,
            isBlocking: true
        }),
    ];
}

doOnce = false;
