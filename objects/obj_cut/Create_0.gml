alarm[0] = 28 * 60;

scene = [
    new DialogueLine({
        speaker: obj_cut_1,
        text: $"[shake]AWAKE",
        postTime: 2,
        isBlocking: true,
        size: 3
    }),
    new DialogueLine({
        speaker: obj_cut_2,
        text: $"Whaddya want?",
        postTime: 2,
        isBlocking: true
    }),
    new DialogueLine({
        speaker: obj_cut_1,
        text: $"[shake]THERE EXISTS A MORTAL WHO'S SOUL I NEED.",
        postTime: 2,
        isBlocking: true,
        size: 3
    }),
    new DialogueLine({
        speaker: obj_cut_2,
        text: $"Contract?",
        postTime: 2,
        isBlocking: true
    }),
    new DialogueLine({
        speaker: obj_cut_1,
        text: $"[shake]INDEED.",
        postTime: 2,
        isBlocking: true,
        size: 3
    }),
    new DialogueLine({
        speaker: obj_cut_2,
        text: $"You said I was done the last time.",
        postTime: 2,
        isBlocking: true
    }),
    new DialogueLine({
        speaker: obj_cut_1,
        text: $"[shake]YOU SERVE ME, CREATURE. DO NOT DENY ME.",
        postTime: 2,
        isBlocking: true,
        size: 3
    }),
    new DialogueLine({
        speaker: obj_cut_2,
        text: $"I'll pay you to shut up.",
        postTime: 2,
        isBlocking: true
    }),
    new DialogueLine({
        speaker: obj_cut_1,
        text: $"[shake]YOUR VANITY AMUSES ME. NOW KILL MY PRIZE.",
        postTime: 20,
        isBlocking: true,
        size: 3,
    }),
];

Scene(scene);
