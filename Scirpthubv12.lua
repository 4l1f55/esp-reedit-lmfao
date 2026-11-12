-- ScriptHub v12 (PC & Mobile Edition) - for testing in my own game
-- Credits: animation list from "FE Animation editor" by Gazer-Ha (Gaze); invisibility method from "FE Invisibility" GUI by ziaa.
-- Adapted concepts from github.com/Stefanuk12/ROBLOX (Apache-2.0): AntiIdle, Notifications, FPSPingGraph, ESP/CIELUV, HopManager.
-- v12 Upgrades: Sidebar Tab UI + Touch Sliders, PC/Mobile Aimbot, Universal Silent Aim, Dual Chat Spy, Spectate/Whitelist, Waypoints, Threat Radar.

local function buildGazeData()
	local GAZE = {}

	GAZE.Idle = {
		{ "2016 Animation (mm2)", 387947158, 387947464 },
		{ "(UGC) Oh Really?", 98004748982532 },
		{ "Astronaut", 891621366, 891633237 },
		{ "Adidas Community", 122257458498464, 102357151005774 },
		{ "Bold", 16738333868, 16738334710 },
		{ "(UGC) Slasher", 140051337061095 },
		{ "(UGC) Retro", 80479383912838 },
		{ "(UGC) Magician", 139433213852503 },
		{ "(UGC) John Doe", 72526127498800 },
		{ "(UGC) Noli", 139360856809483 },
		{ "(UGC) Coolkid", 95203125292023 },
		{ "(UGC) Survivor Injured", 73905365652295 },
		{ "(UGC) Retro Zombie", 90806086002292 },
		{ "(UGC) 1x1x1x1", 76780522821306 },
		{ "Borock", 3293641938, 3293642554 },
		{ "Bubbly", 910004836, 910009958 },
		{ "Cartoony", 742637544, 742638445 },
		{ "Confident", 1069977950, 1069987858 },
		{ "Catwalk Glam", 133806214992291, 94970088341563 },
		{ "Cowboy", 1014390418, 1014398616 },
		{ "Drooling Zombie", 3489171152 },
		{ "Elder", 10921101664, 10921102574 },
		{ "Ghost", 616006778, 616008087 },
		{ "Knight", 657595757, 657568135 },
		{ "Levitation", 616006778, 616008087 },
		{ "Mage", 707742142, 707855907 },
		{ "MrToilet", 4417977954, 4417978624 },
		{ "Ninja", 656117400, 656118341 },
		{ "NFL", 92080889861410, 74451233229259 },
		{ "OldSchool", 10921230744, 10921232093 },
		{ "Patrol", 1149612882, 1150842221 },
		{ "Pirate", 750781874, 750782770 },
		{ "Default Retarget", 95884606664820 },
		{ "Very Long", 18307781743 },
		{ "Sway", 560832030, 560833564 },
		{ "Popstar", 1212900985, 1150842221 },
		{ "Princess", 941003647, 941013098 },
		{ "R6", 12521158637, 12521162526 },
		{ "R15 Reanimated", 4211217646, 4211218409 },
		{ "Realistic", 17172918855, 17173014241 },
		{ "Robot", 616088211, 616089559 },
		{ "Sneaky", 1132473842, 1132477671 },
		{ "Sports (Adidas)", 18537376492, 18537371272 },
		{ "Soldier", 3972151362 },
		{ "Stylish", 616136790, 616138447 },
		{ "Stylized Female", 4708191566, 4708192150 },
		{ "Superhero", 10921288909, 10921290167 },
		{ "Toy", 782841498, 782845736 },
		{ "Udzal", 3303162274, 3303162549 },
		{ "Vampire", 1083445855, 1083450166 },
		{ "Werewolf", 1083195517, 1083214717 },
		{ "Wicked (Popular)", 118832222982049, 76049494037641 },
		{ "No Boundaries (Walmart)", 18747067405, 18747063918 },
		{ "Zombie", 616158929, 616160636 },
		{ "(UGC) Zombie", 77672872857991 },
		{ "(UGC) TailWag", 129026910898635 },
		{ "[VOTE] warming up", 83573330053643 },
		{ "cesus", 115879733952840 },
		{ "[VOTE] Float", 110375749767299 },
		{ "UGC Oneleft", 121217497452435 },
		{ "AuraFarming", 138665010911335 },
		{ "[VOTE] Mech Float", 74447366032908 },
		{ "Badware", 140131631438778 },
		{ "Wicked \"Dancing Through Life\"", 92849173543269, 132238900951109 },
		{ "Unboxed By Amazon", 98281136301627, 138183121662404 },
	}

	GAZE.Walk = {
		{ "Geto", 85811471336028 },
		{ "Patrol", 1151231493 },
		{ "Drooling Zombie", 3489174223 },
		{ "Adidas Community", 122150855457006 },
		{ "Levitation", 616013216 },
		{ "Catwalk Glam", 109168724482748 },
		{ "Knight", 10921127095 },
		{ "Pirate", 750785693 },
		{ "Bold", 16738340646 },
		{ "Sports (Adidas)", 18537392113 },
		{ "Zombie", 616168032 },
		{ "Astronaut", 891667138 },
		{ "Cartoony", 742640026 },
		{ "Ninja", 656121766 },
		{ "Confident", 1070017263 },
		{ "Wicked \"Dancing Through Life\"", 73718308412641 },
		{ "Unboxed By Amazon", 90478085024465 },
		{ "Gojo", 95643163365384 },
		{ "R15 Reanimated", 4211223236 },
		{ "Ghost", 616013216 },
		{ "2016 Animation (mm2)", 387947975 },
		{ "(UGC) Zombie", 113603435314095 },
		{ "No Boundaries (Walmart)", 18747074203 },
		{ "Rthro", 10921269718 },
		{ "Werewolf", 1083178339 },
		{ "Wicked (Popular)", 92072849924640 },
		{ "Vampire", 1083473930 },
		{ "Popstar", 1212980338 },
		{ "Mage", 707897309 },
		{ "(UGC) Smooth", 76630051272791 },
		{ "R6", 12518152696 },
		{ "NFL", 110358958299415 },
		{ "Bubbly", 910034870 },
		{ "(UGC) Retro", 107806791584829 },
		{ "(UGC) Retro Zombie", 140703855480494 },
		{ "OldSchool", 10921244891 },
		{ "Elder", 10921111375 },
		{ "Stylish", 616146177 },
		{ "Stylized Female", 4708193840 },
		{ "Robot", 616095330 },
		{ "Sneaky", 1132510133 },
		{ "Superhero", 10921298616 },
		{ "Udzal", 3303162967 },
		{ "Toy", 782843345 },
		{ "Default Retarget", 115825677624788 },
		{ "Princess", 941028902 },
		{ "Cowboy", 1014421541 },
	}

	GAZE.Run = {
		{ "Robot", 10921250460 },
		{ "Patrol", 1150967949 },
		{ "Drooling Zombie", 3489173414 },
		{ "Adidas Community", 82598234841035 },
		{ "Heavy Run (Udzal / Borock)", 3236836670 },
		{ "Catwalk Glam", 81024476153754 },
		{ "Knight", 10921121197 },
		{ "Pirate", 750783738 },
		{ "Bold", 16738337225 },
		{ "Sports (Adidas)", 18537384940 },
		{ "Zombie", 616163682 },
		{ "Astronaut", 10921039308 },
		{ "Cartoony", 10921076136 },
		{ "Ninja", 656118852 },
		{ "(UGC) Dog", 130072963359721 },
		{ "Wicked \"Dancing Through Life\"", 135515454877967 },
		{ "Unboxed By Amazon", 134824450619865 },
		{ "[UGC] Flipping", 124427738251511 },
		{ "Sneaky", 1132494274 },
		{ "R6", 12518152696 },
		{ "[VOTE] Aura", 120142877225965 },
		{ "Popstar", 1212980348 },
		{ "Wicked (Popular)", 72301599441680 },
		{ "[UGC] chibi", 85887415033585 },
		{ "R15 Reanimated", 4211220381 },
		{ "Mage", 10921148209 },
		{ "Ghost", 616013216 },
		{ "Rthro", 10921261968 },
		{ "Confident", 1070001516 },
		{ "Stylized Female", 4708192705 },
		{ "No Boundaries (Walmart)", 18747070484 },
		{ "Elder", 10921104374 },
		{ "Werewolf", 10921336997 },
		{ "[UGC] Girly", 128578785610052 },
		{ "Stylish", 10921276116 },
		{ "(UGC) Pride", 116462200642360 },
		{ "NFL", 117333533048078 },
		{ "(UGC) Soccer", 116881956670910 },
		{ "MrToilet", 4417979645 },
		{ "[VOTE] Float", 71267457613791 },
		{ "Levitation", 616010382 },
		{ "(UGC) Retro", 107806791584829 },
		{ "(UGC) Retro Zombie", 140703855480494 },
		{ "OldSchool", 10921240218 },
		{ "Vampire", 10921320299 },
		{ "furry", 102269417125238 },
		{ "Bubbly", 10921057244 },
		{ "fake wicked", 138992096476836 },
		{ "2016 Animation (mm2)", 387947975 },
		{ "[UGC] ball", 132499588684957 },
		{ "Superhero", 10921291831 },
		{ "Toy", 10921306285 },
		{ "Default Retarget", 102294264237491 },
		{ "Princess", 941015281 },
		{ "Cowboy", 1014401683 },
	}

	GAZE.Jump = {
		{ "Robot", 616090535 },
		{ "Patrol", 1148811837 },
		{ "Adidas Community", 75290611992385 },
		{ "Levitation", 616008936 },
		{ "Catwalk Glam", 116936326516985 },
		{ "Knight", 910016857 },
		{ "Pirate", 750782230 },
		{ "Bold", 16738336650 },
		{ "Sports (Adidas)", 18537380791 },
		{ "Zombie", 616161997 },
		{ "Astronaut", 891627522 },
		{ "Cartoony", 742637942 },
		{ "Ninja", 656117878 },
		{ "Confident", 1069984524 },
		{ "Wicked \"Dancing Through Life\"", 78508480717326 },
		{ "Unboxed By Amazon", 121454505477205 },
		{ "R6", 12520880485 },
		{ "R15 Reanimated", 4211219390 },
		{ "Ghost", 616008936 },
		{ "Rthro", 10921263860 },
		{ "No Boundaries (Walmart)", 18747069148 },
		{ "Werewolf", 1083218792 },
		{ "Cowboy", 1014394726 },
		{ "UGC", 91788124131212 },
		{ "[VOTE] Animal", 131203832825082 },
		{ "Popstar", 1212954642 },
		{ "Mage", 10921149743 },
		{ "Sneaky", 1132489853 },
		{ "Superhero", 10921294559 },
		{ "Elder", 10921107367 },
		{ "(UGC) Retro", 139390570947836 },
		{ "NFL", 119846112151352 },
		{ "OldSchool", 10921242013 },
		{ "Stylized Female", 4708188025 },
		{ "Stylish", 616139451 },
		{ "Bubbly", 910016857 },
		{ "[VOTE] Float", 75611679208549 },
		{ "[VOTE] Aura", 93382302369459 },
		{ "Vampire", 1083455352 },
		{ "Wicked (Popular)", 104325245285198 },
		{ "Toy", 10921308158 },
		{ "Default Retarget", 117150377950987 },
		{ "Princess", 941008832 },
		{ "[UGC] happy", 72388373557525 },
	}

	GAZE.Fall = {
		{ "Robot", 616087089 },
		{ "Patrol", 1148863382 },
		{ "Adidas Community", 98600215928904 },
		{ "Levitation", 616005863 },
		{ "Catwalk Glam", 92294537340807 },
		{ "Knight", 10921122579 },
		{ "Pirate", 750780242 },
		{ "Bold", 16738333171 },
		{ "Sports (Adidas)", 18537367238 },
		{ "Zombie", 616157476 },
		{ "Astronaut", 891617961 },
		{ "Cartoony", 742637151 },
		{ "Ninja", 656115606 },
		{ "Confident", 1069973677 },
		{ "Wicked \"Dancing Through Life\"", 78147885297412 },
		{ "Unboxed By Amazon", 94788218468396 },
		{ "R6", 12520972571 },
		{ "[UGC] skydiving", 102674302534126 },
		{ "R15 Reanimated", 4211216152 },
		{ "Rthro", 10921262864 },
		{ "No Boundaries (Walmart)", 18747062535 },
		{ "Werewolf", 1083189019 },
		{ "[VOTE] TPose", 139027266704971 },
		{ "Mage", 707829716 },
		{ "[VOTE] Animal", 77069224396280 },
		{ "Wicked (Popular)", 121152442762481 },
		{ "Popstar", 1212900995 },
		{ "NFL", 129773241321032 },
		{ "OldSchool", 10921241244 },
		{ "Sneaky", 1132469004 },
		{ "Elder", 10921105765 },
		{ "Bubbly", 910001910 },
		{ "Stylish", 616134815 },
		{ "Stylized Female", 4708186162 },
		{ "Vampire", 1083443587 },
		{ "Superhero", 10921293373 },
		{ "Toy", 782846423 },
		{ "Default Retarget", 110205622518029 },
		{ "Princess", 941000007 },
		{ "Cowboy", 1014384571 },
	}

	GAZE.SwimIdle = {
		{ "Sneaky", 1132506407 },
		{ "SuperHero", 10921297391 },
		{ "Adidas Community", 109346520324160 },
		{ "Levitation", 10921139478 },
		{ "Catwalk Glam", 98854111361360 },
		{ "Knight", 10921125935 },
		{ "Pirate", 750785176 },
		{ "Bold", 16738339817 },
		{ "Sports (Adidas)", 18537387180 },
		{ "Stylized", 4708190607 },
		{ "Astronaut", 891663592 },
		{ "Cartoony", 10921079380 },
		{ "Wicked (Popular)", 113199415118199 },
		{ "Mage", 707894699 },
		{ "Wicked \"Dancing Through Life\"", 129183123083281 },
		{ "Unboxed By Amazon", 129126268464847 },
		{ "R6", 12518152696 },
		{ "Rthro", 10921265698 },
		{ "CowBoy", 1014411816 },
		{ "No Boundaries (Walmart)", 18747071682 },
		{ "Werewolf", 10921341319 },
		{ "NFL", 79090109939093 },
		{ "OldSchool", 10921244018 },
		{ "Robot", 10921253767 },
		{ "Elder", 10921110146 },
		{ "Bubbly", 910030921 },
		{ "Patrol", 1151221899 },
		{ "Vampire", 10921325443 },
		{ "Popstar", 1212998578 },
		{ "Ninja", 656118341 },
		{ "Toy", 10921310341 },
		{ "Confident", 1070012133 },
		{ "Princess", 941025398 },
		{ "Stylish", 10921281964 },
	}

	GAZE.Swim = {
		{ "Sneaky", 1132500520 },
		{ "Patrol", 1151204998 },
		{ "Adidas Community", 133308483266208 },
		{ "Levitation", 10921138209 },
		{ "Catwalk Glam", 134591743181628 },
		{ "Knight", 10921125160 },
		{ "Pirate", 750784579 },
		{ "Bold", 16738339158 },
		{ "Sports (Adidas)", 18537389531 },
		{ "Zombie", 616165109 },
		{ "Astronaut", 891663592 },
		{ "Cartoony", 10921079380 },
		{ "Wicked (Popular)", 99384245425157 },
		{ "Mage", 707876443 },
		{ "PopStar", 1212998578 },
		{ "Unboxed By Amazon", 105962919001086 },
		{ "R6", 12518152696 },
		{ "[VOTE] Boat", 85689117221382 },
		{ "Rthro", 10921264784 },
		{ "CowBoy", 1014406523 },
		{ "No Boundaries (Walmart)", 18747073181 },
		{ "Werewolf", 10921340419 },
		{ "NFL", 132697394189921 },
		{ "OldSchool", 10921243048 },
		{ "Wicked \"Dancing Through Life\"", 110657013921774 },
		{ "Elder", 10921108971 },
		{ "Bubbly", 910028158 },
		{ "Robot", 10921253142 },
		{ "[VOTE] Aura", 80645586378736 },
		{ "Vampire", 10921324408 },
		{ "Stylish", 10921281000 },
		{ "Toy", 10921309319 },
		{ "SuperHero", 10921295495 },
		{ "Princess", 941018893 },
		{ "Confident", 1070009914 },
	}

	GAZE.Climb = {
		{ "Robot", 616086039 },
		{ "Patrol", 1148811837 },
		{ "Adidas Community", 88763136693023 },
		{ "Levitation", 10921132092 },
		{ "Catwalk Glam", 119377220967554 },
		{ "Knight", 10921125160 },
		{ "[VOTE] Animal", 124810859712282 },
		{ "Bold", 16738332169 },
		{ "Sports (Adidas)", 18537363391 },
		{ "Zombie", 616156119 },
		{ "Astronaut", 10921032124 },
		{ "Cartoony", 742636889 },
		{ "Ninja", 656114359 },
		{ "Confident", 1069946257 },
		{ "Wicked \"Dancing Through Life\"", 129447497744818 },
		{ "Unboxed By Amazon", 121145883950231 },
		{ "R6", 12520982150 },
		{ "Ghost", 616003713 },
		{ "Rthro", 10921257536 },
		{ "CowBoy", 1014380606 },
		{ "No Boundaries (Walmart)", 18747060903 },
		{ "Mage", 707826056 },
		{ "[VOTE] sticky", 77520617871799 },
		{ "Reanimated R15", 4211214992 },
		{ "Popstar", 1213044953 },
		{ "(UGC) Retro", 121075390792786 },
		{ "NFL", 134630013742019 },
		{ "OldSchool", 10921229866 },
		{ "Sneaky", 1132461372 },
		{ "Elder", 845392038 },
		{ "Stylized Female", 4708184253 },
		{ "Stylish", 10921271391 },
		{ "SuperHero", 10921286911 },
		{ "WereWolf", 10921329322 },
		{ "Vampire", 1083439238 },
		{ "Toy", 10921300839 },
		{ "Wicked (Popular)", 131326830509784 },
		{ "Princess", 940996062 },
		{ "[VOTE] Rope", 134977367563514 },
	}

	return GAZE
end

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local Stats = game:GetService("Stats")
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local TextChatService = game:GetService("TextChatService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local lp = Players.LocalPlayer
local IS_MOBILE = UIS.TouchEnabled and not UIS.KeyboardEnabled

-- Clean up previous instance before starting
local env = (type(getgenv) == "function" and getgenv()) or _G
if env.__ScriptHubCleanup then pcall(env.__ScriptHubCleanup) end

----------------------------------------------------------------
-- State
----------------------------------------------------------------
local S = {
	-- Combat & Aim
	hitbox = false, hitboxSize = 18,
	aimbot = false, aimMode = "HoldOrBtn", -- "HoldOrBtn" or "Always"
	aimPart = "Head", aimFov = 140, aimShowFov = true,
	aimSmooth = 4, aimPredict = 12,
	aimTeam = true, aimWall = true,
	silentAim = false, silentChance = 100, silentLine = true,
	threatWarn = true,
	-- Visuals
	esp = false, espMode = "Box", espBox = true, espName = true, espHealth = true, espTracer = true, espDist = 1500,
	fullbright = false, fov = false, fovValue = 90,
	stats = true, graph = false,
	-- Movement
	fly = false, flySpeed = 50,
	tpwalk = false, tpSpeed = 2,
	noclip = false, infjump = false, tptool = false,
	-- Player
	walkspeed = false, wsValue = 32,
	jumppower = false, jpValue = 100,
	gravity = false, gravValue = 50,
	spin = false, spinSpeed = 360,
	invis = false,
	antifling = false, flingLimit = 250,
	antivoid = false, antiafk = true,
	-- Chat Spy
	chatSpy = true, spyPublic = false, spyEchoWhisper = true,
	-- Animations
	gazeCat = "Idle",
}

local F = {}
local whitelist = {} -- [userId] = true
local waypoints = {} -- { { name = "...", pos = Vector3 } }

----------------------------------------------------------------
-- GUI Root
----------------------------------------------------------------
local function hiddenRoot()
	if type(gethui) == "function" then
		local ok, r = pcall(gethui)
		if ok and r then return r end
	end
end
local function coreGui()
	local ok, r = pcall(game.GetService, game, "CoreGui")
	if ok then return r end
end
local function killOld(c)
	local o = c and c:FindFirstChild("ScriptHub")
	if o then o:Destroy() end
end
pcall(killOld, hiddenRoot())
pcall(killOld, coreGui())
pcall(killOld, lp:FindFirstChild("PlayerGui"))

local gui = Instance.new("ScreenGui")
gui.Name = "ScriptHub"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.DisplayOrder = 999
do
	local function tryParent(p)
		if not p then return false end
		return pcall(function() gui.Parent = p end) and gui.Parent == p
	end
	if not (tryParent(hiddenRoot()) or tryParent(coreGui())) then
		gui.Parent = lp:WaitForChild("PlayerGui")
	end
end

local conns = {}
local function bind(c) conns[#conns + 1] = c return c end

----------------------------------------------------------------
-- UI Theme & Helpers
----------------------------------------------------------------
local C = {
	bg = Color3.fromRGB(18, 19, 26),
	sidebar = Color3.fromRGB(24, 26, 36),
	panel = Color3.fromRGB(30, 33, 46),
	btn = Color3.fromRGB(38, 42, 58),
	field = Color3.fromRGB(48, 53, 74),
	accent = Color3.fromRGB(95, 115, 245),
	on = Color3.fromRGB(46, 160, 100),
	act = Color3.fromRGB(65, 80, 160),
	warn = Color3.fromRGB(245, 185, 70),
	danger = Color3.fromRGB(235, 85, 85),
	dim = Color3.fromRGB(145, 150, 175),
	white = Color3.fromRGB(242, 244, 255),
}

local function new(class, props, parent)
	local o = Instance.new(class)
	for k, v in pairs(props) do o[k] = v end
	if parent then o.Parent = parent end
	return o
end

local function corner(o, r)
	new("UICorner", { CornerRadius = UDim.new(0, r or 8) }, o)
end

local function stroke(o, col, thick, trans)
	return new("UIStroke", {
		Color = col or C.field, Thickness = thick or 1, Transparency = trans or 0.4,
	}, o)
end

local function draggable(handle, target)
	local dragging, startPos, startInput
	handle.InputBegan:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
			dragging, startInput, startPos = true, i.Position, target.Position
			i.Changed:Connect(function()
				if i.UserInputState == Enum.UserInputState.End then dragging = false end
			end)
		end
	end)
	bind(UIS.InputChanged:Connect(function(i)
		if dragging and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
			local d = i.Position - startInput
			target.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + d.X, startPos.Y.Scale, startPos.Y.Offset + d.Y)
		end
	end))
end

local espLayer = new("Frame", { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Active = false }, gui)

----------------------------------------------------------------
-- Toast Notifications
----------------------------------------------------------------
local toastHost = new("Frame", {
	Size = UDim2.fromOffset(260, 0), AutomaticSize = Enum.AutomaticSize.Y, AnchorPoint = Vector2.new(0.5, 0),
	Position = UDim2.new(0.5, 0, 0, 42), BackgroundTransparency = 1,
}, gui)
new("UIListLayout", {
	Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder,
	HorizontalAlignment = Enum.HorizontalAlignment.Center,
}, toastHost)

local TOAST_COLORS = {
	info = C.accent, ok = C.on, warn = C.warn, err = C.danger,
}
local toastN = 0

function F.notify(text, kind, life)
	toastN = toastN + 1
	local f = new("Frame", {
		Size = UDim2.fromOffset(260, 30), BackgroundColor3 = C.bg, BackgroundTransparency = 0.08,
		BorderSizePixel = 0, LayoutOrder = toastN,
	}, toastHost)
	corner(f, 7)
	stroke(f, TOAST_COLORS[kind or "info"], 1, 0.3)
	local bar = new("Frame", {
		Size = UDim2.new(0, 4, 1, -8), Position = UDim2.fromOffset(4, 4),
		BackgroundColor3 = TOAST_COLORS[kind or "info"], BorderSizePixel = 0,
	}, f)
	corner(bar, 2)
	local l = new("TextLabel", {
		Size = UDim2.new(1, -18, 1, 0), Position = UDim2.fromOffset(14, 0), BackgroundTransparency = 1,
		Text = text, TextColor3 = C.white, Font = Enum.Font.GothamMedium, TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd,
	}, f)

	local frames = {}
	for _, k in ipairs(toastHost:GetChildren()) do
		if k:IsA("Frame") then frames[#frames + 1] = k end
	end
	if #frames > 4 then
		table.sort(frames, function(a, b) return a.LayoutOrder < b.LayoutOrder end)
		frames[1]:Destroy()
	end

	task.delay(life or 2.6, function()
		if not f.Parent then return end
		local info = TweenInfo.new(0.28)
		TweenService:Create(f, info, { BackgroundTransparency = 1 }):Play()
		TweenService:Create(bar, info, { BackgroundTransparency = 1 }):Play()
		TweenService:Create(l, info, { TextTransparency = 1 }):Play()
		task.wait(0.28)
		f:Destroy()
	end)
end

----------------------------------------------------------------
-- Main Window (Sidebar Tab Architecture, Lazy-Loaded Pages)
----------------------------------------------------------------
local WIN_W, WIN_H = 470, 330
local main = new("Frame", {
	Size = UDim2.fromOffset(WIN_W, WIN_H), Position = UDim2.new(0.5, -WIN_W / 2, 0.5, -WIN_H / 2),
	BackgroundColor3 = C.bg, BorderSizePixel = 0, ClipsDescendants = true,
}, gui)
corner(main, 10)
stroke(main, C.field, 1.2, 0.25)

local topBar = new("Frame", {
	Size = UDim2.new(1, 0, 0, 34), BackgroundColor3 = C.sidebar, BorderSizePixel = 0,
}, main)
corner(topBar, 10)
draggable(topBar, main)

new("TextLabel", {
	Size = UDim2.new(1, -90, 1, 0), Position = UDim2.fromOffset(12, 0), BackgroundTransparency = 1,
	Text = "ScriptHub v12   •   " .. (IS_MOBILE and "Mobile Touch" or "PC Desktop"),
	TextXAlignment = Enum.TextXAlignment.Left, TextColor3 = C.white, Font = Enum.Font.GothamBold, TextSize = 13,
}, topBar)

local function topBtn(text, xOff, color)
	return new("TextButton", {
		Size = UDim2.fromOffset(30, 30), Position = UDim2.new(1, xOff, 0, 2), BackgroundTransparency = 1,
		Text = text, TextColor3 = color, Font = Enum.Font.GothamBold, TextSize = 15,
	}, topBar)
end
local closeBtn = topBtn("✕", -32, C.danger)
local miniBtn = topBtn("—", -62, C.warn)

-- Floating Quick-Toggle Pill (great for Mobile or quick hide/show)
local floatToggle = new("TextButton", {
	Size = UDim2.fromOffset(44, 44), Position = UDim2.new(0, 14, 0.5, -22),
	BackgroundColor3 = C.sidebar, Text = "SH", TextColor3 = C.accent,
	Font = Enum.Font.GothamBold, TextSize = 14, AutoButtonColor = true,
}, gui)
corner(floatToggle, 22)
stroke(floatToggle, C.accent, 1.5, 0.2)
draggable(floatToggle, floatToggle)
floatToggle.MouseButton1Click:Connect(function()
	main.Visible = not main.Visible
end)

local body = new("Frame", {
	Size = UDim2.new(1, 0, 1, -34), Position = UDim2.fromOffset(0, 34), BackgroundTransparency = 1,
}, main)

local sidebar = new("ScrollingFrame", {
	Size = UDim2.new(0, 128, 1, -10), Position = UDim2.fromOffset(6, 5),
	BackgroundColor3 = C.sidebar, BorderSizePixel = 0, ScrollBarThickness = 2,
	AutomaticCanvasSize = Enum.AutomaticSize.Y, CanvasSize = UDim2.new(),
}, body)
corner(sidebar, 8)
new("UIListLayout", { Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder }, sidebar)
new("UIPadding", {
	PaddingTop = UDim.new(0, 6), PaddingBottom = UDim.new(0, 6),
	PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6),
}, sidebar)

local pageContainer = new("Frame", {
	Size = UDim2.new(1, -144, 1, -10), Position = UDim2.fromOffset(138, 5),
	BackgroundTransparency = 1,
}, body)

local host = nil
local order = 0
local function nextOrder() order = order + 1 return order end
local refreshers = {}
local tabs = {}
local activeTab = nil

local function createTab(name, icon, builder)
	local idx = #tabs + 1
	local tabBtn = new("TextButton", {
		Size = UDim2.new(1, 0, 0, 30), BackgroundColor3 = C.btn, BackgroundTransparency = 1,
		Text = "  " .. icon .. "  " .. name, TextColor3 = C.dim,
		Font = Enum.Font.GothamMedium, TextSize = 12, TextXAlignment = Enum.TextXAlignment.Left,
		LayoutOrder = idx,
	}, sidebar)
	corner(tabBtn, 6)

	local page = new("ScrollingFrame", {
		Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, BorderSizePixel = 0,
		ScrollBarThickness = 3, AutomaticCanvasSize = Enum.AutomaticSize.Y, CanvasSize = UDim2.new(),
		Visible = false,
	}, pageContainer)
	new("UIListLayout", { Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder }, page)
	new("UIPadding", {
		PaddingTop = UDim.new(0, 2), PaddingBottom = UDim.new(0, 8),
		PaddingLeft = UDim.new(0, 2), PaddingRight = UDim.new(0, 6),
	}, page)

	local t = { name = name, btn = tabBtn, page = page, built = false, builder = builder }
	tabs[idx] = t

	local function selectTab()
		if activeTab == t then return end
		if activeTab then
			activeTab.page.Visible = false
			activeTab.btn.BackgroundTransparency = 1
			activeTab.btn.TextColor3 = C.dim
		end
		activeTab = t
		t.page.Visible = true
		t.btn.BackgroundTransparency = 0
		t.btn.BackgroundColor3 = C.accent
		t.btn.TextColor3 = C.white
		if not t.built then
			t.built = true
			local prev = host
			host = t.page
			local ok, err = pcall(t.builder)
			host = prev
			if not ok then warn("[ScriptHub] Tab '" .. name .. "' error: " .. tostring(err)) end
		end
	end

	tabBtn.MouseButton1Click:Connect(selectTab)
	if idx == 1 then selectTab() end
end

local function headerLabel(text)
	new("TextLabel", {
		Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1,
		Text = text:upper(), TextColor3 = C.accent, Font = Enum.Font.GothamBold,
		TextSize = 11, TextXAlignment = Enum.TextXAlignment.Left, LayoutOrder = nextOrder(),
	}, host)
end

local function toggle(text, key, cb)
	local f = new("TextButton", {
		Size = UDim2.new(1, 0, 0, 32), BackgroundColor3 = C.panel, Text = "",
		AutoButtonColor = false, LayoutOrder = nextOrder(),
	}, host)
	corner(f, 7)

	new("TextLabel", {
		Size = UDim2.new(1, -60, 1, 0), Position = UDim2.fromOffset(10, 0), BackgroundTransparency = 1,
		Text = text, TextColor3 = C.white, Font = Enum.Font.GothamMedium, TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
	}, f)

	local pill = new("Frame", {
		Size = UDim2.fromOffset(38, 20), Position = UDim2.new(1, -48, 0.5, -10),
		BackgroundColor3 = C.btn, BorderSizePixel = 0,
	}, f)
	corner(pill, 10)

	local dot = new("Frame", {
		Size = UDim2.fromOffset(14, 14), Position = UDim2.fromOffset(3, 3),
		BackgroundColor3 = C.white, BorderSizePixel = 0,
	}, pill)
	corner(dot, 7)

	local function refresh()
		local on = S[key]
		pill.BackgroundColor3 = on and C.on or C.btn
		dot.Position = on and UDim2.fromOffset(21, 3) or UDim2.fromOffset(3, 3)
	end
	refresh()
	refreshers[key] = refresh

	f.MouseButton1Click:Connect(function()
		S[key] = not S[key]
		refresh()
		if cb then cb(S[key]) end
	end)
end

-- Interactive Touch + Mouse Slider with direct value TextBox
local function slider(text, key, min, max, cb)
	local f = new("Frame", {
		Size = UDim2.new(1, 0, 0, 46), BackgroundColor3 = C.panel, LayoutOrder = nextOrder(),
	}, host)
	corner(f, 7)

	new("TextLabel", {
		Size = UDim2.new(0.65, 0, 0, 20), Position = UDim2.fromOffset(10, 4), BackgroundTransparency = 1,
		Text = text, TextXAlignment = Enum.TextXAlignment.Left, TextColor3 = C.white,
		Font = Enum.Font.GothamMedium, TextSize = 12,
	}, f)

	local box = new("TextBox", {
		Size = UDim2.fromOffset(54, 20), Position = UDim2.new(1, -64, 0, 4), BackgroundColor3 = C.field,
		TextColor3 = C.white, Text = tostring(S[key]), Font = Enum.Font.Code, TextSize = 11, ClearTextOnFocus = false,
	}, f)
	corner(box, 5)

	local trackBar = new("Frame", {
		Size = UDim2.new(1, -20, 0, 8), Position = UDim2.fromOffset(10, 30),
		BackgroundColor3 = C.btn, BorderSizePixel = 0,
	}, f)
	corner(trackBar, 4)

	local fill = new("Frame", {
		Size = UDim2.fromScale(0, 1), BackgroundColor3 = C.accent, BorderSizePixel = 0,
	}, trackBar)
	corner(fill, 4)

	local function setVal(v)
		v = math.clamp(math.floor(v + 0.5), min, max)
		S[key] = v
		box.Text = tostring(v)
		local alpha = math.clamp((v - min) / math.max(max - min, 1), 0, 1)
		fill.Size = UDim2.fromScale(alpha, 1)
		if cb then cb(v) end
	end
	setVal(S[key])
	refreshers[key] = function() setVal(S[key]) end

	local sliding = false
	local function updateFromInput(inputPos)
		local rel = math.clamp((inputPos.X - trackBar.AbsolutePosition.X) / math.max(trackBar.AbsoluteSize.X, 1), 0, 1)
		setVal(min + (max - min) * rel)
	end

	trackBar.InputBegan:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
			sliding = true
			updateFromInput(i.Position)
			i.Changed:Connect(function()
				if i.UserInputState == Enum.UserInputState.End then sliding = false end
			end)
		end
	end)
	bind(UIS.InputChanged:Connect(function(i)
		if sliding and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
			updateFromInput(i.Position)
		end
	end))

	box.FocusLost:Connect(function()
		local n = tonumber(box.Text)
		if n then setVal(n) else box.Text = tostring(S[key]) end
	end)
end

local function action(text, cb, col)
	local b = new("TextButton", {
		Size = UDim2.new(1, 0, 0, 30), BackgroundColor3 = col or C.act, Font = Enum.Font.GothamMedium,
		TextSize = 12, TextColor3 = C.white, Text = text, LayoutOrder = nextOrder(),
	}, host)
	corner(b, 7)
	b.MouseButton1Click:Connect(cb)
	return b
end

local function cycle(text, options, key, cb)
	local b = new("TextButton", {
		Size = UDim2.new(1, 0, 0, 30), BackgroundColor3 = C.btn, Font = Enum.Font.GothamMedium,
		TextSize = 12, TextColor3 = C.white, LayoutOrder = nextOrder(),
	}, host)
	corner(b, 7)
	local idx = 1
	for i, v in ipairs(options) do if v == S[key] then idx = i end end
	local function refresh()
		b.Text = text .. ":  " .. tostring(S[key]) .. "   ⟳"
	end
	refresh()
	refreshers[key] = refresh
	b.MouseButton1Click:Connect(function()
		idx = idx % #options + 1
		S[key] = options[idx]
		refresh()
		if cb then cb(S[key]) end
	end)
end

----------------------------------------------------------------
-- Player Tracking Cache (Zero per-frame FindFirstChild spam)
----------------------------------------------------------------
local tracked = {}
local EMPTY = {}

local function track(p)
	if tracked[p] then return end
	local info = { player = p }
	tracked[p] = info
	local function onChar(char)
		info.char, info.hrp, info.head, info.hum, info.parts = char, nil, nil, nil, nil
		task.spawn(function()
			local hrp = char:WaitForChild("HumanoidRootPart", 10)
			local hum = char:WaitForChild("Humanoid", 10)
			local head = char:WaitForChild("Head", 10)
			if info.char == char then info.hrp, info.hum, info.head = hrp, hum, head end
		end)
	end
	info.c1 = p.CharacterAdded:Connect(onChar)
	info.c2 = p.CharacterRemoving:Connect(function(c)
		if info.char == c then info.char, info.hrp, info.head, info.hum, info.parts = nil, nil, nil, nil, nil end
	end)
	if p.Character then onChar(p.Character) end
end

local function getParts(info)
	local char = info.char
	if not char then return EMPTY end
	local now = os.clock()
	if not info.parts or now - (info.partsAt or 0) > 1.5 then
		local t, n = {}, 0
		for _, d in ipairs(char:GetDescendants()) do
			if d:IsA("BasePart") then n = n + 1; t[n] = d end
		end
		info.parts, info.partsAt = t, now
	end
	return info.parts
end

----------------------------------------------------------------
-- Hitbox Expander
----------------------------------------------------------------
local originals = setmetatable({}, { __mode = "k" })
local hbSize = Vector3.new(S.hitboxSize, S.hitboxSize, S.hitboxSize)
local HB_COLOR = BrickColor.new("Really blue")

function F.restoreHitbox()
	for part, o in pairs(originals) do
		pcall(function()
			part.Size = o.Size; part.Transparency = o.Transparency
			part.Color = o.Color; part.Material = o.Material; part.CanCollide = o.CanCollide
		end)
	end
	table.clear(originals)
end

local function updateHitbox()
	local s = S.hitboxSize
	if hbSize.X ~= s then hbSize = Vector3.new(s, s, s) end
	for p, info in pairs(tracked) do
		local hrp = info.hrp
		if p ~= lp and not whitelist[p.UserId] and hrp and hrp.Parent then
			if not originals[hrp] then
				originals[hrp] = {
					Size = hrp.Size, Transparency = hrp.Transparency,
					Color = hrp.Color, Material = hrp.Material, CanCollide = hrp.CanCollide
				}
				hrp.BrickColor = HB_COLOR
				hrp.Material = Enum.Material.Neon
				hrp.CanCollide = false
			end
			if hrp.Size ~= hbSize then hrp.Size = hbSize end
			if hrp.Transparency ~= 0.7 then hrp.Transparency = 0.7 end
		end
	end
end

----------------------------------------------------------------
-- Aimbot & Universal Silent Aim Engine (PC + Mobile)
----------------------------------------------------------------
local AIM_PARTS = { "Head", "HumanoidRootPart", "Random" }
local AIM_MODES = { "HoldOrBtn", "Always" }
local rayParams = RaycastParams.new()
rayParams.FilterType = Enum.RaycastFilterType.Exclude
rayParams.IgnoreWater = true

-- Native UI FOV Circle & Target Tracer Line (works on 100% of PC & Mobile executors)
local fovCircle = new("Frame", {
	Size = UDim2.fromOffset(S.aimFov * 2, S.aimFov * 2),
	AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5),
	BackgroundTransparency = 1, Visible = false,
}, espLayer)
corner(fovCircle, 9999)
local fovStroke = new("UIStroke", {
	Color = C.accent, Thickness = 1.5, Transparency = 0.25,
}, fovCircle)

local targetLine = new("Frame", {
	BorderSizePixel = 0, AnchorPoint = Vector2.new(0.5, 0.5),
	BackgroundColor3 = C.warn, Visible = false,
}, espLayer)

-- Mobile Floating Aim Lock Button
local aimLocked = false
local rmbHeld = false

local mobileAimBtn = new("TextButton", {
	Size = UDim2.fromOffset(54, 54), Position = UDim2.new(1, -140, 0.62, 0),
	BackgroundColor3 = C.panel, BackgroundTransparency = 0.2,
	Text = "🎯\nOFF", TextColor3 = C.white, Font = Enum.Font.GothamBold, TextSize = 12,
	Visible = false,
}, gui)
corner(mobileAimBtn, 27)
local mobileAimStroke = stroke(mobileAimBtn, C.dim, 2, 0.2)
draggable(mobileAimBtn, mobileAimBtn)

local function refreshAimLockVisual()
	mobileAimBtn.Text = aimLocked and "🎯\nLOCK" or "🎯\nOFF"
	mobileAimBtn.BackgroundColor3 = aimLocked and C.on or C.panel
	mobileAimStroke.Color = aimLocked and C.on or C.dim
end

mobileAimBtn.MouseButton1Click:Connect(function()
	aimLocked = not aimLocked
	refreshAimLockVisual()
end)

function F.refreshAimUI()
	mobileAimBtn.Visible = S.aimbot and (S.aimMode == "HoldOrBtn")
	if not S.aimbot then
		aimLocked = false
		refreshAimLockVisual()
	end
end

bind(UIS.InputBegan:Connect(function(inp, gp)
	if inp.UserInputType == Enum.UserInputType.MouseButton2 then
		rmbHeld = true
	elseif not gp and inp.KeyCode == Enum.KeyCode.Q and S.aimbot then
		aimLocked = not aimLocked
		refreshAimLockVisual()
		F.notify("Aimbot Lock: " .. (aimLocked and "ON" or "OFF"), aimLocked and "ok" or "info", 1.2)
	end
end))
bind(UIS.InputEnded:Connect(function(inp)
	if inp.UserInputType == Enum.UserInputType.MouseButton2 then
		rmbHeld = false
	end
end))

local function getAimScreenOrigin(cam)
	if IS_MOBILE or UIS.MouseBehavior == Enum.MouseBehavior.LockCenter then
		local vp = cam.ViewportSize
		return Vector2.new(vp.X * 0.5, vp.Y * 0.5)
	end
	return UIS:GetMouseLocation()
end

local function isVisible(cam, targetPart, targetChar)
	if not S.aimWall then return true end
	local me = tracked[lp]
	rayParams.FilterDescendantsInstances = me and me.char and { me.char, cam } or { cam }
	local origin = cam.CFrame.Position
	local dir = targetPart.Position - origin
	local hit = workspace:Raycast(origin, dir, rayParams)
	return (not hit) or hit.Instance:IsDescendantOf(targetChar)
end

local currentTarget = nil -- { player, part, predictedPos, screenPos }

local function findBestTarget(cam, origin2D)
	local bestDist = S.aimFov
	local best = nil
	for p, info in pairs(tracked) do
		if p ~= lp and not whitelist[p.UserId] then
			if not (S.aimTeam and p.Team ~= nil and p.Team == lp.Team) then
				local char, hrp, hum = info.char, info.hrp, info.hum
				if char and hrp and hum and hum.Health > 0 then
					local part
					if S.aimPart == "Head" then
						part = info.head or hrp
					elseif S.aimPart == "Random" then
						part = (math.random(1, 2) == 1 and info.head) or hrp
					else
						part = hrp
					end
					if part and part.Parent then
						local predPos = part.Position + (hrp.AssemblyLinearVelocity * (S.aimPredict / 100))
						local v3, onScreen = cam:WorldToViewportPoint(predPos)
						if onScreen then
							local sPos = Vector2.new(v3.X, v3.Y)
							local dist2D = (sPos - origin2D).Magnitude
							if dist2D <= bestDist and isVisible(cam, part, char) then
								bestDist = dist2D
								best = { player = p, part = part, predictedPos = predPos, screenPos = sPos }
							end
						end
					end
				end
			end
		end
	end
	return best
end

-- Expose silent aim resolver to global env so hooks never stack on re-execution
env.__ScriptHubGetSilentTarget = function()
	if not S.silentAim or not currentTarget then return nil end
	if math.random(1, 100) > S.silentChance then return nil end
	return currentTarget
end

-- Install metamethod hooks once per game session
if not env.__ScriptHubHooksInstalled then
	pcall(function()
		if type(hookmetamethod) == "function" and type(getnamecallmethod) == "function" then
			local check = (type(checkcaller) == "function" and checkcaller) or function() return false end
			local oldNamecall
			oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
				if not check() and self == workspace then
					local target = env.__ScriptHubGetSilentTarget and env.__ScriptHubGetSilentTarget()
					if target and target.part and target.part.Parent then
						local method = getnamecallmethod()
						local args = { ... }
						if method == "Raycast" and typeof(args[1]) == "Vector3" and typeof(args[2]) == "Vector3" then
							local origin = args[1]
							local mag = args[2].Magnitude
							args[2] = (target.predictedPos - origin).Unit * mag
							return oldNamecall(self, unpack(args))
						elseif (method == "FindPartOnRay" or method == "FindPartOnRayWithIgnoreList" or method == "FindPartOnRayWithWhitelist")
							and typeof(args[1]) == "Ray" then
							local r = args[1]
							local mag = r.Direction.Magnitude
							args[1] = Ray.new(r.Origin, (target.predictedPos - r.Origin).Unit * mag)
							return oldNamecall(self, unpack(args))
						end
					end
				end
				return oldNamecall(self, ...)
			end)

			local mouseObj = lp:GetMouse()
			local oldIndex
			oldIndex = hookmetamethod(game, "__index", function(self, k)
				if not check() and self == mouseObj then
					local target = env.__ScriptHubGetSilentTarget and env.__ScriptHubGetSilentTarget()
					if target and target.part and target.part.Parent then
						if k == "Hit" then
							return CFrame.new(target.predictedPos)
						elseif k == "Target" then
							return target.part
						elseif k == "UnitRay" then
							local cam = workspace.CurrentCamera
							local orig = cam and cam.CFrame.Position or Vector3.zero
							return Ray.new(orig, (target.predictedPos - orig).Unit)
						end
					end
				end
				return oldIndex(self, k)
			end)
			env.__ScriptHubHooksInstalled = true
		end
	end)
end

----------------------------------------------------------------
-- Threat / Aim Radar Banner
----------------------------------------------------------------
local threatBanner = new("TextLabel", {
	Size = UDim2.fromOffset(280, 24), AnchorPoint = Vector2.new(0.5, 0),
	Position = UDim2.new(0.5, 0, 0, 12), BackgroundColor3 = Color3.fromRGB(40, 15, 20),
	BackgroundTransparency = 0.2, TextColor3 = C.danger, Font = Enum.Font.GothamBold,
	TextSize = 12, Text = "", Visible = false,
}, gui)
corner(threatBanner, 6)
stroke(threatBanner, C.danger, 1, 0.3)

local threatAcc = 0
local function updateThreatRadar(dt)
	threatAcc = threatAcc + dt
	if threatAcc < 0.15 then return end
	threatAcc = 0
	if not S.threatWarn then
		threatBanner.Visible = false
		return
	end
	local me = tracked[lp]
	local myHrp = me and me.hrp
	if not myHrp then
		threatBanner.Visible = false
		return
	end
	local myPos = myHrp.Position
	local aimingAtMe, closestBehind, behindDist = nil, nil, 28

	for p, info in pairs(tracked) do
		if p ~= lp and not whitelist[p.UserId] and not (S.aimTeam and p.Team ~= nil and p.Team == lp.Team) then
			local hrp, hum = info.hrp, info.hum
			if hrp and hum and hum.Health > 0 then
				local offset = myPos - hrp.Position
				local dist = offset.Magnitude
				if dist < 220 and dist > 1 then
					local dot = hrp.CFrame.LookVector:Dot(offset.Unit)
					if dot > 0.955 then
						aimingAtMe = p.Name .. (" (%dm)"):format(math.floor(dist))
						break
					end
				end
				if dist < behindDist then
					local myDot = myHrp.CFrame.LookVector:Dot((hrp.Position - myPos).Unit)
					if myDot < -0.35 then
						behindDist = dist
						closestBehind = p.Name .. (" (%dm behind)"):format(math.floor(dist))
					end
				end
			end
		end
	end

	if aimingAtMe then
		threatBanner.Text = "⚠ AIM ALERT: " .. aimingAtMe .. " is looking at you!"
		threatBanner.Visible = true
	elseif closestBehind then
		threatBanner.Text = "⚠ PROXIMITY: " .. closestBehind
		threatBanner.Visible = true
	else
		threatBanner.Visible = false
	end
end

----------------------------------------------------------------
-- Dual-Engine Chat Spy (TextChatService + Legacy Chat)
----------------------------------------------------------------
local chatLogs = {}
local seenMsgIds = {}
local chatLogList = nil -- ScrollingFrame populated when Chat Spy tab opens

local function appendChatGui(entry)
	if not chatLogList then return end
	local lbl = new("TextButton", {
		Size = UDim2.new(1, -4, 0, 0), AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = entry.isPrivate and Color3.fromRGB(52, 38, 66) or C.panel,
		Text = entry.formatted, TextColor3 = entry.isPrivate and Color3.fromRGB(255, 210, 110) or C.white,
		Font = Enum.Font.Code, TextSize = 11, TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left, LayoutOrder = entry.id,
	}, chatLogList)
	corner(lbl, 5)
	new("UIPadding", {
		PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),
		PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6),
	}, lbl)
	lbl.MouseButton1Click:Connect(function()
		if type(setclipboard) == "function" then
			pcall(setclipboard, entry.rawCopy)
			F.notify("Copied chat line to clipboard", "ok", 1.5)
		end
	end)
end

local function recordChat(senderName, channelName, text, isPrivate)
	if not S.chatSpy then return end
	if not isPrivate and not S.spyPublic then return end

	local tag = isPrivate and ("[SPY • " .. channelName .. "]") or ("[" .. channelName .. "]")
	local formatted = ("%s %s: %s"):format(tag, senderName, text)
	local entry = {
		id = #chatLogs + 1,
		formatted = formatted,
		rawCopy = ("[%s] %s: %s"):format(os.date("%H:%M:%S"), senderName, text),
		isPrivate = isPrivate,
	}
	chatLogs[#chatLogs + 1] = entry
	if #chatLogs > 80 then table.remove(chatLogs, 1) end
	appendChatGui(entry)

	if isPrivate and S.spyEchoWhisper then
		F.notify(senderName .. ": " .. text:sub(1, 32), "warn", 3.5)
	end
end

-- 1) Modern TextChatService Hook
pcall(function()
	bind(TextChatService.MessageReceived:Connect(function(msg)
		if not msg or not msg.Text or msg.Text == "" then return end
		if msg.MessageId and seenMsgIds[msg.MessageId] then return end
		if msg.MessageId then seenMsgIds[msg.MessageId] = true end

		local src = msg.TextSource
		local sender = (src and Players:GetPlayerByUserId(src.UserId))
		local senderName = sender and sender.Name or (src and tostring(src.UserId) or "System")
		local chan = msg.TextChannel and msg.TextChannel.Name or "Chat"
		local isPriv = (chan:find("RBXWhisper") ~= nil) or (chan:find("RBXTeam") ~= nil) or (msg.Text:sub(1, 2):lower() == "/w")
		recordChat(senderName, chan, msg.Text, isPriv)
	end))
end)

-- 2) Legacy DefaultChatSystemChatEvents Hook
task.spawn(function()
	local events = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents", 5)
	local onMsg = events and events:WaitForChild("OnMessageDoneFiltering", 5)
	if onMsg then
		bind(onMsg.OnClientEvent:Connect(function(data, channel)
			if type(data) ~= "table" then return end
			local speaker = tostring(data.FromSpeaker or "Unknown")
			local msg = tostring(data.Message or "")
			local chan = tostring(channel or data.OriginalChannel or "All")
			local isPriv = (chan ~= "All" and chan ~= "System") or (msg:sub(1, 2):lower() == "/w")
			recordChat(speaker, chan, msg, isPriv)
		end))
	end
end)

----------------------------------------------------------------
-- ESP (Box + Chams with CIELUV Health Interpolation)
----------------------------------------------------------------
local ESP_MODES = { "Box", "Chams" }
local ESP = { objs = {}, mode = nil }
local chamFolder
local RED, GREEN = Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 255, 0)
local HP_LUT = {}
do
	local clamp, C3 = math.clamp, Color3.new
	local black = C3(0, 0, 0)
	local function toLuv(c)
		local r, g, b = c.R, c.G, c.B
		r = r < 0.0404482362771076 and r / 12.92 or 0.87941546140213 * (r + 0.055) ^ 2.4
		g = g < 0.0404482362771076 and g / 12.92 or 0.87941546140213 * (g + 0.055) ^ 2.4
		b = b < 0.0404482362771076 and b / 12.92 or 0.87941546140213 * (b + 0.055) ^ 2.4
		local y = 0.2125862307855956 * r + 0.71517030370341085 * g + 0.0722004986433362 * b
		local z = 3.6590806972265883 * r + 11.4426895800574232 * g + 4.1149915024264843 * b
		local l = y > 0.008856451679035631 and 116 * y ^ (1 / 3) - 16 or 903.296296296296 * y
		if z > 1e-15 then
			local x = 0.9257063972951867 * r - 0.8333736323779866 * g - 0.09209820666085898 * b
			return l, l * x / z, l * (9 * y / z - 0.46832)
		end
		return l, -0.19783 * l, -0.46832 * l
	end
	local function lerpLuv(c0, c1)
		local l0, u0, v0 = toLuv(c0)
		local l1, u1, v1 = toLuv(c1)
		return function(t)
			local l = (1 - t) * l0 + t * l1
			if l < 0.0197955 then return black end
			local u = ((1 - t) * u0 + t * u1) / l + 0.19783
			local v = ((1 - t) * v0 + t * v1) / l + 0.46832
			local y = (l + 16) / 116
			y = y > 0.206896551724137931 and y * y * y or 0.12841854934601665 * y - 0.01771290335807126
			local x = y * u / v
			local z = y * ((3 - 0.75 * u) / v - 5)
			local r = 7.2914074 * x - 1.5372080 * y - 0.4986286 * z
			local g = -2.1800940 * x + 1.8757561 * y + 0.0415175 * z
			local b = 0.1253477 * x - 0.2040211 * y + 1.0569959 * z
			if r < 0 and r < g and r < b then r, g, b = 0, g - r, b - r
			elseif g < 0 and g < b then r, g, b = r - g, 0, b - g
			elseif b < 0 then r, g, b = r - b, g - b, 0 end
			return C3(
				clamp(r < 3.1306684425e-3 and 12.92 * r or 1.055 * r ^ (1 / 2.4) - 0.055, 0, 1),
				clamp(g < 3.1306684425e-3 and 12.92 * g or 1.055 * g ^ (1 / 2.4) - 0.055, 0, 1),
				clamp(b < 3.1306684425e-3 and 12.92 * b or 1.055 * b ^ (1 / 2.4) - 0.055, 0, 1)
			)
		end
	end
	local lerp = lerpLuv(RED, GREEN)
	for i = 0, 20 do HP_LUT[i + 1] = lerp(i / 20) end
end
local function hpColor(r) return HP_LUT[math.floor(r * 20 + 0.5) + 1] end

local TOP_OFF, BOT_OFF = Vector3.new(0, 2.8, 0), Vector3.new(0, 3.2, 0)
local function teamColor(p)
	if whitelist[p.UserId] then return Color3.fromRGB(80, 220, 255) end
	return p.Team and p.TeamColor.Color or Color3.fromRGB(255, 70, 70)
end

local function newBox()
	local o = { keys = { "box", "name", "hpBg", "tracer" } }
	o.box = new("Frame", { BackgroundTransparency = 1, BorderSizePixel = 0, Visible = false }, espLayer)
	o.stroke = new("UIStroke", { Thickness = 1.5 }, o.box)
	o.name = new("TextLabel", {
		BackgroundTransparency = 1, Size = UDim2.fromOffset(200, 14), AnchorPoint = Vector2.new(0.5, 1),
		Font = Enum.Font.Code, TextSize = 13, TextStrokeTransparency = 0, Visible = false,
	}, espLayer)
	o.hpBg = new("Frame", { BackgroundColor3 = Color3.new(0, 0, 0), BorderSizePixel = 0, Visible = false }, espLayer)
	o.hpFill = new("Frame", {
		BorderSizePixel = 0, AnchorPoint = Vector2.new(0, 1), Position = UDim2.new(0, 0, 1, 0),
	}, o.hpBg)
	o.tracer = new("Frame", { BorderSizePixel = 0, AnchorPoint = Vector2.new(0.5, 0.5), Visible = false }, espLayer)
	return o
end

local function newChams()
	if not chamFolder then
		chamFolder = new("Folder", { Name = "ScriptHubChams" }, gui.Parent)
	end
	local o = { keys = { "hl", "bb" } }
	o.hl = new("Highlight", {
		FillTransparency = 0.6, OutlineTransparency = 0, Enabled = false,
		DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
	}, chamFolder)
	o.bb = new("BillboardGui", {
		AlwaysOnTop = true, Size = UDim2.fromOffset(200, 30), StudsOffset = Vector3.new(0, 3.6, 0), Enabled = false,
	}, chamFolder)
	o.txt = new("TextLabel", {
		Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Font = Enum.Font.Code, TextSize = 13,
		TextStrokeTransparency = 0, TextYAlignment = Enum.TextYAlignment.Bottom,
	}, o.bb)
	return o
end

function ESP.add(p)
	if ESP.objs[p] or p == lp or not ESP.mode then return end
	ESP.objs[p] = (ESP.mode == "Chams") and newChams() or newBox()
end

function ESP.remove(p)
	local o = ESP.objs[p]
	if not o then return end
	for _, k in ipairs(o.keys) do o[k]:Destroy() end
	ESP.objs[p] = nil
end

function ESP.clear()
	for p in pairs(ESP.objs) do ESP.remove(p) end
end

function F.espRefresh()
	local want = S.esp and S.espMode or nil
	if ESP.mode == want then return end
	ESP.clear()
	ESP.mode = want
	if want then
		for p in pairs(tracked) do ESP.add(p) end
	end
end

local function hideBox(o)
	o.box.Visible = false; o.name.Visible = false
	o.hpBg.Visible = false; o.tracer.Visible = false
end

local function drawBox(o, p, info, cam, myPos, vp)
	local hrp, hum = info and info.hrp, info and info.hum
	if not (hrp and hum and hum.Health > 0) then return hideBox(o) end
	local hp = hrp.Position
	local dist = myPos and (hp - myPos).Magnitude or 0
	if dist > S.espDist then return hideBox(o) end
	local pos, onScreen = cam:WorldToViewportPoint(hp)
	if not onScreen then return hideBox(o) end

	local top = cam:WorldToViewportPoint(hp + TOP_OFF)
	local bot = cam:WorldToViewportPoint(hp - BOT_OFF)
	local h = math.abs(bot.Y - top.Y)
	local w = h * 0.6
	local color = (currentTarget and currentTarget.player == p) and C.warn or teamColor(p)

	o.box.Visible = S.espBox
	if S.espBox then
		o.box.Position = UDim2.fromOffset(pos.X - w / 2, top.Y)
		o.box.Size = UDim2.fromOffset(w, h)
		o.stroke.Color = color
	end

	o.name.Visible = S.espName
	if S.espName then
		o.name.Position = UDim2.fromOffset(pos.X, top.Y - 2)
		o.name.TextColor3 = color
		o.name.Text = ("%s [%dm]"):format(p.Name, math.floor(dist))
	end

	o.hpBg.Visible = S.espHealth
	if S.espHealth then
		o.hpBg.Position = UDim2.fromOffset(pos.X - w / 2 - 5, top.Y)
		o.hpBg.Size = UDim2.fromOffset(3, h)
		local r = math.clamp(hum.Health / math.max(hum.MaxHealth, 1), 0, 1)
		o.hpFill.Size = UDim2.new(1, 0, r, 0)
		o.hpFill.BackgroundColor3 = hpColor(r)
	end

	o.tracer.Visible = S.espTracer
	if S.espTracer then
		local fx, fy = vp.X / 2, vp.Y
		local dx, dy = pos.X - fx, bot.Y - fy
		o.tracer.Size = UDim2.fromOffset(math.sqrt(dx * dx + dy * dy), 1)
		o.tracer.Position = UDim2.fromOffset(fx + dx / 2, fy + dy / 2)
		o.tracer.Rotation = math.deg(math.atan2(dy, dx))
		o.tracer.BackgroundColor3 = color
	end
end

local function updateBoxESP(cam)
	local me = tracked[lp]
	local myPos = me and me.hrp and me.hrp.Position
	local vp = cam.ViewportSize
	for p, o in pairs(ESP.objs) do
		drawBox(o, p, tracked[p], cam, myPos, vp)
	end
end

local chamAcc = 0
local function updateChams(dt)
	chamAcc = chamAcc + dt
	if chamAcc < 0.1 then return end
	chamAcc = 0
	local me = tracked[lp]
	local myPos = me and me.hrp and me.hrp.Position
	for p, o in pairs(ESP.objs) do
		local info = tracked[p]
		local char, hrp, hum = info and info.char, info and info.hrp, info and info.hum
		local show = char and hrp and hum and hum.Health > 0
		local dist = 0
		if show and myPos then
			dist = (hrp.Position - myPos).Magnitude
			if dist > S.espDist then show = false end
		end
		if not show then
			o.hl.Enabled = false; o.bb.Enabled = false
		else
			local color = teamColor(p)
			if o.hl.Adornee ~= char then o.hl.Adornee = char end
			if o.bb.Adornee ~= hrp then o.bb.Adornee = hrp end
			o.hl.FillColor = color
			o.hl.OutlineColor = color
			o.hl.Enabled = S.espBox
			o.bb.Enabled = S.espName or S.espHealth
			local l1 = S.espName and ("%s [%dm]"):format(p.Name, math.floor(dist)) or ""
			local l2 = S.espHealth and ("HP %d/%d"):format(math.floor(hum.Health), math.floor(hum.MaxHealth)) or ""
			o.txt.Text = l1 .. ((l1 ~= "" and l2 ~= "") and "\n" or "") .. l2
			local r = math.clamp(hum.Health / math.max(hum.MaxHealth, 1), 0, 1)
			o.txt.TextColor3 = S.espHealth and hpColor(r) or color
		end
	end
end

for _, p in ipairs(Players:GetPlayers()) do track(p) end
bind(Players.PlayerAdded:Connect(function(p)
	track(p)
	ESP.add(p)
end))
bind(Players.PlayerRemoving:Connect(function(p)
	ESP.remove(p)
	local info = tracked[p]
	if info then
		if info.c1 then info.c1:Disconnect() end
		if info.c2 then info.c2:Disconnect() end
		tracked[p] = nil
	end
	originals[p] = nil
end))

----------------------------------------------------------------
-- CFly + TPWalk
----------------------------------------------------------------
local controls
task.spawn(function()
	pcall(function()
		controls = require(lp:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule", 5)):GetControls()
	end)
end)

local function moveInput(hum, cam)
	if controls then
		local okc, mv = pcall(function() return controls:GetMoveVector() end)
		if okc and mv then return -mv.Z, mv.X end
	end
	local md = hum.MoveDirection
	local lf = Vector3.new(cam.CFrame.LookVector.X, 0, cam.CFrame.LookVector.Z)
	local rf = Vector3.new(cam.CFrame.RightVector.X, 0, cam.CFrame.RightVector.Z)
	if lf.Magnitude < 0.01 then return 0, 0 end
	return md:Dot(lf.Unit), md:Dot(rf.Unit)
end

local upHeld, downHeld = false, false
local function flyBtn(text, y, setter)
	local b = new("TextButton", {
		Size = UDim2.fromOffset(48, 48), Position = UDim2.new(1, -68, 0.5, y), BackgroundColor3 = C.panel,
		BackgroundTransparency = 0.25, Text = text, TextColor3 = C.white, Font = Enum.Font.GothamBold,
		TextSize = 18, Visible = false,
	}, gui)
	corner(b, 24)
	stroke(b, C.accent, 1.2, 0.3)
	b.MouseButton1Down:Connect(function() setter(true) end)
	b.MouseButton1Up:Connect(function() setter(false) end)
	b.MouseLeave:Connect(function() setter(false) end)
	return b
end
local upBtn = flyBtn("▲", -58, function(v) upHeld = v end)
local downBtn = flyBtn("▼", 8, function(v) downHeld = v end)

function F.setFly(on)
	upBtn.Visible, downBtn.Visible = on, on
	upHeld, downHeld = false, false
	if not on then
		local me = tracked[lp]
		if me and me.hum then me.hum.PlatformStand = false end
	end
end

----------------------------------------------------------------
-- Fullbright / FOV / Player Mods / TP Tool / Invisibility
----------------------------------------------------------------
local lightOrig = {
	Brightness = Lighting.Brightness, ClockTime = Lighting.ClockTime, FogEnd = Lighting.FogEnd,
	GlobalShadows = Lighting.GlobalShadows, Ambient = Lighting.Ambient, OutdoorAmbient = Lighting.OutdoorAmbient,
}
local FB_AMBIENT = Color3.fromRGB(178, 178, 178)
function F.restoreLight()
	for k, v in pairs(lightOrig) do pcall(function() Lighting[k] = v end) end
end

local origFov = workspace.CurrentCamera and workspace.CurrentCamera.FieldOfView or 70
function F.restoreFov()
	local cam = workspace.CurrentCamera
	if cam then cam.FieldOfView = origFov end
end

local origGravity = workspace.Gravity
local orig = {}
local lastSafe

function F.restorePlayer()
	local me = tracked[lp]
	local h = me and me.hum
	if h then
		if orig.ws then h.WalkSpeed = orig.ws end
		if orig.jp then h.JumpPower = orig.jp; h.UseJumpPower = orig.useJP end
	end
	orig.ws, orig.jp = nil, nil
	workspace.Gravity = origGravity
end

local mouse = lp:GetMouse()
local tpTool

function F.removeTpTool()
	if tpTool then tpTool:Destroy() tpTool = nil end
end

function F.giveTpTool()
	F.removeTpTool()
	local backpack = lp:FindFirstChildOfClass("Backpack")
	if not backpack then return end
	tpTool = new("Tool", { Name = "TP Tool", RequiresHandle = false, CanBeDropped = false, ToolTip = "Tap to teleport" })
	tpTool.Activated:Connect(function()
		local me = tracked[lp]
		local hrp = me and me.hrp
		if hrp and mouse.Hit then
			local rot = hrp.CFrame - hrp.CFrame.Position
			hrp.CFrame = CFrame.new(mouse.Hit.Position + Vector3.new(0, 3, 0)) * rot
		end
	end)
	tpTool.Parent = backpack
end

local INVIS_POSITION = Vector3.new(-25.95, 84, 3537.55)
local invisBusy = false

local function setCharacterTransparency(character, transparency)
	for _, d in ipairs(character:GetDescendants()) do
		if (d:IsA("BasePart") or d:IsA("Decal")) and d.Name ~= "HumanoidRootPart" then
			d.Transparency = transparency
		end
	end
end

function F.setInvisible(on)
	if invisBusy then
		S.invis = not on
		if refreshers.invis then refreshers.invis() end
		return
	end
	local character = lp.Character
	if on then
		invisBusy = true
		local hrp = character and character:FindFirstChild("HumanoidRootPart")
		local torso = character and (character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso"))
		if hrp and torso then
			local savedPosition = hrp.CFrame
			character:MoveTo(INVIS_POSITION)
			task.wait(0.15)
			if lp.Character == character then
				local seat = new("Seat", { Name = "invischair", Anchored = false, CanCollide = false, Transparency = 1 })
				seat.Position = INVIS_POSITION
				seat.Parent = workspace
				new("Weld", { Part0 = seat, Part1 = torso }, seat)
				task.wait()
				seat.CFrame = savedPosition
				setCharacterTransparency(character, 0.5)
			else
				S.invis = false
			end
		else
			S.invis = false
		end
		invisBusy = false
	else
		local chair = workspace:FindFirstChild("invischair")
		if chair then chair:Destroy() end
		if character then setCharacterTransparency(character, 0) end
	end
	if refreshers.invis then refreshers.invis() end
end

bind(UIS.InputBegan:Connect(function(inp, processed)
	if not processed and inp.KeyCode == Enum.KeyCode.X then
		S.invis = not S.invis
		if refreshers.invis then refreshers.invis() end
		task.spawn(F.setInvisible, S.invis)
	elseif not processed and inp.KeyCode == Enum.KeyCode.RightShift then
		main.Visible = not main.Visible
	end
end))

----------------------------------------------------------------
-- Gaze Animations (R15)
----------------------------------------------------------------
local GAZE_CATS = { "Idle", "Walk", "Run", "Jump", "Fall", "Swim", "SwimIdle", "Climb" }
local VOTE_PLACE = 7041939546
local gazeData
local gazeSel = {}
local gazeDefaults = {}

local function getGaze()
	if not gazeData then gazeData = buildGazeData() end
	return gazeData
end

local function getHum()
	local me = tracked[lp]
	return me and me.hum
end

local function isR15()
	local h = getHum()
	return h ~= nil and h.RigType == Enum.HumanoidRigType.R15
end

local GAZE_PATHS = {
	Walk = { "walk", { "WalkAnim" } }, Run = { "run", { "RunAnim" } }, Jump = { "jump", { "JumpAnim" } },
	Fall = { "fall", { "FallAnim" } }, Swim = { "swim", { "Swim" } }, SwimIdle = { "swimidle", { "SwimIdle" } },
	Climb = { "climb", { "ClimbAnim" } }, Idle = { "idle", { "Animation1", "Animation2" } },
}

local function gazeInstances(animate, cat)
	local spec = GAZE_PATHS[cat]
	if not spec then return nil end
	local folder = animate:FindFirstChild(spec[1])
	if not folder then return nil end
	local out = {}
	for i, n in ipairs(spec[2]) do
		out[i] = folder:FindFirstChild(n)
		if not out[i] then return nil end
	end
	return out
end

local function restartAnimate()
	local char = lp.Character
	local animate = char and char:FindFirstChild("Animate")
	local hum = getHum()
	if not (animate and hum) then return end
	pcall(function()
		animate.Disabled = true
		local animator = hum:FindFirstChildOfClass("Animator")
		if animator then
			for _, t in ipairs(animator:GetPlayingAnimationTracks()) do t:Stop(0) end
		end
		animate.Disabled = false
	end)
end

local function setGaze(cat, ids)
	local char = lp.Character
	local animate = char and char:FindFirstChild("Animate")
	if not animate then return false end
	local insts = gazeInstances(animate, cat)
	if not insts then return false end
	if not gazeDefaults[cat] then
		local d = {}
		for i, inst in ipairs(insts) do d[i] = inst.AnimationId end
		gazeDefaults[cat] = d
	end
	for i, inst in ipairs(insts) do
		inst.AnimationId = ids[i] or ids[1]
	end
	return true
end

local function entryIds(entry)
	return { "rbxassetid://" .. tostring(entry[2]), "rbxassetid://" .. tostring(entry[3] or entry[2]) }
end

local function selectGaze(cat, entry)
	if not isR15() then return end
	gazeSel[cat] = entry
	if setGaze(cat, entryIds(entry)) then restartAnimate() end
end

local function resetGaze(cat)
	gazeSel[cat] = nil
	local d = gazeDefaults[cat]
	if d then
		setGaze(cat, d)
		restartAnimate()
	end
end

----------------------------------------------------------------
-- Respawn & Idle Hooks
----------------------------------------------------------------
bind(lp.CharacterAdded:Connect(function(char)
	local chair = workspace:FindFirstChild("invischair")
	if chair then chair:Destroy() end
	S.invis = false
	if refreshers.invis then refreshers.invis() end

	gazeDefaults = {}
	lastSafe = nil

	task.spawn(function()
		if S.tptool then
			task.wait(0.5)
			F.giveTpTool()
		end
		if next(gazeSel) ~= nil then
			local animate = char:WaitForChild("Animate", 10)
			if not animate then return end
			task.wait(1)
			if lp.Character ~= char then return end
			for cat, entry in pairs(gazeSel) do
				setGaze(cat, entryIds(entry))
			end
			restartAnimate()
		end
	end)
end))

bind(UIS.JumpRequest:Connect(function()
	if S.infjump and not S.fly then
		local hum = getHum()
		if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
	end
end))

bind(lp.Idled:Connect(function()
	if not S.antiafk then return end
	local ok = pcall(function()
		local vim = game:GetService("VirtualInputManager")
		vim:SendMouseButtonEvent(0, 0, 2, true, nil, 0)
		task.wait(0.5)
		vim:SendMouseButtonEvent(0, 0, 2, false, nil, 0)
	end)
	if not ok then
		pcall(function()
			local vu = game:GetService("VirtualUser")
			vu:CaptureController()
			vu:ClickButton2(Vector2.new())
		end)
	end
end))

----------------------------------------------------------------
-- Floating Stats + Sparkline Graph
----------------------------------------------------------------
local statsLabel = new("TextLabel", {
	Size = UDim2.fromOffset(235, 24), Position = UDim2.fromOffset(10, 10), BackgroundColor3 = C.bg,
	BackgroundTransparency = 0.25, TextColor3 = Color3.fromRGB(80, 245, 160), Font = Enum.Font.Code,
	TextSize = 13, Text = "FPS: -- | Ping: --", Visible = S.stats,
}, gui)
corner(statsLabel, 6)
stroke(statsLabel, C.field, 1, 0.4)
draggable(statsLabel, statsLabel)

local GRAPH_N = 30
local GOOD, MID, BAD = Color3.fromRGB(90, 220, 130), Color3.fromRGB(255, 205, 90), Color3.fromRGB(255, 100, 100)
local graph
local fpsHist, pingHist = {}, {}

function F.setGraph(on)
	if on and not graph then
		local panel = new("Frame", {
			Size = UDim2.fromOffset(166, 90), Position = UDim2.fromOffset(10, 40),
			BackgroundColor3 = C.bg, BackgroundTransparency = 0.25, BorderSizePixel = 0,
		}, gui)
		corner(panel, 6)
		stroke(panel, C.field, 1, 0.4)
		local cap = new("TextLabel", {
			Size = UDim2.new(1, -8, 0, 14), Position = UDim2.fromOffset(8, 2), BackgroundTransparency = 1,
			Text = "FPS / Ping", TextColor3 = C.dim, Font = Enum.Font.Code, TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
		}, panel)
		local function row(y)
			local holder = new("Frame", {
				Size = UDim2.fromOffset(GRAPH_N * 5, 30), Position = UDim2.fromOffset(8, y), BackgroundTransparency = 1,
			}, panel)
			local bars = {}
			for i = 1, GRAPH_N do
				bars[i] = new("Frame", {
					AnchorPoint = Vector2.new(0, 1), Position = UDim2.fromOffset((i - 1) * 5, 30),
					Size = UDim2.fromOffset(4, 0), BorderSizePixel = 0, BackgroundColor3 = GOOD,
				}, holder)
			end
			return bars
		end
		graph = { panel = panel, cap = cap, fps = row(18), ping = row(54) }
		draggable(panel, panel)
	end
	if graph then graph.panel.Visible = on end
end

function F.graphPush(fps, ping)
	if not (graph and graph.panel.Visible) then return end
	fpsHist[#fpsHist + 1] = fps
	pingHist[#pingHist + 1] = ping
	if #fpsHist > GRAPH_N then table.remove(fpsHist, 1); table.remove(pingHist, 1) end
	local n, lo = #fpsHist, math.huge
	for i = 1, GRAPH_N do
		local idx = i - (GRAPH_N - n)
		local fb, pb = graph.fps[i], graph.ping[i]
		if idx >= 1 then
			local f, p = fpsHist[idx], pingHist[idx]
			if f < lo then lo = f end
			fb.Size = UDim2.fromOffset(4, math.clamp(f / 120 * 30, 1, 30))
			fb.BackgroundColor3 = f >= 50 and GOOD or (f >= 30 and MID or BAD)
			pb.Size = UDim2.fromOffset(4, math.clamp(p / 300 * 30, 1, 30))
			pb.BackgroundColor3 = p < 100 and GOOD or (p < 200 and MID or BAD)
		else
			fb.Size = UDim2.fromOffset(4, 0)
			pb.Size = UDim2.fromOffset(4, 0)
		end
	end
	graph.cap.Text = ("FPS %d (min %d)   Ping %dms"):format(fps, lo, ping)
end

----------------------------------------------------------------
-- Consolidated Update Loops (RenderStepped, Heartbeat, Stepped)
----------------------------------------------------------------
local frames, lastStat = 0, os.clock()

bind(RunService.RenderStepped:Connect(function()
	frames = frames + 1
	local now = os.clock()
	if now - lastStat >= 0.5 then
		if S.stats or S.graph then
			local fps = math.floor(frames / (now - lastStat))
			local dataPing, netPing = 0, 0
			pcall(function() dataPing = math.floor(Stats.Network.ServerStatsItem["Data Ping"]:GetValue()) end)
			pcall(function() netPing = math.floor(lp:GetNetworkPing() * 1000) end)
			if S.stats then
				statsLabel.Text = ("FPS: %d | Ping: %dms (net %d)"):format(fps, dataPing, netPing)
			end
			if S.graph then F.graphPush(fps, dataPing > 0 and dataPing or netPing) end
		end
		frames, lastStat = 0, now
	end

	local cam = workspace.CurrentCamera
	if not cam then return end
	if S.fov then cam.FieldOfView = S.fovValue end
	if ESP.mode == "Box" then updateBoxESP(cam) end

	-- Aimbot & Silent Aim Target Resolution
	local wantAim = S.aimbot or S.silentAim
	if wantAim then
		local origin2D = getAimScreenOrigin(cam)
		if S.aimShowFov then
			fovCircle.Position = UDim2.fromOffset(origin2D.X, origin2D.Y)
			fovCircle.Size = UDim2.fromOffset(S.aimFov * 2, S.aimFov * 2)
			fovCircle.Visible = true
		else
			fovCircle.Visible = false
		end

		currentTarget = findBestTarget(cam, origin2D)
		fovStroke.Color = currentTarget and C.on or C.accent

		-- Draw Target Snap Line
		if currentTarget and S.silentLine then
			local tx, ty = currentTarget.screenPos.X, currentTarget.screenPos.Y
			local dx, dy = tx - origin2D.X, ty - origin2D.Y
			targetLine.Size = UDim2.fromOffset(math.sqrt(dx * dx + dy * dy), 1.5)
			targetLine.Position = UDim2.fromOffset(origin2D.X + dx * 0.5, origin2D.Y + dy * 0.5)
			targetLine.Rotation = math.deg(math.atan2(dy, dx))
			targetLine.Visible = true
		else
			targetLine.Visible = false
		end

		-- Apply Camera Lock if Aimbot is active
		local triggerActive = (S.aimMode == "Always") or rmbHeld or aimLocked
		if S.aimbot and triggerActive and currentTarget then
			local goalCF = CFrame.lookAt(cam.CFrame.Position, currentTarget.predictedPos)
			local alpha = math.clamp(1 / math.max(S.aimSmooth, 1), 0.04, 1)
			cam.CFrame = cam.CFrame:Lerp(goalCF, alpha)
		end
	else
		currentTarget = nil
		fovCircle.Visible = false
		targetLine.Visible = false
	end
end))

bind(RunService.Heartbeat:Connect(function(dt)
	local me = tracked[lp]
	local char, hrp, hum = me and me.char, me and me.hrp, me and me.hum
	local cam = workspace.CurrentCamera

	if char and hrp and hum then
		if S.fly and cam then
			local fwd, rgt = moveInput(hum, cam)
			local vel = cam.CFrame.LookVector * fwd + cam.CFrame.RightVector * rgt
			if upHeld or UIS:IsKeyDown(Enum.KeyCode.E) then vel = vel + Vector3.yAxis end
			if downHeld or UIS:IsKeyDown(Enum.KeyCode.Q) then vel = vel - Vector3.yAxis end
			if not hum.PlatformStand then hum.PlatformStand = true end
			hrp.AssemblyLinearVelocity = Vector3.zero
			hrp.AssemblyAngularVelocity = Vector3.zero
			hrp.CFrame = hrp.CFrame + vel * (S.flySpeed * dt)
		elseif S.tpwalk and hum.MoveDirection.Magnitude > 0 then
			char:TranslateBy(hum.MoveDirection * (S.tpSpeed * dt * 10))
		end
		if S.walkspeed and hum.WalkSpeed ~= S.wsValue then hum.WalkSpeed = S.wsValue end
		if S.jumppower then
			if not hum.UseJumpPower then hum.UseJumpPower = true end
			if hum.JumpPower ~= S.jpValue then hum.JumpPower = S.jpValue end
		end
		if S.spin then hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(S.spinSpeed) * dt, 0) end

		if S.antivoid and not S.invis then
			local killY = workspace.FallenPartsDestroyHeight
			if hum.FloorMaterial ~= Enum.Material.Air and hum.Health > 0 then
				lastSafe = hrp.CFrame
			elseif lastSafe and killY > -1e5 and hrp.Position.Y < killY + 120 then
				hrp.AssemblyLinearVelocity = Vector3.zero
				hrp.CFrame = lastSafe + Vector3.new(0, 4, 0)
				F.notify("Anti-void: returned to safe ground", "warn")
			end
		end
	end

	if S.gravity and workspace.Gravity ~= S.gravValue then workspace.Gravity = S.gravValue end

	if S.fullbright then
		Lighting.Brightness = 2; Lighting.ClockTime = 14; Lighting.FogEnd = 1e6
		Lighting.GlobalShadows = false
		Lighting.Ambient = FB_AMBIENT
		Lighting.OutdoorAmbient = FB_AMBIENT
	end

	if S.hitbox then updateHitbox() end
	if ESP.mode == "Chams" then updateChams(dt) end
	updateThreatRadar(dt)
end))

bind(RunService.Stepped:Connect(function()
	local noclip, anti = S.noclip, S.antifling
	if not (noclip or anti) then return end

	local me = tracked[lp]
	if noclip and me then
		local parts = getParts(me)
		for i = 1, #parts do
			local v = parts[i]
			if v.CanCollide then v.CanCollide = false end
		end
	end

	if anti then
		for p, info in pairs(tracked) do
			if p ~= lp then
				local parts = getParts(info)
				for i = 1, #parts do
					local v = parts[i]
					if v.CanCollide then v.CanCollide = false end
				end
			end
		end
		local hrp = me and me.hrp
		if hrp and not S.fly then
			local vel = hrp.AssemblyLinearVelocity
			local flat = Vector3.new(vel.X, 0, vel.Z)
			if flat.Magnitude > S.flingLimit then
				hrp.AssemblyLinearVelocity = Vector3.new(0, math.min(vel.Y, 0), 0)
			end
			if hrp.AssemblyAngularVelocity.Magnitude > 40 then
				hrp.AssemblyAngularVelocity = Vector3.zero
			end
		end
	end
end))

----------------------------------------------------------------
-- Server Hop & Config Persistence
----------------------------------------------------------------
local HOP_FILE = "scripthub_hops.json"
local hopBusy = false

local function loadHops()
	local out = {}
	pcall(function()
		if isfile and isfile(HOP_FILE) then
			local now = os.time()
			for id, ts in pairs(HttpService:JSONDecode(readfile(HOP_FILE))) do
				if now - ts < 1800 then out[id] = ts end
			end
		end
	end)
	return out
end

function F.serverHop(mode)
	if hopBusy then return end
	hopBusy = true
	F.notify("Scanning servers...", "info")
	task.spawn(function()
		local ok, err = pcall(function()
			local url = ("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=%s&limit=100&excludeFullGames=true")
				:format(game.PlaceId, mode == "small" and "Asc" or "Desc")
			local data = HttpService:JSONDecode(game:HttpGet(url)).data
			local recent = loadHops()
			local pool = {}
			for _, sv in ipairs(data or {}) do
				if sv.id ~= game.JobId and not recent[sv.id] and (sv.playing or 0) < (sv.maxPlayers or 0) then
					pool[#pool + 1] = sv
				end
			end
			if #pool == 0 then error("no open server found") end
			local pick = pool[math.random(1, math.min(5, #pool))]
			recent[pick.id] = os.time()
			recent[game.JobId] = os.time()
			pcall(function() writefile(HOP_FILE, HttpService:JSONEncode(recent)) end)
			F.notify(("Hopping (%d players)..."):format(pick.playing or 0), "ok")
			TeleportService:TeleportToPlaceInstance(game.PlaceId, pick.id, lp)
		end)
		if not ok then
			F.notify("Hop failed: " .. tostring(err):sub(1, 40), "err", 4)
			hopBusy = false
		end
	end)
end
bind(TeleportService.TeleportInitFailed:Connect(function()
	hopBusy = false
	F.notify("Teleport failed", "err")
end))

local SETTINGS_FILE = "scripthub_v12.json"
local SAVE_KEYS = {
	"stats", "graph", "antiafk", "antivoid", "esp", "espMode", "espBox", "espName", "espHealth", "espTracer",
	"espDist", "fullbright", "fov", "fovValue", "antifling", "flingLimit", "hitboxSize", "flySpeed", "tpSpeed",
	"wsValue", "jpValue", "gravValue", "spinSpeed", "gazeCat", "aimPart", "aimFov", "aimShowFov", "aimSmooth",
	"aimPredict", "aimTeam", "aimWall", "silentChance", "silentLine", "threatWarn", "chatSpy", "spyPublic", "spyEchoWhisper"
}

function F.saveSettings()
	local t = {}
	for _, k in ipairs(SAVE_KEYS) do t[k] = S[k] end
	local ok = pcall(function() writefile(SETTINGS_FILE, HttpService:JSONEncode(t)) end)
	F.notify(ok and "Config saved (v12)" or "Save unavailable (no writefile)", ok and "ok" or "err")
end

function F.loadSettings()
	local ok, t = pcall(function()
		if isfile and isfile(SETTINGS_FILE) then return HttpService:JSONDecode(readfile(SETTINGS_FILE)) end
	end)
	if not (ok and type(t) == "table") then return false end
	for _, k in ipairs(SAVE_KEYS) do
		local v = t[k]
		if v ~= nil and type(v) == type(S[k]) then S[k] = v end
	end
	return true
end

function F.resetSettings()
	local ok = pcall(function()
		if isfile and isfile(SETTINGS_FILE) then delfile(SETTINGS_FILE) end
	end)
	F.notify(ok and "Saved config cleared" or "Could not clear file", ok and "ok" or "err")
end

if F.loadSettings() then
	statsLabel.Visible = S.stats
	F.espRefresh()
	if S.graph then F.setGraph(true) end
	F.notify("ScriptHub v12 Loaded", "ok")
else
	F.notify("ScriptHub v12 Ready", "info")
end

----------------------------------------------------------------
-- Sidebar Tabs (Built Lazily on First Selection)
----------------------------------------------------------------
createTab("Aim & Combat", "🎯", function()
	headerLabel("Aimbot (PC RMB / Q  •  Mobile Lock Button)")
	toggle("Enable Aimbot", "aimbot", F.refreshAimUI)
	cycle("Trigger Mode", AIM_MODES, "aimMode", F.refreshAimUI)
	cycle("Target Part", AIM_PARTS, "aimPart")
	slider("FOV Radius", "aimFov", 30, 400)
	toggle("Draw FOV Circle", "aimShowFov")
	slider("Smoothness (1 = Snap)", "aimSmooth", 1, 20)
	slider("Velocity Prediction %", "aimPredict", 0, 50)
	toggle("Team Check", "aimTeam")
	toggle("Visible / Wall Check", "aimWall")

	headerLabel("Universal Silent Aim")
	toggle("Silent Aim (Raycast & Mouse Hook)", "silentAim")
	slider("Hit Chance %", "silentChance", 1, 100)
	toggle("Draw Target Snap Line", "silentLine")

	headerLabel("Hitbox & Defense")
	toggle("Hitbox Expander", "hitbox", function(on) if not on then F.restoreHitbox() end end)
	slider("Hitbox Size", "hitboxSize", 2, 80)
	toggle("Aim / Proximity Threat Radar", "threatWarn")
end)

createTab("Visuals", "👁", function()
	headerLabel("Player ESP")
	toggle("Enable ESP", "esp", F.espRefresh)
	cycle("ESP Render Mode", ESP_MODES, "espMode", F.espRefresh)
	toggle("Box / Chams Highlight", "espBox")
	toggle("Name + Distance", "espName")
	toggle("CIELUV Health Bar", "espHealth")
	toggle("Bottom Tracer (Box Mode)", "espTracer")
	slider("Max ESP Distance", "espDist", 100, 10000)

	headerLabel("Camera & World")
	toggle("Fullbright", "fullbright", function(on) if not on then F.restoreLight() end end)
	toggle("Custom Camera FOV", "fov", function(on) if not on then F.restoreFov() end end)
	slider("Camera FOV", "fovValue", 30, 120)

	headerLabel("Performance HUD")
	toggle("Floating Ping / FPS Pill", "stats", function(on) statsLabel.Visible = on end)
	toggle("Live FPS / Ping Sparkline", "graph", F.setGraph)
end)

createTab("Movement", "⚡", function()
	headerLabel("Flight & Teleport Walk")
	toggle("Camera Fly (CFly)", "fly", F.setFly)
	slider("Fly Speed", "flySpeed", 10, 300)
	toggle("TPWalk (TranslateBy)", "tpwalk")
	slider("TPWalk Speed", "tpSpeed", 1, 15)

	headerLabel("Collision & Jump")
	toggle("Noclip", "noclip")
	toggle("Infinite Jump", "infjump")
	toggle("Equip Click/Tap TP Tool", "tptool", function(on)
		if on then F.giveTpTool() else F.removeTpTool() end
	end)
end)

createTab("Player", "🛡", function()
	headerLabel("Humanoid Modifiers")
	toggle("Lock WalkSpeed", "walkspeed", function(on)
		local h = getHum()
		if not h then return end
		if on then orig.ws = h.WalkSpeed
		elseif orig.ws then h.WalkSpeed = orig.ws; orig.ws = nil end
	end)
	slider("WalkSpeed", "wsValue", 16, 350)

	toggle("Lock JumpPower", "jumppower", function(on)
		local h = getHum()
		if not h then return end
		if on then orig.jp, orig.useJP = h.JumpPower, h.UseJumpPower
		elseif orig.jp then h.JumpPower = orig.jp; h.UseJumpPower = orig.useJP; orig.jp = nil end
	end)
	slider("JumpPower", "jpValue", 50, 400)

	toggle("Custom Gravity", "gravity", function(on)
		if not on then workspace.Gravity = origGravity end
	end)
	slider("Gravity", "gravValue", 0, 300)

	headerLabel("Character Tricks & Safety")
	toggle("FE Seat Invisibility (X Key)", "invis", function(on) task.spawn(F.setInvisible, on) end)
	toggle("Spinbot", "spin")
	slider("Spin Speed", "spinSpeed", 60, 2400)
	toggle("Anti-Fling Protection", "antifling")
	slider("Anti-Fling Velocity Cap", "flingLimit", 80, 800)
	toggle("Anti-Void Auto Rescue", "antivoid")
end)

createTab("Chat Spy", "💬", function()
	headerLabel("Whisper & Hidden Channel Logger")
	toggle("Enable Chat Spy", "chatSpy")
	toggle("Toast Alert on Private Whisper", "spyEchoWhisper")
	toggle("Also Log Public Chat", "spyPublic")

	chatLogList = new("ScrollingFrame", {
		Size = UDim2.new(1, 0, 0, 165), BackgroundColor3 = C.sidebar, BorderSizePixel = 0,
		ScrollBarThickness = 3, AutomaticCanvasSize = Enum.AutomaticSize.Y, CanvasSize = UDim2.new(),
		LayoutOrder = nextOrder(),
	}, host)
	corner(chatLogList, 7)
	new("UIListLayout", { Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder }, chatLogList)
	new("UIPadding", {
		PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),
		PaddingLeft = UDim.new(0, 4), PaddingRight = UDim.new(0, 4),
	}, chatLogList)

	for _, entry in ipairs(chatLogs) do
		appendChatGui(entry)
	end

	action("Clear Chat Spy Log", function()
		table.clear(chatLogs)
		for _, ch in ipairs(chatLogList:GetChildren()) do
			if ch:IsA("TextButton") then ch:Destroy() end
		end
	end, C.btn)
end)

createTab("Players & TP", "🧭", function()
	headerLabel("Player Inspector (Spectate / TP / Whitelist)")
	local selectedPlayer = nil
	local statusLbl = new("TextLabel", {
		Size = UDim2.new(1, 0, 0, 22), BackgroundColor3 = C.panel, TextColor3 = C.white,
		Font = Enum.Font.GothamMedium, TextSize = 12, Text = "  Selected: None",
		TextXAlignment = Enum.TextXAlignment.Left, LayoutOrder = nextOrder(),
	}, host)
	corner(statusLbl, 6)

	local pList = new("ScrollingFrame", {
		Size = UDim2.new(1, 0, 0, 110), BackgroundColor3 = C.sidebar, BorderSizePixel = 0,
		ScrollBarThickness = 3, AutomaticCanvasSize = Enum.AutomaticSize.Y, CanvasSize = UDim2.new(),
		LayoutOrder = nextOrder(),
	}, host)
	corner(pList, 7)
	new("UIListLayout", { Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder }, pList)

	local function rebuildPlayers()
		for _, c in ipairs(pList:GetChildren()) do
			if c:IsA("TextButton") then c:Destroy() end
		end
		for _, p in ipairs(Players:GetPlayers()) do
			if p ~= lp then
				local wl = whitelist[p.UserId] and " [FRIEND]" or ""
				local b = new("TextButton", {
					Size = UDim2.new(1, -4, 0, 24), BackgroundColor3 = (selectedPlayer == p) and C.accent or C.panel,
					TextColor3 = C.white, Font = Enum.Font.GothamMedium, TextSize = 11,
					Text = "  " .. p.DisplayName .. " (@" .. p.Name .. ")" .. wl,
					TextXAlignment = Enum.TextXAlignment.Left,
				}, pList)
				corner(b, 5)
				b.MouseButton1Click:Connect(function()
					selectedPlayer = p
					statusLbl.Text = "  Selected: " .. p.Name .. (whitelist[p.UserId] and " (Whitelisted)" or "")
					rebuildPlayers()
				end)
			end
		end
	end
	rebuildPlayers()

	action("Refresh Player List", rebuildPlayers, C.btn)
	action("Teleport Behind Selected Player", function()
		local me = tracked[lp]
		local targetInfo = selectedPlayer and tracked[selectedPlayer]
		if me and me.hrp and targetInfo and targetInfo.hrp then
			me.hrp.CFrame = targetInfo.hrp.CFrame * CFrame.new(0, 0, 3.5)
			F.notify("Teleported to " .. selectedPlayer.Name, "ok")
		else
			F.notify("Select a valid spawned player first", "warn")
		end
	end)
	action("Toggle Spectate Selected Player", function()
		local cam = workspace.CurrentCamera
		local targetInfo = selectedPlayer and tracked[selectedPlayer]
		if cam and targetInfo and targetInfo.hum and cam.CameraSubject ~= targetInfo.hum then
			cam.CameraSubject = targetInfo.hum
			F.notify("Spectating " .. selectedPlayer.Name, "info")
		elseif cam and lp.Character and lp.Character:FindFirstChildOfClass("Humanoid") then
			cam.CameraSubject = lp.Character:FindFirstChildOfClass("Humanoid")
			F.notify("Returned camera to self", "ok")
		end
	end)
	action("Toggle Whitelist (Ignore in Aimbot/ESP)", function()
		if not selectedPlayer then return F.notify("Select a player first", "warn") end
		local uid = selectedPlayer.UserId
		whitelist[uid] = not whitelist[uid] or nil
		statusLbl.Text = "  Selected: " .. selectedPlayer.Name .. (whitelist[uid] and " (Whitelisted)" or "")
		rebuildPlayers()
		F.notify(selectedPlayer.Name .. (whitelist[uid] and " whitelisted" or " un-whitelisted"), "info")
	end, C.btn)

	headerLabel("Quick Waypoints")
	local wpList = new("Frame", {
		Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1, LayoutOrder = nextOrder(),
	}, host)
	new("UIListLayout", { Padding = UDim.new(0, 4) }, wpList)

	local function rebuildWaypoints()
		for _, c in ipairs(wpList:GetChildren()) do
			if c:IsA("TextButton") then c:Destroy() end
		end
		for i, wp in ipairs(waypoints) do
			local b = new("TextButton", {
				Size = UDim2.new(1, 0, 0, 26), BackgroundColor3 = C.panel, TextColor3 = C.white,
				Font = Enum.Font.GothamMedium, TextSize = 11,
				Text = ("📍 %s (%d, %d, %d)  — Tap to TP"):format(wp.name, wp.pos.X, wp.pos.Y, wp.pos.Z),
			}, wpList)
			corner(b, 6)
			b.MouseButton1Click:Connect(function()
				local me = tracked[lp]
				if me and me.hrp then
					me.hrp.CFrame = CFrame.new(wp.pos + Vector3.new(0, 3, 0))
					F.notify("Teleported to " .. wp.name, "ok")
				end
			end)
		end
	end

	action("Save Current Position as Waypoint", function()
		local me = tracked[lp]
		if not (me and me.hrp) then return end
		local id = #waypoints + 1
		waypoints[id] = { name = "Point #" .. id, pos = me.hrp.Position }
		rebuildWaypoints()
		F.notify("Saved Point #" .. id, "ok")
	end)
end)

createTab("Gaze Anims", "🎭", function()
	headerLabel("R15 Animation Replacer (Gaze)")
	local gazeSearch = ""
	local btns = {}
	local sbox, gazeList

	local function paint()
		local sel = gazeSel[S.gazeCat]
		for _, g in ipairs(btns) do
			g.btn.BackgroundColor3 = (sel == g.entry) and C.on or C.field
		end
	end

	local function filter()
		local q = gazeSearch:lower()
		for _, g in ipairs(btns) do
			g.btn.Visible = (q == "") or (g.lower:find(q, 1, true) ~= nil)
		end
	end

	local function rebuild()
		for _, g in ipairs(btns) do g.btn:Destroy() end
		table.clear(btns)
		local cat = S.gazeCat
		for i, entry in ipairs(getGaze()[cat]) do
			local hidden = string.find(entry[1], "[VOTE]", 1, true) and game.PlaceId ~= VOTE_PLACE
			if not hidden then
				local b = new("TextButton", {
					LayoutOrder = i, Size = UDim2.new(1, -6, 0, 26), BackgroundColor3 = C.field, TextColor3 = C.white,
					Font = Enum.Font.GothamMedium, TextSize = 12, TextTruncate = Enum.TextTruncate.AtEnd, Text = entry[1],
				}, gazeList)
				corner(b, 6)
				b.MouseButton1Click:Connect(function()
					selectGaze(cat, entry)
					paint()
				end)
				btns[#btns + 1] = { entry = entry, btn = b, lower = entry[1]:lower() }
			end
		end
		paint()
		filter()
	end

	cycle("Category", GAZE_CATS, "gazeCat", rebuild)

	sbox = new("TextBox", {
		Size = UDim2.new(1, 0, 0, 28), BackgroundColor3 = C.panel, TextColor3 = C.white,
		PlaceholderText = "Search animations...", PlaceholderColor3 = C.dim, Text = "",
		Font = Enum.Font.Gotham, TextSize = 12, ClearTextOnFocus = false, LayoutOrder = nextOrder(),
	}, host)
	corner(sbox, 6)

	gazeList = new("ScrollingFrame", {
		Size = UDim2.new(1, 0, 0, 150), BackgroundColor3 = C.sidebar, BorderSizePixel = 0, ScrollBarThickness = 4,
		AutomaticCanvasSize = Enum.AutomaticSize.Y, CanvasSize = UDim2.new(), LayoutOrder = nextOrder(),
	}, host)
	corner(gazeList, 7)
	new("UIListLayout", { Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder }, gazeList)
	new("UIPadding", {
		PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4),
		PaddingLeft = UDim.new(0, 4), PaddingRight = UDim.new(0, 4),
	}, gazeList)

	sbox:GetPropertyChangedSignal("Text"):Connect(function()
		gazeSearch = sbox.Text
		filter()
	end)

	action("Reset Category", function() resetGaze(S.gazeCat); paint() end, C.btn)
	action("Reset All Animations", function()
		for _, c in ipairs(GAZE_CATS) do resetGaze(c) end
		paint()
	end, C.btn)

	rebuild()
end)

createTab("Server & Cfg", "⚙", function()
	headerLabel("Server Hop & Rejoin")
	action("Hop: Smallest Server", function() F.serverHop("small") end)
	action("Hop: Busy Server", function() F.serverHop("big") end)
	action("Rejoin Current Server", function()
		if #Players:GetPlayers() <= 1 then
			TeleportService:Teleport(game.PlaceId, lp)
		else
			TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, lp)
		end
	end, C.btn)

	headerLabel("Configuration & Session")
	toggle("Anti-AFK Idled Hook", "antiafk")
	action("Save Configuration", F.saveSettings)
	action("Reset Saved Configuration", F.resetSettings, C.btn)
end)

----------------------------------------------------------------
-- Minimize & Clean Shutdown
----------------------------------------------------------------
local minimized = false
miniBtn.MouseButton1Click:Connect(function()
	minimized = not minimized
	body.Visible = not minimized
	main.Size = minimized and UDim2.fromOffset(WIN_W, 34) or UDim2.fromOffset(WIN_W, WIN_H)
	miniBtn.Text = minimized and "+" or "—"
end)

local dead = false
local function shutdown()
	if dead then return end
	dead = true
	local function safe(fn, ...) pcall(fn, ...) end

	for _, c in ipairs(conns) do safe(c.Disconnect, c) end
	for _, info in pairs(tracked) do
		if info.c1 then safe(info.c1.Disconnect, info.c1) end
		if info.c2 then safe(info.c2.Disconnect, info.c2) end
	end

	S.hitbox, S.fly, S.fullbright, S.fov, S.tptool = false, false, false, false, false
	S.walkspeed, S.jumppower, S.gravity, S.spin, S.esp = false, false, false, false, false
	S.aimbot, S.silentAim = false, false
	currentTarget = nil
	env.__ScriptHubGetSilentTarget = nil

	safe(F.restoreHitbox)
	safe(F.restoreLight)
	safe(F.restoreFov)
	safe(F.removeTpTool)
	safe(F.setFly, false)
	safe(F.setGraph, false)
	safe(F.restorePlayer)
	safe(F.espRefresh)
	for _, c in ipairs(GAZE_CATS) do safe(resetGaze, c) end
	if S.invis then
		S.invis = false
		invisBusy = false
		safe(F.setInvisible, false)
	end

	if chamFolder then safe(chamFolder.Destroy, chamFolder) end
	safe(gui.Destroy, gui)
	if env.__ScriptHubCleanup == shutdown then env.__ScriptHubCleanup = nil end
end

closeBtn.MouseButton1Click:Connect(shutdown)
env.__ScriptHubCleanup = shutdown
