function Apply(list, f, iter)
    iter = iter or ipairs
    for k, v in iter(list) do
        f(v, k)
    end
end

Apply({
        "Renderer",
        "Sprite",
        "System",
        "Texture",
        "Vector",
        "Keyboard",
        "Sound",
    },
    function(v) LoadLibrary(v) end)

Apply({
        "Animation.lua",
        "Map.lua",
        "Util.lua",
        "Entity.lua",
        "StateMachine.lua",
        "FollowPathState.lua",
        "MoveState.lua",
        "WaitState.lua",
        "NPCStandState.lua",
        "PlanStrollState.lua",
        "Tween.lua",
        "Actions.lua",
        "Trigger.lua",
        "EntityDefs.lua",
        "Character.lua",
        "Panel.lua",
        "Selection.lua",
        "StateStack.lua",
        "Textbox.lua",
        "ExploreState.lua",
        -- "World.lua",
        "Storyboard.lua",
        "StoryboardEvents.lua",
        "ScreenState.lua",
        "CaptionStyles.lua",
        "CaptionState.lua",
        "bedroom_night.lua",
        "bedroom.lua",
        "world.lua",
        "MapDB.lua",
    },
    function(v) Asset.Run(v) end)