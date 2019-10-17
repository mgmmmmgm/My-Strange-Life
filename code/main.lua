LoadLibrary('Asset')
Asset.Run('Dependencies.lua')

gRenderer = Renderer.Create()
gStack = StateStack:Create()
CaptionStyles['default']:Render(gRenderer, "test")


local intro =
{
    SOP.Scene
    {
        map ="room_night",
        focusX = 6,
        focusY = 6,
        hideHero = true,
    },
    SOP.BlackScreen(),


    SOP.Play("wind"),
    SOP.NoBlock(
        SOP.FadeSound("wind", 0, 1, 3)),
    SOP.Caption("place", "title", "My Strange Life"),
    SOP.Caption("time", "subtitle", "Day 1"),
    SOP.Wait(2),
    SOP.NoBlock(
        SOP.FadeOutCaption("place", 3)
    ),
    SOP.FadeOutCaption("time", 3),
    SOP.FadeSound("wind", 1, 0, 3),
    SOP.KillState("place"),
    SOP.KillState("time"),
    SOP.FadeOutScreen(),
    SOP.Play("closet"),
    SOP.FadeSound("closet", 1, 0, 2),
    SOP.Stop("closet"),
    SOP.Stop("wind"),


    SOP.FadeInScreen(),

    SOP.NoBlock(SOP.Play("radionoise")),
    -- NoBlock(FadeSound("radionoise", 1, 0, 17)),
    SOP.Wait(1),
    SOP.Caption("context1", "body", "It may sound like a ghost story.."),
    SOP.Wait(1),
    SOP.FadeOutCaption("context1", 3),
    SOP.KillState("context1"),
    SOP.Caption("context2", "body", "Every night, a strange sound comes from my closet..."),
    SOP.Wait(2),
    SOP.FadeOutCaption("context2", 3),
    SOP.KillState("context2"),

    SOP.NoBlock(SOP.FadeSound("radionoise", 1, 0, 15)),
    SOP.RunAction("AddNPC",
        {"room_night", { def = "witch", id = "witch1", x = 9, y = 4}},
        {GetMapRef}),
    SOP.NoBlock(SOP.FadeOutScreen()),
    SOP.MoveNPC("witch1", "room_night",
        {
            "down",
            "left", "left", "left", "left", "left",
            "down", "down",
            "right", "right", "right", "right",
            "up","up"
        }),
    SOP.Wait(5),
    SOP.FadeInScreen(),


    SOP.ReplaceScene(
        "room_night",
        {
            map = "world",
            focusX = 7,
            focusY = 6,
            hideHero = false
        }), 
    SOP.FadeOutScreen(_, 3),


    SOP.HandOff("world")
}


local storyboard = Storyboard:Create(gStack, intro)
gStack:Push(storyboard)


function update()
    local dt = GetDeltaTime()
    gStack:Update(dt)
    gStack:Render(gRenderer)
end