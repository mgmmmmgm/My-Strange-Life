
-- WaitState, MoveState must already be loaded.
assert(WaitState)
assert(MoveState)

gCharacterStates =
{
    wait = WaitState,
    move = MoveState,
    npc_stand = NPCStandState,
    plan_stroll = PlanStrollState,
    -- sleep = SleepState,
    follow_path = FollowPathState
}

gEntities =
{
    hero =
    {
        texture = "Frisk_1.png",
        width = 19,
        height = 29,
        startFrame = 1,
        tileX = 8,
        tileY = 6,
        layer = 1
    },
    witch =
    {
        texture = "witch.png",
        width = 27,
        height = 42,
        startFrame = 2,
        -- tileX = 9,
        -- tileY = 4,
        tileX = 1,
        tileY = 1,
        layer = 1
    },
    teacher =
    {
        texture = "teacher.png",
        width = 29,
        height = 32,
        startFrame = 15,
        -- tileX = 9,
        -- tileY = 4,
        tileX = 1,
        tileY = 1,
        layer = 1
    },
    friend =
    {
        texture = "friend.png",
        width = 16,
        height = 28,
        startFrame = 10,
        -- tileX = 9,
        -- tileY = 4,
        tileX = 1,
        tileY = 1,
        layer = 1
    },
    shadow =
    {
        texture = "Frisk_1.png",
        width = 19,
        height = 29,
        startFrame = 13,
        tileX = 8,
        tileY = 6,
        layer = 1
    },
    dog =
    {
        texture = "dog.png",
        width = 22,
        height = 19,
        startFrame = 1,
        tileX = 8,
        tileY = 6,
        layer = 1
    },
    elf_1 =
    {
        texture = "elf.png",
        width = 10,
        height = 17,
        startFrame = 1,
        tileX = 8,
        tileY = 6,
        layer = 1
    },
    elf_2 =
    {
        texture = "elf.png",
        width = 10,
        height = 17,
        startFrame = 17,
        tileX = 8,
        tileY = 6,
        layer = 1
    },
}

gCharacters =
{
    -- strolling_npc =
    -- {
    --     entity = "hero",
    --     anims =
    --     {
    --         up = {1, 2, 3, 4},
    --         right = {5, 6, 7, 8},
    --         down = {9, 10, 11, 12},
    --         left = {13, 14, 15, 16},
    --     },
    --     facing = "down",
    --     controller = {"plan_stroll", "move"},
    --     state = "plan_stroll"
    -- },
    -- standing_npc =
    -- {
    --     entity = "hero",
    --     anims = {},
    --     facing = "down",
    --     controller = {"npc_stand"},
    --     state = "npc_stand"
    -- },
    elf_1 =
    {
        entity = "elf_1",
        anims =
        {
            down = {9},
            up = {1},
            left = {9, 10, 11, 12, 13, 14, 15, 16},
            right = {1, 2, 3, 4, 5, 6, 7, 8},
        },
        facing = "up",
        controller = {"plan_stroll", "move"},
        state = "plan_stroll"
    },
    elf_2 =
    {
        entity = "elf_2",
        anims =
        {
            down = {25},
            up = {17},
            left = {25, 26, 27, 28, 29, 30, 31, 32},
            right = {17, 18, 19, 20, 21, 22, 23, 24},
        },
        facing = "up",
        controller = {"plan_stroll", "move"},
        state = "plan_stroll"
    },
    dog =
    {
        entity = "dog",
        anims =
        {
            down = {3, 4},
            up = {1, 2},
            left = {1, 2},
            right = {3, 4},
        },
        facing = "left",
        controller = {"plan_stroll", "move"},
        state = "plan_stroll"
    },
    shadow =
    {
        entity = "shadow",
        anims =
        {
            down = {13, 14, 15, 16},
            up = {17, 18, 19, 20},
            left = {21, 22},
            right = {23, 24},
        },
        facing = "down",
        controller = {"plan_stroll", "move"},
        state = "plan_stroll"
    },
    friend =
    {
        entity = "friend",
        anims =
        {
            down =  {5, 4, 3},
            up =    {10, 11, 12, 13},
            left =  {6, 7},
            right = {8, 9},
        },
        facing = "down",
        controller = {"npc_stand", "follow_path", "move"},
        state = "npc_stand"
    },
    teacher =
    {
        entity = "teacher",
        anims =
        {
            down =  {10, 12},
            up =    {13, 14},
            left =  {1, 2, 3, 4},
            right = {5, 6, 7, 8},
        },
        facing = "down",
        controller = {"npc_stand", "follow_path", "move"},
        state = "npc_stand"
    },
    witch =
    {
        entity = "witch",
        anims =
        {
            down =  {3},
            up =    {4},
            left =  {2},
            right = {1},
        },
        facing = "up",
        controller = {"npc_stand", "follow_path", "move"},
        state = "npc_stand"
    },
    hero =
    {
        entity = "hero",
        anims =
        {
            down = {1, 2, 3, 4},
            up = {5, 6, 7, 8},
            left = {9, 10},
            right = {11, 12},
        },
        facing = "down",
        controller = { "wait", "move" },
        state = "wait"
    }
}