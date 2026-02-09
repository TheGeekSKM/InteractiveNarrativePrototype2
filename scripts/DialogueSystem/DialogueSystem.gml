function DialogueLine(config = {}) constructor 
{
    text = config[$ "text"] == undefined ? "No dialogue provided." : config[$ "text"];
    speaker = config[$ "speaker"] == undefined ? "Narrator" : config[$ "speaker"];
    color = config[$ "color"] == undefined ? c_white : config[$ "color"];
    speakerOffsetPos = config[$ "speakerOffsetPos"] == undefined ? [0, 0] : config[$ "speakerOffsetPos"];
    preTime = config[$ "preTime"] == undefined ? 0 : config[$ "preTime"];
    postTime = config[$ "postTime"] == undefined ? 2.5 : config[$ "postTime"];
    typeSpeed = config[$ "typeSpeed"] == undefined ? 0.4 : config[$ "typeSpeed"];
    isBlocking = config[$ "isBlocking"] == undefined ? false : config[$ "isBlocking"];
    size = config[$ "size"] == undefined ? 1 : config[$ "size"];

    elapsed = 0;
    finishedTyping = false;
    scribbleElement = undefined;
    scribbleTypist = undefined;

    callbackAtEnd = undefined;

    /// This function sets the text
    /// @param {string} newText - The text to display
    /// @returns {DialogueLine} - Returns the DialogueLine instance for chaining
    static SetText = function(newText) 
    {
        text = newText;
        return self;
    };

    /// This function sets the speaker name
    /// @param {string} newSpeaker - The name of the speaker
    /// @returns {DialogueLine} - Returns the DialogueLine instance for chaining
    static SetSpeaker = function(newSpeaker) 
    {
        speaker = newSpeaker;
        return self;
    };

    /// This function sets the text color
    /// @param {Constant} newColor - The color to display the text in (use GameMaker color constants or hex values)
    /// @returns {DialogueLine} - Returns the DialogueLine instance for chaining 
    static SetColor = function(newColor) 
    {
        color = newColor;
        return self;
    };

    /// This function sets the speaker's offset position from the default
    /// @param {array} newOffsetPos - An array with two elements [xOffset, yOffset] representing the speaker's position offset
    /// @returns {DialogueLine} - Returns the DialogueLine instance for chaining
    static SetSpeakerOffsetPos = function(newOffsetPos) 
    {
        speakerOffsetPos = newOffsetPos;
        return self;
    };

    /// This function sets the pre-display time before the dialogue appears
    /// @param {real} newPreTime - The time in seconds before the dialogue starts displaying
    /// @returns {DialogueLine} - Returns the DialogueLine instance for chaining
    static SetPreTime = function(newPreTime) 
    {
        preTime = newPreTime;
        return self;
    };

    /// This function sets the post-display time after the dialogue finishes
    /// @param {real} newPostTime - The time in seconds after the dialogue finishes
    /// @returns {DialogueLine} - Returns the DialogueLine instance for chaining
    static SetPostTime = function(newPostTime) 
    {
        postTime = newPostTime;
        return self;
    };

    /// This function sets the typing speed for the dialogue text
    /// @param {real} newTypeSpeed - The speed at which the text is typed out (characters per second)
    /// @returns {DialogueLine} - Returns the DialogueLine instance for chaining
    static SetTypeSpeed = function(newTypeSpeed) 
    {
        typeSpeed = newTypeSpeed;
        return self;
    };
}

/// @desc Solo line. This just addsa  line to the Dialogue Manager
/// @param {DialogueLine} dialogueStruct this is the dialogue line struct
/// @param {bool} _interrupt interrupts the previous line
function Speak(dialogueStruct, _interrupt = false)
{
    with (obj_DialogueManager)
    {
        if (_interrupt)
        {
            for (var i = array_length(activeLines) - 1; i >= 0; i -= 1)
            {
                if (activeLines[i].speaker == dialogueStruct.speaker)
                {
                    array_delete(activeLines, i, 1);
                }
            }
        }
        array_push(activeLines, dialogueStruct);
    }
}

/// @desc Add an array of dialogue lines to make a scene
/// @param {array} dialogueArray this is the array of Dialogue Lines
/// @param {bool} [clearPreviousScene]=false this will clear out the previous scene and start a new one
function Scene(dialogueArray, clearPreviousScene = false)
{
    if (clearPreviousScene)
    {
        with (obj_DialogueManager)
        {
            array_resize(activeLines, 0);
        }
    }

    for (var i = 0; i < array_length(dialogueArray); i += 1)
    {
        with (obj_DialogueManager)
        {
            array_push(activeLines, dialogueArray[i]);
        }
    }
}