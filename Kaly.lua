print("start")
_G.heart = "♥"
_G.f2 = "🍇"
function printke()
    local ke = {
        {"", "", " ♥", "", ""," 🍇","🍇","🍇", " ",  "♥", "♥", "♥", "♥", " ", "", "🍇", "🍇", "🍇", "🍇"},
        {"", " ", "♥", " ", "🍇", " ", " ", "🍇 ",    "♥", " ", " ", " ", " ", " ","🍇", " ", " ", " ", " "},
        {"", " ", "♥", " ", "🍇", " ", " ", "🍇",     "♥", "♥", "♥", "♥", " ", " ","🍇", "🍇", "🍇", "🍇", " "},
        {"", " ", "♥", " ", "🍇", " ", " ", "🍇",     " ", " ", " ", "♥", " ", " ","🍇", " ", " ", " ", " "},
        {"♥", "♥", "", " ", "","🍇","🍇","🍇",       "♥", "♥", "♥", "♥", " ", " ", "🍇", "🍇", "🍇", "🍇", " "}
    }
    for _, line in ipairs(ke) do
        print(table.concat(line, " "))
    end
end
printke()
local UserInputService = game:GetService("UserInputService")
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/VerbalHubz/Verbal-Hub/refs/heads/main/Jose%20RayField'))()
--â™¥localsâ™¥
	local S = {
		Players = game:GetService("Players"),
		RS = game:GetService("ReplicatedStorage"),
		RSs = game:GetService("RunService"),
		w = game:GetService("Workspace"),
		r = game:GetService("RunService"),
		d = game:GetService("Debris"),
		HS = game:GetService("HttpService"),
		UIS = game:GetService("UserInputService"),
		StarterGui = game:GetService("StarterGui")}

	local me = S.Players.LocalPlayer; local pccontrol = me.PlayerGui.ControlsGui.PCFrame

	local O = {
		Events = {
			saymsg = S.RS.DefaultChatSystemChatEvents.SayMessageRequest,
			getmsg = S.RS.DefaultChatSystemChatEvents.OnMessageDoneFiltering,
			DestroyToyEvent = S.RS.MenuToys.DestroyToy,
			SetLineColorEvent = S.RS.DataEvents.UpdateLineColorsEvent,
			ExtendLineEvent = S.RS.GrabEvents.ExtendGrabLine,
			CreateGrabEvent = S.RS.GrabEvents.CreateGrabLine,
			StruggleEvent = S.RS.CharacterEvents.Struggle,
			StickyPartEvent = S.RS.PlayerEvents.StickyPartEvent,
			BombEvent = S.RS.BombEvents.BombExplode,
			DestroyGrabLineEvent = S.RS.GrabEvents.DestroyGrabLine,
			SetNetworkOwnerEvent = S.RS.GrabEvents.SetNetworkOwner,
			Ragdoll = S.RS.CharacterEvents.RagdollRemote,
			SpawnToyEvent = S.RS.MenuToys.SpawnToyRemoteFunction},

		me = S.Players.LocalPlayer,
		myname = me.Name,
		mouse = me:GetMouse(),
		BeingHeld = me.IsHeld,
		pccontrol = me.PlayerGui.ControlsGui.PCFrame,
		pccontroltoy = pccontrol.ToyMenu,
		backpack = S.w[me.Name.."SpawnedInToys"],
		m = S.w.Map,
		SL = S.w.SpawnLocation,
		stoys = nil,
		pcld = nil,
		backpacks = nil,
		chars = nil,
		hls = nil,
		ccc = S.w.Camera:FindFirstChild("ColorCorrection"),
		sunrays = nil}

	local N = {
		V = {
			mhv3 = Vector3.new(math.huge, math.huge, math.huge),
			nv3 = Vector3.new(0, 0, 0)},

		C1 = {
			Color3.fromRGB(0,0,0),
			Color3.fromRGB(0,255,0),
			Color3.fromRGB(255,255,0),
			Color3.fromRGB(255,0,0)},

		C2 = {
			Color3.fromRGB(0, 255, 255),
			Color3.fromRGB(0,255,0),
			Color3.fromRGB(127,255,0),
			Color3.fromRGB(255,255,0),
			Color3.fromRGB(255,127,0),
			Color3.fromRGB(255,0,0)},

		distallaura = 24,
		gettimefunc = 0,
		xrta = 0,
		expldelay = 0,
		yrta = 0,
		zrta = 0,
		chal = 0,
		cdyat = 0,
		zoombindv = 0,
		chamsot = 0,
		chamsft = 0,
		RawStep2 = 0,
		step2 = 0,
		hpa = 0,
		dpa = 0,
		cpan = 0,
		cpa = 0,
		hta = 0,
		dta = 0,
		RawStep = 0,
		step = 0,
		cat = 0,
		zgv = 0,
		ks = 10,
		last_UTP = 0,
		strength = 0,
		Lag_Intensity = 0,
		kickcountc = 0,
		wss = 0,
		jps = 0,
		gs = 0,
		linecolorscount = 0,
		debug = 4}

	local L = {
		publicds = false,
		spyenabled = false,
		public = false,
		zoombind = false,
		gluegrab = false,
		controltrain = false,
		hidealltoys = false,
		shadowalltoys = false,
		storeallplayerstoys = false,
		vhsows = true,
		debug = false,
		smptmt = false,
		tptoyfs = false,
		spyallplrinfo = true,
		paitd = false}


	local P = {
		gkblob = nil,
		who = nil,
		lplr = nil,
		rplr = nil,
		whll = nil,
		last_toy = nil,
		last_model = nil,
		last_chto = nil,
		last_chto2 = nil,
		spat = nil,
		tptoypos = CFrame.new(363.534424, -7.35040426, 527.307678, 0.425311029, 3.02851468e-08, -0.905047238, 8.34827762e-09, 1, 3.73856288e-08, 0.905047238, -2.34561064e-08, 0.425311029)}

	local Lt = {
		toys = {
			BombMissile = {"HitboxBodyTop", "PartHitDetector"},
			BombDarkMatter = {"PartHitDetector","Spinner"},
			BallSnowball = {"SoundPart"}},

		gps = {
			BombMissile = "HitboxBodyTop",
			BombDarkMatter = "Spinner",
			BallSnowball = "SoundPart"},

		admins = {959216740, 5516434780, 2311784954, 6192858983, 7427155484},
		lat = {},
		hui = {},
		hui2 = {},
		ggl = {},
		ccolors = {},
		privateProperties = {
			Color = Color3.fromRGB(255,0,0),
			Font = Enum.Font.SourceSansBold,
			TextSize = 18},
		last_urls = {},
		spylist = {},
		sspylist = {},
		ftapcolors = {
			Coins = Color3.fromRGB(0, 0, 0),
			TabBar = Color3.fromRGB(66, 66, 66),
			Settings = Color3.fromRGB(66, 66, 66),
			Shop = Color3.fromRGB(0, 0, 0),
			ToyDestroy = Color3.fromRGB(0, 0, 0),
			ToysShop = Color3.fromRGB(0, 0, 0),
			Toys = Color3.fromRGB(0, 0, 0),
			SettingsContents = Color3.fromRGB(90, 90, 90),
			SettingsTitle = Color3.fromRGB(66, 66, 66),
			ShopTitle = Color3.fromRGB(66, 66, 66),
			ShopContents = Color3.fromRGB(90, 90, 90),
			ToysContents = Color3.fromRGB(90, 90, 90),
			FavoritesFrame = Color3.fromRGB(120, 120, 120),
			Favorites = Color3.fromRGB(66, 66, 66),
			MeterFrame = Color3.fromRGB(120, 120, 120),
			SortingTabs = Color3.fromRGB(120, 120, 120),
			ToysTitle = Color3.fromRGB(66, 66, 66),
			DestroyTitle = Color3.fromRGB(66, 66, 66),
			DestroyContents = Color3.fromRGB(90, 90, 90),
			DestroyMeterFrame = Color3.fromRGB(120, 120, 120),
			ToyShopTitle = Color3.fromRGB(66, 66, 66),
			ToyShopSortingTabs = Color3.fromRGB(120, 120, 120),
			ToyShopContents = Color3.fromRGB(90, 90, 90)}}
	
			local Ld = {
				field = function() print("Field function placeholder") end, 
				ppl = {}, 
				bpl = {}, 
				bplid = {},
				bpltag = {}, 
				ldsp = {}, 
				ldsb = {}, 
				ldsbip = {}, 
				lastb = {},
				lastc = {}, 
				lastd = {}  
			}
			
			
	
	local instance = (_G.chatSpyInstance or 0) + 1
	_G.chatSpyInstance = instance
	local chamsfc = Color3.fromRGB(255,255,255)
	local chamsoc = Color3.fromRGB(0,0,0)
	local function set_chams_parametr() end
	local function check_prem() end
	local a = 0
	local debugL1
	local chatFrame = O.me.PlayerGui.Chat.Frame
	me, pccontrol, ldsp, ldsb, ldsbip = nil, nil, nil, nil, nil

--â™¥setingsâ™¥
	typingAnimation = Instance.new("Animation")
	typingAnimation.AnimationId = "rbxassetid://18353618958"
	typingAnimator = O.me.Character:WaitForChild("Humanoid"):WaitForChild("Animator")
	typingTrack = typingAnimator:LoadAnimation(typingAnimation)

	crouchAnimation = Instance.new("Animation")
	crouchAnimation.AnimationId = "rbxassetid://6980229055"
	crouchAnimator = O.me.Character:WaitForChild("Humanoid"):WaitForChild("Animator")
	crouchTrack = crouchAnimator:LoadAnimation(crouchAnimation)

	throwedAnimation = Instance.new("Animation")
	throwedAnimation.AnimationId = "rbxassetid://7047322890"
	throwedAnimator = O.me.Character:WaitForChild("Humanoid"):WaitForChild("Animator")
	throwedTrack = throwedAnimator:LoadAnimation(throwedAnimation)

	O.sunrays = Instance.new("SunRaysEffect", game.Lighting)
	O.sunrays.Intensity = 0
	O.sunrays.Spread = 0

	O.bloomeffect = Instance.new("BloomEffect", game.Lighting)
	O.bloomeffect.Intensity = 0
	O.bloomeffect.Size = 0
	O.bloomeffect.Threshold = 0

	O.ccc = Instance.new("ColorCorrectionEffect", S.w.Camera)
	O.ccc.Enabled = false

	O.hls = Instance.new("Folder", S.w)
	O.hls.Name = _G.heart.."hls".._G.heart

	O.chars = Instance.new("Folder", S.w)
	O.chars.Name = _G.heart.."chars".._G.heart

	O.backpacks = Instance.new("Folder", S.w)
	O.backpacks.Name = _G.heart.."backpacks".._G.heart

	O.pcld = Instance.new("Folder", S.w)
	O.pcld.Name = _G.heart.."pcld".._G.heart

	O.stoys = Instance.new("Folder", S.w)
	O.stoys.Name = _G.heart.."stoys".._G.heart

	chatFrame.ChatChannelParentFrame.Visible = true
	chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
	
	pst = true


	local function if3(a1, a2, a3, b1, b2, b3)
		local t = false
		local l = ""; for _,ll in pairs(a1) do l=l..ll end; a1 = l
		local l = ""; for _,ll in pairs(a2) do l=l..ll end; a2 = l
		local l = ""; for _,ll in pairs(a3) do l=l..ll end; a3 = l
		local l = ""; for _,ll in pairs(b1) do l=l..ll end; b1 = l
		local l = ""; for _,ll in pairs(b2) do l=l..ll end; b2 = l
		local l = ""; for _,ll in pairs(b3) do l=l..ll end; b3 = l
		if if3_help(a1, b2, b3) or a1 ~= b1 then t = true
		elseif if3_help(a2, b1, b3) or a2 ~= b2 then t = true
		elseif if3_help(a3, b1, b2) or a3 ~= b3 then t = true end
		return t
	end



--â™¥funcâ™¥
	local function auto_invis_touch() end
	local function After_AG() end
	local function set_hl() end
	local function get_all12() end
	local function get_plr() end
	local function get_rank() end
	--â™¥notifysâ™¥
		local function fstatus(text)
			Ld.field:Notify({
				Title = "Function Status",
				Content = text,
				Duration = 5,
				Image = 4483362458
			})
		end

		local function dnotify(text, n)
			if L.debug and N.debug == n then
				Ld.field:Notify({
					Title = "Debug",
					Content = text,
					Duration = 5,	
					Image = 4483362458
				})
			end
		end

		local function notify(text)
			Ld.field:Notify({
				Title = "Notify",
				Content = text,
				Duration = 5,	
				Image = 4483362458
			})
		end

		local function notify2(text1, text2)
			Ld.field:Notify({
				Title = text1,
				Content = text2,
				Duration = 5,	
				Image = 4483362458
			})
		end

	--â™¥bestâ™¥
		--â™¥mathâ™¥
			local function magnitude(prt, prt1) return (prt.Position - prt1.Position).Magnitude end
			local function PackColor(Color) return {R = Color.R * 255, G = Color.G * 255, B = Color.B * 255} end
			local function UnpackColor(Color) return Color3.fromRGB(Color.R, Color.G, Color.B) end

		--â™¥checksâ™¥
			local function check_list(list, find) for _,v in pairs(list) do if v == find then return v end end end
			local function check_limbs(prt) return check_list({"Head","Right Arm","Right Leg","Left Arm","Left Leg","Torso","HumanoidRootPart"}, prt.Name) end
			local function check_hum(hum) if hum and hum.Health ~= 0 and hum:GetState() ~= Enum.HumanoidStateType.Dead then return true end end
			local function check_spy(nk) local t = false; t = check_list(Lt.spylist, nk); t = check_list(Lt.sspylist, nk); return t end
			local function check_whll(nk) return not(check_list(P.whll, nk)) end
			local function check_mag1(prt, prt1) if magnitude(prt, prt1) < 25 then return true end end
			local function check_mag2(prt, prt1) if magnitude(prt, prt1) > 25 then return true end end
			local function check_admin(id) return check_list(Lt.admins, id) end
			local function check_plr(obj, t) local hrp, hum, hd, hrp1, hum1, hd1 = get_all12(obj) 
				if hrp and hum and check_hum(hum) and hd and hrp1 and hum1 and check_hum(hum1) and hd1 and not(get_plr(obj).InPlot.Value) then
					if t then t = check_mag1(hrp, hrp1) else t = true end; if t then return hrp, hum, hd, hrp1, hum1, hd1 end end end
			local function check_rank(plr) if get_rank(O.me) > get_rank(plr) then return true end end
			

		--â™¥getsâ™¥
			local function get_time() if N.gettimefunc ~= 0 then print(os.clock() - N.gettimefunc); N.gettimefunc = 0 else N.gettimefunc = os.clock() end end
			local function get_end(list) local endd; for _,v in pairs(list) do endd = v end; return endd end
			local function get_endi(list) local enddi; for i,_ in pairs(list) do enddi = i end; return enddi end
			local function get_rotate(list) local rot = {}; local is = get_endi(list); for i,v in pairs(list) do rot[is-i+1] = v end; return rot end
			local function get_parents(obj) local p = obj; local tree = {obj} while p ~= game do p = p.Parent; table.insert(tree, p) end; return tree end
			local function get_child(obj, tree) local last = obj; for _,obj in ipairs(tree) do if last:FindFirstChild(obj) then last = last[obj] end end return last end
			local function get_char(obj) if obj then for _,plr in ipairs(S.Players:GetPlayers()) do local pf; if obj == plr then return plr.Character end; if plr.Character then pf = check_list(get_parents(obj), plr.Character) end; if pf then return pf end end end end
			function get_plr(obj) local char = get_char(obj); for _,plr in ipairs(S.Players:GetPlayers()) do if plr.Character and plr.Character == char then return plr end end end
			local function get_char_child(obj, obj1) local char = get_char(obj); if char and char:FindFirstChild(obj1) then return char[obj1] end end
			local function get_mychar_child(obj) local char = O.me.Character; if char and char:FindFirstChild(obj) then return char[obj] end end
			local function get_hrp() return get_mychar_child("HumanoidRootPart") end
			local function get_hum() return get_mychar_child("Humanoid") end
			local function get_hd() return get_mychar_child("Head") end
			local function get_hrp1(obj) return get_char_child(obj, "HumanoidRootPart") end
			local function get_hum1(obj) return get_char_child(obj, "Humanoid") end
			local function get_hd1(obj) return get_char_child(obj, "Head") end
			local function get_all() return get_hrp(), get_hum(), get_hd() end
			local function get_all1(obj) return get_hrp1(obj), get_hum1(obj), get_hd1(obj) end
			function get_all12(obj) return get_hrp(), get_hum(), get_hd(), get_hrp1(obj), get_hum1(obj), get_hd1(obj) end
			local function get_grabprt(toy) for _,prt in pairs(toy:GetChildren()) do if (prt:IsA("Part") or prt:IsA("MeshPart")) and prt.CanQuery and prt.CanCollide then return prt end end end
			local function get_po(toy) for _,prt in pairs(toy:GetChildren()) do if prt:FindFirstChild("PartOwner") then return prt.PartOwner end end end
			function get_rank(plr) local rank = 0; if not(check_prem(plr.Name)) then rank = 1 end; if check_admin(plr.UserId) then rank = 2 end; if plr == O.me and L.vhsows then rank = 3 end; return rank end

		--â™¥convsâ™¥
			local function con_LtoS(list) local str = ""; for _,v in pairs(list) do str = str..v end; return str end
			local function con_TtoS(list) local list1 = get_rotate(list); local str = ""; for i,v in pairs(list1) do if i ~= get_endi(list1) then str = str..tostring(v).."." end end; str = str..tostring(get_end(list1)); return str end

		--â™¥eventsâ™¥
			local function invis_touch(a) O.Events.SetNetworkOwnerEvent:FireServer(a,a.CFrame) end
			local function toy_spawn(ToyName,CFrame) O.Events.SpawnToyEvent:InvokeServer(ToyName, CFrame, Vector3.new(0,0,0)) end
			local function toy_spawn1(ToyName) local hd = get_mychar_child("Head") toy_spawn(ToyName, hd.CFrame) end
			local function toy_spawn2(ToyName) local cf = get_mychar_child("HumanoidRootPart").CFrame; toy_spawn(ToyName, cf-Vector3.new(cf.LookVector.X*20, -15, cf.LookVector.Z*20)) end
			local function toy_delete(toy) O.Events.DestroyToyEvent:FireServer(toy) end
			local function toy_explode(BombPHT,PosPart,Pos) local data = {{["Hitbox"] =  BombPHT,["PositionPart"] = PosPart},Pos}; O.Events.BombEvent:FireServer(unpack(data)) end

		--â™¥createsâ™¥
			local function create_blv(parent, name, value) local bv = Instance.new("BoolValue", parent); bv.Value = value; bv.Name = name ; return bv end
			local function create_ov(parent, name, value) local ov = Instance.new("ObjectValue", parent); ov.Value = value; ov.Name = name ; return ov end
			local function create_sv(parent, name, value) local sv = Instance.new("StringValue", parent); sv.Value = value; sv.Name = name ; return sv end
			local function create_bp(parent, name, pos, maxf, d) local bp = Instance.new("BodyPosition", parent)
				bp.Name = name; bp.MaxForce = maxf; bp.D = d; if pos then bp.Position = pos end; return bp end
			local function create_bp1(parent, name, pos) return create_bp(parent, name, pos, N.V.mhv3, 100) end
			local function create_bg(parent, name, maxt, d, cframe) local bg = Instance.new("BodyGyro", parent)
				bg.Name = name; bg.MaxTorque = maxt; bg.D = d; if cframe then bg.CFrame = cframe end return bg end
			local function create_hl(parent, adr, name, ot, ft, oc, fc) local hl = Instance.new("Highlight", parent); hl.Name = name
				hl.OutlineTransparency = ot; hl.FillTransparency = ft; hl.OutlineColor = oc; hl.FillColor = fc; hl.Adornee = adr; return hl end
			local function create_bv(parent, name, vl, maxf) local vel = Instance.new("BodyVelocity", parent);
				vel.Name = name; vel.Velocity = vl; vel.MaxForce = maxf; return vel end

		--â™¥waitsâ™¥
			local function wait_load(parent, name) while not(parent:FindFirstChild(name)) do task.wait() end; return parent[name] end
			local function wait_load1(parent, tree) for i,name in pairs(tree) do tree[i] = wait_load(parent, name); parent = tree[i] end return unpack(tree) end
			local function wait_load2(parent, tree) for _,name in pairs(tree) do parent = wait_load(parent, name) end; return parent end
			local function wait_load11(parent, childs) for i,name in pairs(childs) do childs[i] = wait_load(parent, name) end; return unpack(childs) end
			local function wait_tload(toy, name) if Lt.toys[name] then return wait_load11(toy, Lt.toys[name]) end end
			local function wait_gpload(toy, name) if Lt.gps[name] then return wait_load(toy, Lt.gps[name]) else return get_grabprt(toy) end end


	--â™¥plrsâ™¥
		local function plr_kill1(plr, t)
			local hrp, hum, hd, hrp1, hum1, hd1 = check_plr(plr, t)
			if hrp then
				auto_invis_touch(hd1, hrp)
				invis_touch(hd1)
				for a=1, 100 do
					hrp1.CFrame = hrp1.CFrame + Vector3.new(0, -1000, 0)
					task.wait(0.1)
				end
			end
		end

		local function plr_kill2(plr, t)
			local hrp, hum, hd, hrp1, hum1, hd1 = check_plr(plr, t)
			if hrp then
				auto_invis_touch(hd1, hrp)
				hum1.Health = 0
			end
		end

		local function plr_fling(plr, t)
			local hrp, hum, hd, hrp1, hum1, hd1 = check_plr(plr, t)
			if hrp then
				auto_invis_touch(hd1, hrp)
				if not(hrp1:FindFirstChild("pfbv")) then
					local bv = Instance.new("BodyVelocity", hrp1)
					bv.MaxForce = N.V.mhv3
					bv.Name = "pfbv"
					bv.Velocity = Vector3.new(0, math.huge, 0)
					local con = hd1.PartOwner.AncestryChanged:Connect(function()
						bv:Destroy()
					end)
				end
			end
		end

		local function plr_grab(plr, t)
			local hrp, hum, hd, hrp1, hum1, hd1 = check_plr(plr, t)
			if hrp then auto_invis_touch(hd1, hrp) end
		end

		local function plr_ragdoll(plr, t)
			local hrp, hum, hd, hrp1, hum1, hd1 = check_plr(plr, t)
			if hrp then
				auto_invis_touch(hd1, hrp)
				local save = hrp1.Position
				local bp = create_bp1(hrp1, "rgbp", hrp1.Position + Vector3.new(0, 1000, 0)); task.wait(0.1)
				bp.Position = save + Vector3.new(0, -10, 0); task.wait(0.1)
				bp.Position = save; task.wait(0.1)
				bp:Destroy(); task.wait(0.1)
			end
		end

		local function plr_split(plr, t)
			local hrp, hum, hd, hrp1, hum1, hd1 = check_plr(plr, t)
			if hrp and not(hd1:FindFirstChild("spited")) then
				create_blv(hd1, "spited", true)
				hrp1.Parent.Torso:Destroy()
			end
		end

	--â™¥invis_touchâ™¥
		function auto_invis_touch(prt, hrp, hl, hldata, bp, bg)
			local bv = prt:FindFirstChild("igrab")
			local po = prt:FindFirstChild("PartOwner")
			local sv = prt:FindFirstChild("whograb")
			local con
			if not(sv) then
				sv = create_sv(prt, "whograb", "")
				con = prt.ChildAdded:Connect(function(obj)
					if obj.Name == "PartOwner" then
						sv.Value = obj.Value
					end
				end)
			end
			local function auto()
				set_hl(hl, "FillColor", hldata, 3)
				local save = hrp.CFrame
				local t = false
				local last_pos = prt.Position
				task.spawn(function()
					while (not(po) or po.Value ~= O.myname) and task.wait(0.1) do
						if not(prt.Parent) or not(hrp.Parent) then break end
						if check_hum(hrp.Parent.Humanoid) and last_pos ~= prt.Position then
							last_pos = prt.Position
						end
					end
				end)
				while (not(po) or po.Value ~= O.myname) and task.wait() do
					if not(prt.Parent) or not(hrp.Parent) then break end
					if check_hum(hrp.Parent.Humanoid) then
						if check_mag2(prt, hrp) then
							set_hl(hl, "FillColor", hldata, 4)
							hrp.CFrame = prt.CFrame + ((prt.Position - last_pos)*O.me:GetNetworkPing()*100)
							t = true
							invis_touch(prt)
						else invis_touch(prt) end
					else set_hl(hl, "FillColor", hldata, 5) end
					po = prt:FindFirstChild("PartOwner")
				end
				if t then hrp.CFrame = save end
				set_hl(hl, "FillColor", hldata, 1)
			end
			if sv.Value ~= O.me.Name then auto() end
			if bv then
				set_hl(hl, "FillColor", hldata, 2)
				while not(prt:FindFirstChild("PartOwner")) do task.wait() end
				bp.MaxForce = N.V.nv3
				bg.MaxTorque = N.V.nv3
				while bv.Parent do task.wait() end
				bp.Position = prt.Position
				bg.CFrame = prt.CFrame
				bp.MaxForce = N.V.mhv3
				bg.MaxTorque = N.V.mhv3
				set_hl(hl, "FillColor", hldata, 1)
			end
		end

		local function char_invis_touch(prt, hrp, hl, hldata, bp, bg) auto_invis_touch(wait_load2(get_char, {"Head"}), hrp, hl, hldata, bp, bg) end

		local function safe_invis_touch(prt, hrp, hl, hldata, bp, bg)
			if prt and hrp and prt:IsA("Part") and prt.CollisionGroup == "Items" then
				if check_limbs(prt.Name) then char_invis_touch(prt, hrp, hl, hldata, bp, bg)
				else
					local po = prt:FindFirstChild("PartOwner")
					local save = hrp.CFrame
					local t = false
					local last_pos = prt.Position
					task.spawn(function()
						while t3 and task.wait(0.1) do
							if not(prt.Parent) or not(hrp.Parent) then break end
							if check_hum(hrp.Parent.Humanoid) and last_pos ~= prt.Position then
								last_pos = prt.Position
							end
						end
					end)
					if (not(po) or po.Value ~= O.myname) then
						while (not(po) or po.Value ~= O.myname) and task.wait() do
							if not(prt.Parent) or not(hrp.Parent) then break end
							if check_hum(hrp.Parent.Humanoid) then
								if check_mag2(prt, hrp) then
									hrp.CFrame = prt.CFrame + ((prt.Position - last_pos)*O.me:GetNetworkPing()*100)
									t = true
								else invis_touch(prt) end
							end
							po = get_po(prt.Parent)
						end
						if t then hrp.CFrame = save end
					end
				end
			end
		end
			
		local function loop_invis_touch(prt)
			local v21 = prt:FindFirstChild("ait")
			if not(v21) then
				v21 = Instance.new("ObjectValue", prt)
				v21.Name = "ait"
				local v22 = Instance.new("Highlight", O.hls)
				v22.FillColor = Color3.fromRGB(255, 0, 255)
				v22.OutlineColor = Color3.fromRGB(255, 0, 0)
				v22.FillTransparency = 0.5
				v22.OutlineTransparency = 0
				v22.Adornee = prt
				v22.Name = "aithl"
				v21.Value = v22
				while task.wait() do
					if not(prt.Parent) or not(v21.Parent) or not(v22.Parent) then break end
					local v1 = O.me.Character; if v1 then
						local v2 = v1:FindFirstChild("HumanoidRootPart"); if v2 then
							if check_mag1(v2, prt) then
								invis_touch(prt)
								local save = v22.FillColor
								v22.FillColor = v22.OutlineColor
								v22.OutlineColor = save
								task.wait()
								invis_touch(prt)
								local save = v22.FillColor
								v22.FillColor = v22.OutlineColor
								v22.OutlineColor = save
							end
						end
					end
				end
			end
		end

		local function freeze(prt, hrp)
			local bp = prt:FindFirstChild("fzbp")
			local bg = prt:FindFirstChild("fzbg")
			local hl = prt:FindFirstChild("fzhl")
			if not(bp and bg and hl) then
				local bp = create_bp1(prt, "fzbp", prt.Position)
				local bg = create_bg(prt, "fzbg", N.V.mhv3, 100, prt.CFrame)
				local hl = create_hl(prt, prt.Parent, "fzhl", 0, 0.5, Color3.fromRGB(0, 0, 255), Color3.fromRGB(0, 255, 255))
				while prt.Parent and bp.Parent and bg.Parent and hl.Parent do auto_invis_touch(prt, hrp, hl, N.C2, bp, bg); task.wait() end
			end
		end

	--â™¥spawnsâ™¥
		local function toy_sspawn(name, funcid)
			local hrp, hum = get_all()
			if hrp and hum and check_hum(hum) and not(O.me.InPlot.Value) then
				while not(O.me.CanSpawnToy.Value) do task.wait() end
				if funcid == 1 then task.spawn(toy_spawn1, name) end
				if funcid == 2 then task.spawn(toy_spawn2, name) end
				local toy = wait_load(O.backpack, name.."/n").Value
				O.backpack[name.."/n"]:Destroy()
				return toy
			end
		end

		local function toy_aspawn(name, funcid, hrp)
			local toy = toy_sspawn(name, funcid)
			auto_invis_touch(wait_gpload(toy, name), hrp)
			return toy
		end

		local function toy_void(prt, hrp)
			prt.Parent.Name = prt.Parent.Name.."/v"
			auto_invis_touch(prt ,hrp); if prt.Parent then
				for _,prt in pairs(prt.Parent:GetChildren()) do
					if prt:IsA("Part") or prt:IsA("MeshPart") then
						prt.CanTouch = false
						prt.CanCollide = false
					end
				end
				create_bp1(prt, "vbv", Vector3.new(0, 1111111, 0))
			end
		end

		local function toy_vspawn(name, funcid)
			local toy = toy_sspawn(name, funcid)
			toy_void(wait_gpload(toy, name), get_hrp())
			return toy
		end

	--â™¥setsâ™¥
		function set_hl(hl, choice, data, choice1)
			if hl and choice and data then
				if choice1 then if hl[choice] ~= data[choice1] then hl[choice] = data[choice1] end
				else if hl[choice] ~= data then hl[choice] = data end end
			end
		end

		local function set_ftap_color()
			local Data = {}
			for i,v in pairs(Lt.ftapcolors) do
				Data[i] = PackColor(v)
			end
			writefile("VHS/FTAPColors.vhs",tostring(S.HS:JSONEncode(Data)))

			local plrgui = O.me.PlayerGui
			local tabs = plrgui.MenuGui.Menu.TabBar.Tabs
			local tbcont = plrgui.MenuGui.Menu.TabContents
			local seting = tbcont.Settings
			local shop = tbcont.Shop
			local tbcont_toys = tbcont.Toys
			local tbcont_toysdestroy = tbcont.ToyDestroy
			local tbcont_toyhop = tbcont.ToyShop

			plrgui.MenuGui.TopRight.CoinsFrame.BackgroundColor3 = Lt.ftapcolors.Coins
			plrgui.MenuGui.Menu.TabBar.BackgroundColor3 = Lt.ftapcolors.TabBar
			tabs.Settings.BackgroundColor3 = Lt.ftapcolors.Settings
			tabs.Shop.BackgroundColor3 = Lt.ftapcolors.Shop
			tabs.ToyDestroy.BackgroundColor3 = Lt.ftapcolors.ToyDestroy
			tabs.ToyShop.BackgroundColor3 = Lt.ftapcolors.ToysShop
			tabs.Toys.BackgroundColor3 = Lt.ftapcolors.Toys
			seting.Contents.BackgroundColor3 = Lt.ftapcolors.SettingsContents
			seting.Title.BackgroundColor3 = Lt.ftapcolors.SettingsTitle
			shop.Title.BackgroundColor3 = Lt.ftapcolors.ShopTitle
			shop.Contents.BackgroundColor3 = Lt.ftapcolors.ShopContents
			tbcont_toys.Contents.BackgroundColor3 = Lt.ftapcolors.ToysContents
			tbcont_toys.FavoritesFrame.BackgroundColor3 = Lt.ftapcolors.FavoritesFrame
			tbcont_toys.FavoritesFrame.Favorites.BackgroundColor3 = Lt.ftapcolors.Favorites
			tbcont_toys.MeterFrame.BackgroundColor3 = Lt.ftapcolors.MeterFrame
			tbcont_toys.SortingTabs.BackgroundColor3 = Lt.ftapcolors.SortingTabs
			tbcont_toys.Title.BackgroundColor3 = Lt.ftapcolors.ToysTitle
			tbcont_toysdestroy.Title.BackgroundColor3 = Lt.ftapcolors.DestroyTitle
			tbcont_toysdestroy.Contents.BackgroundColor3 = Lt.ftapcolors.DestroyContents
			tbcont_toysdestroy.MeterFrame.BackgroundColor3 = Lt.ftapcolors.DestroyMeterFrame
			tbcont_toyhop.Title.BackgroundColor3 = Lt.ftapcolors.ToyShopTitle
			tbcont_toyhop.SortingTabs.BackgroundColor3 = Lt.ftapcolors.ToyShopSortingTabs
			tbcont_toyhop.Contents.BackgroundColor3 = Lt.ftapcolors.ToyShopContents
		end

		local function set_chams_parametr()
			for _,plr in ipairs(S.Players:GetPlayers()) do
				local v1 = plr.Character; if v1 then
					local hl = v1:FindFirstChild("cham")
					if not(hl) then hl = Instance.new("Highlight", v1) end
					hl.Name = plr.Name
					hl.Adornee = v1
					hl.Enabled = chamst
					hl.FillColor = chamsfc
					hl.FillTransparency = N.chamsft
					hl.OutlineColor = chamsoc
					hl.OutlineTransparency = N.chamsot
				end
			end
		end

		local function set_line_color()
			local Data = {}
			for i,v in ipairs(Lt.ccolors) do
				Data[i] = PackColor(v)
			end

			writefile("VHS/LineColor.vhs",tostring(S.HS:JSONEncode(Data)))

			local args = {
				ColorSequenceKeypoint.new(0, Lt.ccolors[1]),
				ColorSequenceKeypoint.new(0.10, Lt.ccolors[2]),
				ColorSequenceKeypoint.new(0.15, Lt.ccolors[3]),
				ColorSequenceKeypoint.new(0.20, Lt.ccolors[4]),
				ColorSequenceKeypoint.new(0.25, Lt.ccolors[5]),
				ColorSequenceKeypoint.new(0.30, Lt.ccolors[6]),
				ColorSequenceKeypoint.new(0.35, Lt.ccolors[7]),
				ColorSequenceKeypoint.new(0.40, Lt.ccolors[8]),
				ColorSequenceKeypoint.new(0.45, Lt.ccolors[9]),
				ColorSequenceKeypoint.new(0.50, Lt.ccolors[10]),
				ColorSequenceKeypoint.new(0.55, Lt.ccolors[11]),
				ColorSequenceKeypoint.new(0.60, Lt.ccolors[12]),
				ColorSequenceKeypoint.new(0.65, Lt.ccolors[13]),
				ColorSequenceKeypoint.new(0.70, Lt.ccolors[14]),
				ColorSequenceKeypoint.new(0.75, Lt.ccolors[15]),
				ColorSequenceKeypoint.new(0.80, Lt.ccolors[16]),
				ColorSequenceKeypoint.new(0.85, Lt.ccolors[17]),
				ColorSequenceKeypoint.new(0.90, Lt.ccolors[18]),
				ColorSequenceKeypoint.new(0.95, Lt.ccolors[19]),
				ColorSequenceKeypoint.new(1, Lt.ccolors[20])
			}
			O.Events.SetLineColorEvent:FireServer(ColorSequence.new(args))
		end

		
		local function update_hui()
			Lt.hui = {}
			Lt.hui2 = {}
			local p = "p"
			if L.vhsows then p = "" end
			for _,plr in ipairs(S.Players:GetPlayers()) do
				if plr ~= O.me then
					if not(check_prem(plr.Name)) then
						if plr:IsFriendsWith(O.me.userId) then
							table.insert(Lt.hui, plr.DisplayName.." ("..plr.Name..") â™¦Friendâ™¦ â™¥Premium Userâ™¥")
							Lt.hui2[plr.Name..p] = plr.DisplayName.." ("..plr.Name..") â™¦Friendâ™¦ â™¥Premium Userâ™¥" 
						else
							table.insert(Lt.hui, plr.DisplayName.." ("..plr.Name..") â™¥Premium Userâ™¥")
							Lt.hui2[plr.Name..p] = plr.DisplayName.." ("..plr.Name..") â™¥Premium Userâ™¥" 
						end
					else
						if plr:IsFriendsWith(O.me.userId) then
							table.insert(Lt.hui, plr.DisplayName.." ("..plr.Name..") â™¦Friendâ™¦")
							Lt.hui2[plr.Name] = plr.DisplayName.." ("..plr.Name..") â™¦Friendâ™¦"
						else
							table.insert(Lt.hui, plr.DisplayName.." ("..plr.Name..")")
							Lt.hui2[plr.Name] = plr.DisplayName.." ("..plr.Name..")"
						end
					end
				end
			end
		end; update_hui()

		local function blob_kick(blob,hrp,rl,v)
			local script = blob:FindFirstChild("BlobmanSeatAndOwnerScript"); if script then
				local detec = blob:FindFirstChild(rl.."Detector")
				local grab = script:FindFirstChild("CreatureGrab")
				local drop = script:FindFirstChild("CreatureDrop")
				if detec and grab and drop then
					if v == 1 then
						grab:FireServer(detec,hrp,detec[rl.."Weld"])
					elseif v == 2 then
						drop:FireServer(detec[rl.."Weld"],hrp)
					elseif v == 12 then
						grab:FireServer(detec,hrp,detec[rl.."Weld"])
						drop:FireServer(detec[rl.."Weld"],hrp)
					end
				end
			end
		end

		local function anch_plr()
			O.me.Character.HumanoidRootPart.Anchored = true
			while O.me.Character["Right Arm"].RagdollLimbPart.CanCollide == true do task.wait() end
			O.me.Character.HumanoidRootPart.Anchored = false
		end

		local function reset_gq()
			for _,obj in pairs(S.w:GetDescendants()) do 
				if obj:IsA("Part") and obj:FindFirstChild("gqcs") then
					obj.CastShadow = obj.gqcs.Value
					obj.gqcs:Destroy()
				end
			end
			for _,obj in pairs(S.w:GetDescendants()) do 
				if obj:IsA("Part") and obj:FindFirstChild("gqs") then
					obj.Shadows = obj.gqs.Value
					obj.gqs:Destroy()
				end
			end
			game.MaterialService.Use2022Materials = false
			game.Lighting.Technology = "Voxel"
			game.Lighting.Ambient = Color3.fromRGB(120, 120, 120)
			game.Lighting.OutdoorAmbient = Color3.fromRGB(200, 200, 200)
			O.sunrays.Intensity = 0
			O.sunrays.Spread = 0
			O.bloomeffect.Intensity = 0
			O.bloomeffect.Size = 0
			O.bloomeffect.Threshold = 0
		end


--â™¥forsâ™¥
	for _,plr in ipairs(S.Players:GetPlayers()) do
		if plr ~= O.me then
			if plr.Character then plr.Character.Parent = O.chars end
			if S.w:FindFirstChild(plr.Name.."SpawnedInToys") and plr ~= O.me then
				create_sv(S.w[plr.Name.."SpawnedInToys"], "plr_name", plr.Name)
				S.w[plr.Name.."SpawnedInToys"].Parent = O.backpacks
			end
			plr.CharacterAdded:Connect(function(char)
				char.Parent = O.chars
				set_chams_parametr()
			end)
			-- if plr ~= O.me and plr.InPlot.Value and check_prem(plr.Name) then
			-- 	task.wait()
			-- 	S.w.PlotItems.PlayersInPlots[plr].Parent = S.w
			-- end
		end
	end

	for _,obj in pairs(S.w:GetChildren()) do
		if obj.Name == "PlayerCharacterLocationDetector" then obj.Parent = O.pcld
		else local check = {"Balloons","Cave","Cubes","Drawers",
				"Farm","Food","Furniture","Glass Boxes","Ladders",
				"Large Animals","Lincoln Planks","Music","NOT New",
				"Other","Pallets","Robloxians","Rollers",_G.f2}
			if check_list(check, obj.Name) then obj.Parent = O.stoys end
		end
	end

	for _,prt in pairs(S.w.Plots:GetDescendants()) do if prt.Name == "PlotBarrier" or prt.Name == "PlotArea" then prt.CanQuery = false; prt.CanCollide = false end end



--â™¥connectâ™¥
	S.Players.PlayerAdded:Connect(function(plr)
		plr.CharacterAdded:Connect(function(char)
			if char ~= O.me.Character then
				char.Parent = O.chars
				-- set_chams_parametr()
			end
		end)
		if paitd then post_info(plr) end
		if check_spy(plr.Name) then notify(plr.Name.." ("..plr.DisplayName..") Joined your server") end
		update_hui()
		while not(S.w:FindFirstChild(plr.Name.."SpawnedInToys")) do task.wait() end
		create_sv(S.w[plr.Name.."SpawnedInToys"], "plr_name", plr.Name)
		S.w[plr.Name.."SpawnedInToys"].Parent = O.backpacks
	end)

	S.Players.PlayerRemoving:Connect(function()
		update_hui()
	end)

	O.backpack.ChildAdded:Connect(function(toy)
		if not(toy:IsA("ObjectValue")) then
			local ov = create_ov(toy.Parent, toy.Name.."/n", toy)
			toy.Destroying:Connect(function() ov:Destroy() end)
			if toyaura and sttta and toy.Name ~= "FireExtinguisher" and toy.Name ~= "NinjaKunai" then
				N.cat = N.cat + 1
				table.insert(Lt.lat,toy)
			end
			P.last_toy = toy
		end
	end)

	S.w.ChildAdded:Connect(function(gp)
		if gp.Name == "GrabParts" then
			local wc = wait_load2(gp, {"GrabPart","WeldConstraint"})
			local prt = wc.Part1
			local bv = create_blv(prt, "igrab", true)
			gp.Destroying:Connect(function() bv:Destroy() end)
		end
	end)

    
	S.w.ChildAdded:Connect(function(pcld)
		if pcld.Name == "PlayerCharacterLocationDetector" then
			task.wait(); pcld.Parent = O.pcld
		end
	end)

	S.UIS.JumpRequest:Connect(function()
		local t = true
		if O.me.Character and t and infj then
			t = false
			O.me.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			task.wait()
			t = true
		end
	end)

	S.w.ChildAdded:Connect(function(f)
		if f.Name == "GrabParts" and not(kickkk1) and not(kickkk2) then
			N.zgv = 0
			local da = f.DragPart.DragAttach
			while f.Parent and task.wait() do da.Position = S.w.Camera.CFrame.LookVector * N.zgv end
		end
	end)

	S.w.ChildAdded:Connect(function(model)
		if model.Name == "GrabParts" and sila then
			local part_to_impulse = model["GrabPart"]["WeldConstraint"].Part1
			if part_to_impulse then
				local velocityObj = Instance.new("BodyVelocity", part_to_impulse)
				model:GetPropertyChangedSignal("Parent"):Connect(function()
					if not model.Parent then
						if S.UIS:GetLastInputType() == Enum.UserInputType.MouseButton2 then
							velocityObj.MaxForce = N.V.mhv3
							velocityObj.Velocity = S.w.CurrentCamera.CFrame.lookVector * N.strength
							S.d:AddItem(velocityObj, 1)
						elseif S.UIS:GetLastInputType() == Enum.UserInputType.MouseButton1 then
							velocityObj:Destroy()
						else
							velocityObj:Destroy()
						end
					end
				end)
			end
		end
	end)



	S.w.ChildAdded:Connect(function(model)--neon
		if model.Name == "GrabParts" and ultragrabbb then
			S.w.GrabParts.DragPart.Color = Color3.fromRGB(255,0,0)
			S.w.GrabParts.DragPart.Transparency = 0
			S.w.GrabParts.DragPart.Material = "Neon"
			model.DragPart.AlignOrientation.Responsiveness = 200
			model.DragPart.AlignOrientation.MaxTorque = "inf"
			model.DragPart.AlignPosition.MaxAxesForce = Vector3.new("inf","inf","inf")
			model.DragPart.AlignPosition.MaxForce = "inf"
			model.DragPart.AlignPosition.Responsiveness = 200
		end
	end)

	S.w.ChildAdded:Connect(function(model)
		if model.Name == "Part" and O.me.Character and antiexpl then
			local mag = (model.Position - O.me.Character.HumanoidRootPart.Position).Magnitude
			if mag <= 18 then
				anch_plr()
			end
		end
	end)

	S.w.DescendantAdded:Connect(function(toy)
		if toy.Name == "CreatureBlobman" and toy.Parent ~= O.backpack and antiblob then
			task.wait()
			wait_load2(toy, {"LeftDetector","AttachPlayer"}):Destroy()
			wait_load2(toy, {"RightDetector","AttachPlayer"}):Destroy()
		end
	end)

	S.w.PlotItems.Plot1.ChildAdded:Connect(function(toy)
		if toy.Name == "PlantPottedCactus" then
			task.wait()
			toy:Destroy()
		end
	end)

	S.w.PlotItems.Plot2.ChildAdded:Connect(function(toy)
		if toy.Name == "PlantPottedCactus" then
			task.wait()
			toy:Destroy()
		end
	end)

	S.w.PlotItems.Plot3.ChildAdded:Connect(function(toy)
		if toy.Name == "PlantPottedCactus" then
			task.wait()
			toy:Destroy()
		end
	end)

	S.w.PlotItems.Plot4.ChildAdded:Connect(function(toy)
		if toy.Name == "PlantPottedCactus" then
			task.wait()
			toy:Destroy()
		end
	end)

	S.w.PlotItems.Plot5.ChildAdded:Connect(function(toy)
		if toy.Name == "PlantPottedCactus" then
			task.wait()
			toy:Destroy()
		end
	end)

	S.w.PlotItems.PlayersInPlots.ChildAdded:Connect(function(plr)--anti dom
		if plr ~= O.me and check_prem(plr.Name) then
			task.wait()
			plr.Parent = O.chars
		end
	end)

	O.me.CharacterAdded:Connect(function()
		typingAnimation = Instance.new("Animation")
		typingAnimation.AnimationId = "rbxassetid://18353618958"
		typingAnimator = O.me.Character:WaitForChild("Humanoid"):WaitForChild("Animator")
		typingTrack = typingAnimator:LoadAnimation(typingAnimation)

		crouchAnimation = Instance.new("Animation")
		crouchAnimation.AnimationId = "rbxassetid://6980229055"
		crouchAnimator = O.me.Character:WaitForChild("Humanoid"):WaitForChild("Animator")
		crouchTrack = crouchAnimator:LoadAnimation(crouchAnimation)

		throwedAnimation = Instance.new("Animation")
		throwedAnimation.AnimationId = "rbxassetid://7047322890"
		throwedAnimator = O.me.Character:WaitForChild("Humanoid"):WaitForChild("Animator")
		throwedTrack = throwedAnimator:LoadAnimation(throwedAnimation)
	end)

	S.UIS.InputChanged:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseWheel and zgt then
			local v1 = S.w:FindFirstChild("GrabParts"); if v1 then
				if inp.Position.Z == 1 then N.zgv = N.zgv + 3 else N.zgv = N.zgv - 3 end
			else N.zgv = 0 end
		end
	end)

	S.Players.PlayerAdded:Connect(function(p)
		p.Chatted:Connect(function(msg)
			chat_msg(p,msg)
		end)
	end)

--GUI--
local Window = Rayfield:CreateWindow({
    Name = "Kalyptic Hub",
    Icon = 0,
    LoadingTitle = "Kalyptic Hub",
    LoadingSubtitle = "By FutureTek",
    Theme = "DarkBlue",
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil,
       FileName = "vhs v6"
    },
 
    Discord = {
       Enabled = false,
       Invite = "noinvitelink",
       RememberJoins = true
    },
 
    KeySystem = true,
    KeySettings = {
       Title = "Kalyptic Hub Key System",
       Subtitle = "Key System",
       Note = "Key: Kalyptic FTAP",
       FileName = "Key",
       SaveKey = false,
       GrabKeyFromSite = false,
       Key = {"Kalyptic FTAP"}
	}
})


if L.vhsows then
	local debugtab = Window:CreateTab("Debug", 7743876054)

		debugtab:CreateSection("Target")

			local debugl = debugtab:CreateLabel("...")

			debugtab:CreateToggle({
				Name = "Can Query",
				CurrentValue = false,
				Flag = "debugtabCanQuery",
				Callback = function(Value)
					for _,obj in pairs(S.w:GetDescendants()) do
						if obj:IsA("Part") then
							if not(obj:FindFirstChild("debugcanquery")) then
								local bv = Instance.new("BoolValue", obj)
								bv.Value = obj.CanQuery
								bv.Name = "debugcanquery"
								obj.CanQuery = true
							else
								local v1 = obj:FindFirstChild("debugcanquery"); if v1 then
									obj.CanQuery = v1.Value
									v1:Destroy()
								end
							end
						end
					end
				end,
			})

			debugtab:CreateKeybind({
				Name = "Target Parents",
				CurrentKeybind = "",
				HoldToInteract = false,
				Flag = "debugTargetParents", 
				Callback = function(Keybind)
					debugl:Set(con_TtoS(get_parents(O.mouse.target)))
				end,
			})

			debugtab:CreateToggle({
				Name = "debug",
				CurrentValue = false,
				Flag = "debugtabdebug",
				Callback = function(Value)
					L.debug = Value
				end,
			})
end

local usertab = Window:CreateTab("User Functions", 7743876054)

	usertab:CreateSection("Strenght")

		local StrenghtToggle = usertab:CreateToggle({
			Name = "Strenght Toggle",
			CurrentValue = false,
			Flag = "StrenghtToggle", 
			Callback = function(Value)
				sila = Value
			end,
		})

		local ss = usertab:CreateSlider({
			Name = "Strenght Slider",
			Range = {-1600, 1600},
			Increment = 10,
			Suffix = "",
			CurrentValue = 400,
			Flag = "StrenghtSlider",
			Callback = function(Value)
				N.strength = Value 
			end,
		})

		usertab:CreateInput({
			Name = "Strenght Input",
			PlaceholderText = "Type Strenght Value",
			RemoveTextAfterFocusLost = false,
			Callback = function(Text)
				ss:Set(Text)
				N.strength = Text
			end,
		})

		usertab:CreateKeybind({
			Name = "Strenght Toggle Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "StrenghtToggleBind", 
			Callback = function(Keybind)
				fstatus("Strenght Toggle".." is a "..(not(sila) and "En" or "Dis").."abled")
				StrenghtToggle:Set(not(sila))
			end,
		})

	usertab:CreateSection("Protections")

		local AntiGrab = usertab:CreateToggle({
			Name = "Anti Grab & Anti Blob", 
			CurrentValue = false,
			Flag = "AntiGrab", 
			Callback = function(Value)
				antiGrabToggle = Value
				while antiGrabToggle and task.wait() do
					local v2, v3, v1 = get_all()
					if v1 and v2 and check_hum(v3) then
						if v1:FindFirstChild("PartOwner") then
							local v4 = v1.PartOwner.Value; if v4 then 
								local v5 = S.w.chars:FindFirstChild(v4); if v5 and check_prem(v5) and check_whll(v5) then
									task.spawn(After_AG, v5)
								end
							end
							v2.Anchored = true
							while O.me.IsHeld.Value and task.wait() do O.Events.StruggleEvent:FireServer(O.me) end
							task.wait(0.3)
							v2.Anchored = false
						end
					end
				end
			end,
		})

		usertab:CreateDropdown({
			Name = "Function after Anti Grab",
			Options = {"nothing","grab","tp to spawn","fling","kill"},
			CurrentOption = {""},
			MultipleOptions = false,
			Flag = "FunctionafterAntiGrab", 
			Callback = function(Option)
				local temp = ""; for _,t in pairs(Option) do temp = temp..t end
				if temp == "grab" then
					After_AG = function(char)
						invis_touch(char.HumanoidRootPart)
					end
				elseif temp == "tp to spawn" then
					After_AG = function(char)
						fling_plr_a(char.Head)
					end
				elseif temp == "fling" then
					After_AG = function(char)
						fling2_plr_a(char.Head)
					end
				elseif temp == "kill" then
					After_AG = function(char)
						kill_plr_a(char.Head)
					end
				elseif temp == "nothing" then
					After_AG = function(...) end
				end
			end,
		})

		local AntiGrabLoop = usertab:CreateToggle({
			Name = "Anti Grab Loop",
			CurrentValue = false,
			Flag = "AntiGrabLoop", 
			Callback = function(Value)
				antigrabloop = Value
				while antigrabloop and task.wait() do O.Events.StruggleEvent:FireServer(O.me) end
			end,
		})

		local AntiGrabTp = usertab:CreateToggle({
			Name = "Anti Grab Tp",
			CurrentValue = false,
			Flag = "AntiGrabTp", 
			Callback = function(Value)
				antigrabtp = Value
				while antigrabtp and task.wait() do
					local hrp, hum = get_all()
					if hum and check_hum(hum) then
						hrp.CFrame = hrp.CFrame + Vector3.new(100, 0, 0); task.wait(0.08)
						hrp.CFrame = hrp.CFrame + Vector3.new(0, 0, 100); task.wait(0.08)
						hrp.CFrame = hrp.CFrame + Vector3.new(-100, 0, 0); task.wait(0.08)
						hrp.CFrame = hrp.CFrame + Vector3.new(0, 0, -100); task.wait(0.08)
					end
				end
			end,
		})

		-- if L.vhsows or check_admin(O.me.UserId) then

		-- 	local hrp, hum = get_all()
		-- 		if hum and check_hum(hum) then

		local AntiBlobKick = usertab:CreateToggle({
			Name = "Anti Blob Kick(Visual)",
			CurrentValue = false,
			Flag = "AntiBlobKick", 
			Callback = function(Value)
				antiblob = Value
				for _,obj in pairs(S.w:GetDescendants()) do
					if obj.Name == "CreatureBlobman" then
						if obj.Parent ~= O.backpack then
							local v1 = obj:FindFirstChild("LeftDetector")
							local v2 = obj:FindFirstChild("RightDetector")
							if v1 and v2 then
								local v3 = obj.LeftDetector:FindFirstChild("AttachPlayer")
								local v4 = obj.RightDetector:FindFirstChild("AttachPlayer")
								if v3 and v4 then
									v3:Destroy()
									v4:Destroy()
								end
							end
						end
					end
				end
			end,
		})

		local AntiExplosion = usertab:CreateToggle({
			Name = "Anti Explosion",
			CurrentValue = false,
			Flag = "AntiExplosion", 
			Callback = function(Value)
				antiexpl = Value 
			end,
		})

		local AntiBurn = usertab:CreateToggle({
			Name = "Anti Burn",
			CurrentValue = false,
			Flag = "AntiBurn", 
			Callback = function(Value)
				antiburn = Value
				while antiburn do
					if O.me.Character then
						local v1 = O.me.Character:FindFirstChild("HumanoidRootPart")
						local v4 = O.me.Character:FindFirstChild("Humanoid")
						if v1 and v4 then
							local v2 = v1:FindFirstChild("FireLight")
							if v2 and check_hum(v4) then
								local v3 = O.backpack:FindFirstChild("FireExtinguisher")
								if v3 then
									local save = v3.ExtinguishPart.Position
									while v1:FindFirstChild("FireLight") do
										v3.ExtinguishPart.Position = O.me.Character.HumanoidRootPart.Position
										task.wait()
										v3.ExtinguishPart.Position = save
									end
									O.backpack.FireExtinguisher.ExtinguishPart.Position = save
								elseif not(O.me.InPlot.Value) and O.me.CanSpawnToy.Value then
									task.spawn(toy_spawn2, "FireExtinguisher")
									while O.backpack:FindFirstChild("FireExtinguisher") == nil do task.wait() end
								end
							end
						end
					end
					task.wait()
				end
			end,
		})

		local AntiKick = usertab:CreateToggle({
			Name = "Anti kick",
			CurrentValue = false,
			Flag = "AntiKick", 
			Callback = function(Value)
				antikick = Value
				local function f()
					if S.w:FindFirstChild(O.myname) then
						local hrp,hum = get_all()
						local v5 = hrp.Parent["Right Leg"]
						local v6 = hum
						local v7 = hrp
						if v5 and v6 and v7 then
							if v6.Health ~= 0 and v6:GetState() ~= Enum.HumanoidStateType.Dead and not(O.me.InPlot.Value) then
								local v1 = O.backpack:FindFirstChild("NinjaKunai")
								if v1 then
									local v2 = v1:FindFirstChild("StickyPart")
									if v2 then
										local v3 = v2:FindFirstChild("StickyWeld")
										if v3 then
											local v4 = v3.Part1
											if v4 then
												if v4 ~= v5 then O.Events.DestroyToyEvent:FireServer(v1);task.wait() ; f() end

											else O.Events.DestroyToyEvent:FireServer(v1);task.wait() ; f() end
										else O.Events.DestroyToyEvent:FireServer(v1);task.wait() ; f() end
									else O.Events.DestroyToyEvent:FireServer(v1);task.wait() ; f() end

								elseif not(O.me.InPlot.Value) and O.me.CanSpawnToy.Value then
									if lastt then lastt = false; task.wait(0.5) end
									task.spawn(toy_spawn2,"NinjaKunai")
									while not(O.backpack:FindFirstChild("NinjaKunai")) do task.wait() end
									local v8 = O.backpack:FindFirstChild("NinjaKunai").StickyPart
									local v9 = v8.StickyWeld
									auto_invis_touch(v8, v7)
									while v9.Part1 == nil do
										O.Events.StickyPartEvent:FireServer(v8,v5,CFrame.new(0.0490287527, -0.000000000000000, 0.00000000, -0.00000000, 0.00739139877, -0.999561906, -0.998452604, -0.0478846952, 0.0282763243, -0.0476547107, 0.99882561, 0.00000000000) * CFrame.Angles(0, 180, 0))
										task.wait()
									end
								elseif O.me.InPlot.Value then lastt = true end
							end
						end
					end
				end
				local lastt = false
				while antikick do
					f()
					task.wait()
				end
			end,
		})

		local AntiVoid = usertab:CreateToggle({
			Name = "Anti Void",
			CurrentValue = false,
			Flag = "AntiVoid", 
			Callback = function(Value)
				antivoid = Value
				if antivoid then S.w.FallenPartsDestroyHeight = -10000 else S.w.FallenPartsDestroyHeight = -100 end
			end,
		})

		local WaterWalk = usertab:CreateToggle({
			Name = "Water Walk",
			CurrentValue = false,
			Flag = "WaterWalk", 
			Callback = function(Value)
				local v1 = O.m.AlwaysHereTweenedObjects.Ocean.Object.ObjectModel
				local t = not(v1.Ocean.CanCollide)
				for _,prt in pairs(v1:GetChildren()) do 
					if prt:IsA("Part") and prt.Name == "Ocean" then 
						prt.CanCollide = t
					end
				end
			end,
		})

		local AntiSeatReset = usertab:CreateToggle({
			Name = "Anti Seat Reset",
			CurrentValue = false,
			Flag = "AntiSeatReset", 
			Callback = function(Value)
				antiseat = Value
				local seat 
				local last_seat
				while antiseat and task.wait() do
					local v1 = O.me.Character; if v1 then
						local v2 = v1:FindFirstChild("Humanoid"); if v2 then
							if v2.SeatPart then
								seat = v2.SeatPart
								last_seat = true
							else last_seat = false end
							if O.me.IsHeld.Value and last_seat then
								while O.me.IsHeld.Value do task.wait(0.3) end
								while v2.SeatPart ~= seat and task.wait(0.3) do seat:Sit(v2) end
							end
						end
					end
				end
			end,		
		})

		local AntiLag = usertab:CreateToggle({
			Name = "Anti Lag",
			CurrentValue = false,
			Flag = "AntiLag", 
			Callback = function(Value)
				AntiLaggg = Value
				O.me.PlayerScripts.CharacterAndBeamMove.Disabled = Value
			end,
		})

	usertab:CreateSection("Protections Binds")

		usertab:CreateKeybind({
			Name = "Anti Grab Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "AntiGrabBind", 
			Callback = function(Keybind)
				fstatus("Anti Grab".." is a "..(not(antiGrabToggle) and "En" or "Dis").."abled")
				AntiGrab:Set(not(antiGrabToggle))
			end,
		})

		usertab:CreateKeybind({
			Name = "Anti Grab Loop Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "AntiGrabLoopBind", 
			Callback = function(Keybind)
				fstatus("Anti Grab Loop".." is a "..(not(antigrabloop) and "En" or "Dis").."abled")
				AntiGrabLoop:Set(not(antigrabloop))
			end,
		})

		usertab:CreateKeybind({
			Name = "Anti Grab Tp Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "AntiGrabTpBind", 
			Callback = function(Keybind)
				fstatus("Anti Grab Tp".." is a "..(not(antigrabtp) and "En" or "Dis").."abled")
				AntiGrabTp:Set(not(antigrabtp))
			end,
		})

		usertab:CreateKeybind({
			Name = "Anti Blob Kick Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "AntiBlobKickBind", 
			Callback = function(Keybind)
				fstatus("Anti Blob Kick".." is a "..(not(antiblob) and "En" or "Dis").."abled")
				AntiBlobKick:Set(not(antiblob))
			end,
		})

		usertab:CreateKeybind({
			Name = "Anti Explosion Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "AntiExplosionBind", 
			Callback = function(Keybind)
				fstatus("Anti Explosion".." is a "..(not(antiexpl) and "En" or "Dis").."abled")
				AntiExplosion:Set(not(antiexpl))
			end,
		})

		usertab:CreateKeybind({
			Name = "Anti Burn Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "AntiBurnBind", 
			Callback = function(Keybind)
				fstatus("Anti Burn".." is a "..(not(antiburn) and "En" or "Dis").."abled")
				AntiBurn:Set(not(antiburn))
			end,
		})

		usertab:CreateKeybind({
			Name = "Anti Kick Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "AntiKickBind", 
			Callback = function(Keybind)
				fstatus("Anti Kick".." is a "..(not(antikick) and "En" or "Dis").."abled")
				AntiKick:Set(not(antikick))
			end,
		})

		usertab:CreateKeybind({
			Name = "Anti Void Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "AntiVoidBind", 
			Callback = function(Keybind)
				fstatus("Anti Void".." is a "..(not(antivoid) and "En" or "Dis").."abled")
				AntiVoid:Set(not(antivoid))
			end,
		})

		usertab:CreateKeybind({
			Name = "Water Walk Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "WaterWalkBind", 
			Callback = function(Keybind)
				local v1 = O.m.AlwaysHereTweenedObjects.Ocean.Object.ObjectModel
				local t = not(v1.Ocean.CanCollide)
				fstatus("Water Walk".." is a "..(not(t) and "En" or "Dis").."abled")
				WaterWalk:Set(not(t))
			end,
		})

		usertab:CreateKeybind({
			Name = "Anti Seat Reset Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "AntiSeatResetBind", 
			Callback = function(Keybind)
				fstatus("Anti Seat Reset".." is a "..(not(antiseat) and "En" or "Dis").."abled")
				AntiSeatReset:Set(not(antiseat))
			end,
		})

		usertab:CreateKeybind({
			Name = "Anti Lag Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "AntiLagBind", 
			Callback = function(Keybind)
				fstatus("Anti Lag".." is a "..(not(AntiLaggg) and "En" or "Dis").."abled")
				AntiLag:Set(not(AntiLaggg))
			end,
		})

	usertab:CreateSection("Animations")

		usertab:CreateToggle({
			Name = "Play Typing Animation",
			CurrentValue = false,
			Flag = "PlayTypingAnimation",
			Callback = function(Value)
				if Value then
					typingTrack:Play()
				else
					typingTrack:Stop()
				end
			end,
		})

		usertab:CreateToggle({
			Name = "Fly Crouch",
			CurrentValue = false,
			Flag = "FlyCrouch",
			Callback = function(Value)
				if Value then
					crouchTrack:Play()
				else
					crouchTrack:Stop()
				end
			end,
		})


		usertab:CreateToggle({
			Name = "Throwed Animation",
			CurrentValue = false,
			Flag = "ThrowedAnimation",
			Callback = function(Value)
				if Value then
					throwedTrack:Play()
				else
					throwedTrack:Stop()
				end
			end
		})

	usertab:CreateSection("Walk Speed")

		local WalkSpeedToggle = usertab:CreateToggle({
			Name = "Walk Speed Toggle",
			CurrentValue = false,
			Flag = "WalkSpeedToggle", 
			Callback = function(Value)
				wst = Value
				while wst do
					if O.me.Character ~= nil then
						if O.me.Character.Humanoid ~= nil then
							O.me.Character:WaitForChild("HumanoidRootPart").CFrame = O.me.Character:WaitForChild("HumanoidRootPart").CFrame + O.me.Character:WaitForChild("Humanoid").MoveDirection * (N.wss/10)
						end
					end
					task.wait()
				end
				if O.me.Character ~= nil then
					if O.me.Character.Humanoid ~= nil then
						O.me.Character.Humanoid.WalkSpeed = 16
					end
				end
			end,
		})

		usertab:CreateSlider({
			Name = "Walk Speed Slider",
			Range = {0, 300},
			Increment = 1,
			Suffix = "",
			CurrentValue = 5,
			Flag = "WalkSpeedSlider",
			Callback = function(Value)
				N.wss = Value
			end,
		})

		usertab:CreateKeybind({
			Name = "Walk Speed Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "WalkSpeedBind", 
			Callback = function(Keybind)
				fstatus("Walk Speed".." is a "..(not(wst) and "En" or "Dis").."abled")
				WalkSpeedToggle:Set(not(wst))
			end,
		})

	usertab:CreateSection("Jump Power")

		local JumpPowerToggle = usertab:CreateToggle({
			Name = "Jump Power Toggle",
			CurrentValue = false,
			Flag = "JumpPowerToggle", 
			Callback = function(Value)
				jpt = Value
				while jpt do
					if O.me.Character ~= nil then
						if O.me.Character.Humanoid ~= nil then
							O.me.Character.Humanoid.JumpPower = N.jps
							task.wait()
						end
					end
					task.wait()
				end
				if O.me.Character ~= nil then
					if O.me.Character.Humanoid ~= nil then
						O.me.Character.Humanoid.JumpPower = 24
					end
				end
			end,
		})

		usertab:CreateToggle({
			Name = "Inf Jump",
			CurrentValue = false,
			Flag = "InfJump", 
			Callback = function(Value)
				infj = Value
			end,
		})

		usertab:CreateSlider({
			Name = "Jump Power Slider",
			Range = {0, 500},
			Increment = 10,
			Suffix = "",
			CurrentValue = 50,
			Flag = "JumpPowerSlider",
			Callback = function(Value)
				N.jps = Value
			end,
		})

		usertab:CreateKeybind({
			Name = "Jump Power Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "JumpPowerBind", 
			Callback = function(Keybind)
				fstatus("Jump Power".." is a "..(not(jpt) and "En" or "Dis").."abled")
				JumpPowerToggle:Set(not(jpt))
			end,
		})

	usertab:CreateSection("Gravity")

		local GravityToggle = usertab:CreateToggle({
			Name = "Gravity Toggle",
			CurrentValue = false,
			Flag = "GravityToggle", 
			Callback = function(Value)
				gt = Value
				while gt do S.w.Gravity = N.gs; task.wait() end
				S.w.Gravity = 100
			end,
		})

		usertab:CreateSlider({
			Name = "Gravity Slider",
			Range = {0, 1000},
			Increment = 10,
			Suffix = "",
			CurrentValue = 100,
			Flag = "GravitySlider",
			Callback = function(Value)
				N.gs = Value
			end,
		})

		usertab:CreateKeybind({
			Name = "Gravity Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "GravityBind", 
			Callback = function(Keybind)
				fstatus("Gravity".." is a "..(not(gt) and "En" or "Dis").."abled")
				GravityToggle:Set(not(gt))
			end,
		})

local grabtab = Window:CreateTab("Grab And Line Mods", 7733954884)

	grabtab:CreateSection("Basic Grab Mods")



		local RadioactiveGrab = grabtab:CreateToggle({
			Name = "Radioactive Grab",
			CurrentValue = false,
			Flag = "RadioactiveGrab", 
			Callback = function(Value)
				radiactive = Value
			end,
		})

		 local BurnGrab = grabtab:CreateToggle({
		 	Name = "Burn Grab",
		 	CurrentValue = false,
		 	Flag = "BurnGrab", 
			Callback = function(Value)
				fire = Value
	end,
})

		local KillGrab = grabtab:CreateToggle({
			Name = "Kill Grab",
			CurrentValue = false,
			Flag = "KillGrab", 
			Callback = function(Value)
				killg = Value
			end,
		})

		local NoclipGrab = grabtab:CreateToggle({
			Name = "Noclip Grab",
			CurrentValue = false,
			Flag = "NoclipGrab", 
			Callback = function(Value)
				clippp = Value
			end,
		})

	grabtab:CreateSection("Basic Grab Mods Binds")


		grabtab:CreateKeybind({
			Name = "Radioactive Grab Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "RadioactiveGrabBind", 
			Callback = function(Keybind)
				fstatus("Radioactive Grab".." is a "..(not(radiactive) and "En" or "Dis").."abled")
				RadioactiveGrab:Set(not(radiactive))
			end,
		})

		 grabtab:CreateKeybind({
			Name = "Burn Grab Bind",
		 	CurrentKeybind = "",
		 	HoldToInteract = false,
			Flag = "BurnGrabBind", 
		 	Callback = function(Keybind)
	 		fstatus("Burn Grab".." is a "..(not(fire) and "En" or "Dis").."abled")
			BurnGrab:Set(not(fire))
			end,
		 })

		grabtab:CreateKeybind({
			Name = "Kill Grab Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "KillGrabBind", 
			Callback = function(Keybind)
				fstatus("Kill Grab".." is a "..(not(killg) and "En" or "Dis").."abled")
				KillGrab:Set(not(killg))
			end,
		})

		grabtab:CreateKeybind({
			Name = "Noclip Grab Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "NoclipGrabBind", 
			Callback = function(Keybind)
				fstatus("Noclip Grab".." is a "..(not(clippp) and "En" or "Dis").."abled")
				NoclipGrab:Set(not(clippp))
			end,
		})

	grabtab:CreateSection("Advanced Grab Mods")

		local CrazyGrab = grabtab:CreateToggle({
			Name = "Crazy Grab",
			CurrentValue = false,
			Flag = "CrazyGrab", 
			Callback = function(Value)
				kickkk1 = Value
			end,
		})

		local SkyGrab = grabtab:CreateToggle({
			Name = "Sky Grab",
			CurrentValue = false,
			Flag = "SkyGrab", 
			Callback = function(Value)
				kickkk2 = Value
			end,
		})

		local UltraGrab = grabtab:CreateToggle({
			Name = "Ultra Grab",
			CurrentValue = false,
			Flag = "UltraGrab", 
			Callback = function(Value)
				ultragrabbb = Value
			end,
		})

		local UltraClickGrab = grabtab:CreateToggle({
			Name = "Ultra Click Grab",
			CurrentValue = false,
			Flag = "UltraClickGrab", 
			Callback = function(Value)
				ultraclickgrab = Value
				while ultraclickgrab do
					invis_touch(O.mouse.Target)
					task.wait()
				end
			end,
		})

		local InfZoom = grabtab:CreateToggle({
			Name = "Inf Zoom",
			CurrentValue = false,
			Flag = "InfZoom", 
			Callback = function(Value)
				zgt = Value
			end,
		})

	grabtab:CreateSection("Advanced Grab Mods Binds")

		grabtab:CreateKeybind({
			Name = "Crazy Grab Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "CrazyGrabBind", 
			Callback = function(Keybind)
				fstatus("Crazy Grab".." is a "..(not(kickkk1) and "En" or "Dis").."abled")
				CrazyGrab:Set(not(kickkk1))
			end,
		})

		grabtab:CreateKeybind({
			Name = "Sky Grab Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "SkyGrabBind", 
			Callback = function(Keybind)
				fstatus("Sky Grab".." is a "..(not(kickkk2) and "En" or "Dis").."abled")
				SkyGrab:Set(not(kickkk2))
			end,
		})

		grabtab:CreateKeybind({
			Name = "Ultra Grab Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "UltraGrabBind", 
			Callback = function(Keybind)
				fstatus("Ultra Grab".." is a "..(not(ultragrabbb) and "En" or "Dis").."abled")
				UltraGrab:Set(not(ultragrabbb))
			end,
		})

		grabtab:CreateKeybind({
			Name = "Ultra Click Grab Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "UltraClickGrabBind", 
			Callback = function(Keybind)
				fstatus("Ultra Click Grab".." is a "..(not(ultraclickgrab) and "En" or "Dis").."abled")
				UltraClickGrab:Set(not(ultraclickgrab))
			end,
		})



	grabtab:CreateSection("Basic Line Mods")

		grabtab:CreateToggle({
			Name = "Invisble Line",
			CurrentValue = false,
			Flag = "InvisbleLine", 
			Callback = function(Value)
				invisline = Value
				while invisline do
					O.Events.CreateGrabEvent:FireServer()
					task.wait()
				end
			end,
		})

		grabtab:CreateToggle({
			Name = "Extend Line",
			CurrentValue = false,
			Flag = "ExtendLine", 
			Callback = function(Value)
				extende = Value
				while extende do
					O.Events.ExtendLineEvent:FireServer(1000000)
					task.wait()
				end
			end,
		})

		grabtab:CreateToggle({
			Name = "Crazy Line(Grab All Players)",
			CurrentValue = false,
			Flag = "CrazyLine", 
			Callback = function(Value)
				crazyline = Value
				while crazyline do
					for _,plr in ipairs(S.Players:GetPlayers()) do
						local v1 = plr.Character; if v1 then
							local v2 = v1:FindFirstChild("Head"); if v2 then
								O.Events.CreateGrabEvent:FireServer(v2, v2.CFrame)
								task.wait()
							end
						end
					end
				end
			end,
		})

		grabtab:CreateToggle({
			Name = "Crazy Line(Grab All Parts)",
			CurrentValue = false,
			Flag = "CrazyLine2", 
			Callback = function(Value)
				crazyline2 = Value
				while crazyline2 do
					for _,prt in pairs(O.m:GetDescendants()) do
						if prt:IsA("Part") and crazyline2 then O.Events.CreateGrabEvent:FireServer(prt, prt.CFrame); task.wait() end
					end
				end
			end,
		})

		grabtab:CreateToggle({
			Name = "Crazy Line(Grab All Toys)",
			CurrentValue = false,
			Flag = "CrazyLine3", 
			Callback = function(Value)
				crazyline3 = Value
				while crazyline3 do
					for _,plr in ipairs(S.Players:GetPlayers()) do
						for _,toy in pairs(S.w[plr.Name.."SpawnedInToys"]:GetChildren()) do
							for _,prt in pairs(toy:GetChildren()) do
								if prt:IsA("Part") and crazyline3 then O.Events.CreateGrabEvent:FireServer(prt, prt.CFrame); task.wait() end
							end
						end
					end
				end
			end,
		})

	grabtab:CreateSection("Advanced Line Mods")

		grabtab:CreateToggle({
			Name = "Loop Random Line Color",
			CurrentValue = false,
			Flag = "LoopRandomLineColor", 
			Callback = function(Value)
				rgb = Value
				local save = O.me.BeamColor.ColorSequenceHolder.Color
				while rgb do
					if N.linecolorscount == 1 then
						O.Events.SetLineColorEvent:FireServer(ColorSequence.new(Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))))
						task.wait()
					elseif N.linecolorscount == 2 then
						O.Events.SetLineColorEvent:FireServer(ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))), ColorSequenceKeypoint.new(1, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255)))})
						task.wait()
					elseif N.linecolorscount == 20 then
						local args = {
							[1] = ColorSequence.new{
								ColorSequenceKeypoint.new(0, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.05, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.10, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.15, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.20, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.25, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.30, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.35, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.40, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.45, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.50, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.55, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.60, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.65, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.70, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.75, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.80, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.85, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(0.90, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))),
								ColorSequenceKeypoint.new(1, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255)))
							}
						}
						O.Events.SetLineColorEvent:FireServer(unpack(args))
						task.wait()
					else
						local colors = {ColorSequenceKeypoint.new(0, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255)))}
						for colorscount=0, N.linecolorscount do
							if colorscount ~= 1 then
								if colorscount ~= N.linecolorscount then
									table.insert(colors, ColorSequenceKeypoint.new(1/N.linecolorscount*colorscount, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))))
								else
									table.insert(colors, ColorSequenceKeypoint.new(1, Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))))
								end
							end
						end
						O.Events.SetLineColorEvent:FireServer(ColorSequence.new(colors))
						task.wait()
					end
				end
				O.Events.SetLineColorEvent:FireServer(save)
			end,
		})

		grabtab:CreateSlider({
			Name = "Line Colors Count Slider",
			Range = {1, 20},
			Increment = 1,
			Suffix = "",
			CurrentValue = 2,
			Flag = "LineColorsCountSlider",
			Callback = function(Value)
				N.linecolorscount = Value
			end,
		})

		grabtab:CreateSection("Set Custom Line Color(20 Colors)")

		grabtab:CreateColorPicker({
			Name = "Line Color 1",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[1] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 2",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[2] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 3",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[3] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 4",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[4] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 5",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[5] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 6",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[6] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 7",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[7] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 8",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[8] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 9",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[9] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 10",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[10] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 11",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[11] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 12",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[12] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 13",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[13] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 14",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[14] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 15",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[15] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 16",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[16] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 17",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[17] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 18",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[18] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 19",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[19] = Value
				set_line_color()
			end
		})


		grabtab:CreateColorPicker({
			Name = "Line Color 20",
			Color = Color3.fromRGB(0,0,0),
			Callback = function(Value)
				Lt.ccolors[20] = Value
				set_line_color()
			end
		})	

local blobtab = Window:CreateTab("Blobman Functions", 7733916988)

	local kickcount = blobtab:CreateLabel("Kicked: "..N.kickcountc)
	
	blobtab:CreateSection("Basic Functions")

	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer
	local blobalter = 1
	local blobman = nil
	local blobmanCoroutine = nil
	
	local LeftHandEnabled = false
	local RightHandEnabled = false
	local BothHandsEnabled = false
	local WhitelistFriendsEnabled = false
	
	local KickSpeed = 10 
	
	-- Function to check if a player is a friend
	local function isFriend(player)
		return player:IsFriendsWith(localPlayer.UserId)
	end
	
	local function blobGrabPlayer(player, blobman)
		if not blobman or not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
			return
		end
	
		if WhitelistFriendsEnabled and isFriend(player) then
			return 
		end
	
		if LeftHandEnabled and not RightHandEnabled and not BothHandsEnabled then
			local args = {
				[1] = blobman:FindFirstChild("LeftDetector"),
				[2] = player.Character:FindFirstChild("HumanoidRootPart"),
				[3] = blobman:FindFirstChild("LeftDetector"):FindFirstChild("LeftWeld")
			}
			blobman:WaitForChild("BlobmanSeatAndOwnerScript"):WaitForChild("CreatureGrab"):FireServer(unpack(args))
		end
	
		if RightHandEnabled and not LeftHandEnabled and not BothHandsEnabled then
			local args = {
				[1] = blobman:FindFirstChild("RightDetector"),
				[2] = player.Character:FindFirstChild("HumanoidRootPart"),
				[3] = blobman:FindFirstChild("RightDetector"):FindFirstChild("RightWeld")
			}
			blobman:WaitForChild("BlobmanSeatAndOwnerScript"):WaitForChild("CreatureGrab"):FireServer(unpack(args))
		end
	
		--  Hands Grab
		if BothHandsEnabled then
			--  Hand
			local leftArgs = {
				[1] = blobman:FindFirstChild("LeftDetector"),
				[2] = player.Character:FindFirstChild("HumanoidRootPart"),
				[3] = blobman:FindFirstChild("LeftDetector"):FindFirstChild("LeftWeld")
			}
			blobman:WaitForChild("BlobmanSeatAndOwnerScript"):WaitForChild("CreatureGrab"):FireServer(unpack(leftArgs))
	
			--  Hand
			local rightArgs = {
				[1] = blobman:FindFirstChild("RightDetector"),
				[2] = player.Character:FindFirstChild("HumanoidRootPart"),
				[3] = blobman:FindFirstChild("RightDetector"):FindFirstChild("RightWeld")
			}
			blobman:WaitForChild("BlobmanSeatAndOwnerScript"):WaitForChild("CreatureGrab"):FireServer(unpack(rightArgs))
		end
	end
	
	local function toggleBlobmanGrabbing(enabled)
		if enabled then
			print("Grabbing enabled")
			blobmanCoroutine = coroutine.create(function()
				local foundBlobman = false
				for _, v in pairs(game.Workspace:GetDescendants()) do
					if v.Name == "CreatureBlobman" then
						if v:FindFirstChild("VehicleSeat") and v.VehicleSeat:FindFirstChild("SeatWeld") and 
							v.VehicleSeat.SeatWeld.Part1 and v.VehicleSeat.SeatWeld.Part1:IsDescendantOf(localPlayer.Character) then
							
							print("Mounted on blobman")
							blobman = v
							foundBlobman = true
							break
						end
					end
				end
	
				if not foundBlobman then
					print("No mount found")
					OrionLib:MakeNotification({
						Name = "Error",
						Content = "You must be mounted upon a blobman to begin this process. Please mount one and toggle this again!", 
						Image = "rbxassetid://4483345998", 
						Time = 5
					})
					return
				end
	
				while true do
					pcall(function()
						while wait() do
							for _, v in pairs(Players:GetChildren()) do
								if blobman and v ~= localPlayer then
									blobGrabPlayer(v, blobman)
									print("Attempting to grab:", v.Name)
									wait((10 - KickSpeed) / 10) 
								end
							end
						end
					end)
					wait(0.02)
				end
			end)
			coroutine.resume(blobmanCoroutine)
		else
			if blobmanCoroutine then
				coroutine.close(blobmanCoroutine)
				blobmanCoroutine = nil
				blobman = nil
			end
		end
	end
	
	blobtab:CreateToggle({
		Name = "Left Hand Grab",
		CurrentValue = false,
		Callback = function(Value)
			LeftHandEnabled = Value
			RightHandEnabled = false
			BothHandsEnabled = false
			toggleBlobmanGrabbing(LeftHandEnabled or RightHandEnabled or BothHandsEnabled)
		end,
	})
	
	blobtab:CreateToggle({
		Name = "Right Hand Grab",
		CurrentValue = false,
		Callback = function(Value)
			RightHandEnabled = Value
			LeftHandEnabled = false
			BothHandsEnabled = false
			toggleBlobmanGrabbing(LeftHandEnabled or RightHandEnabled or BothHandsEnabled)
		end,
	})
	
	blobtab:CreateToggle({
		Name = "Both Hands Grab",
		CurrentValue = false,
		Callback = function(Value)
			BothHandsEnabled = Value
			LeftHandEnabled = false
			RightHandEnabled = false
			toggleBlobmanGrabbing(LeftHandEnabled or RightHandEnabled or BothHandsEnabled)
		end,
	})
	
	blobtab:CreateToggle({
		Name = "Whitelist Friends",
		CurrentValue = false,
		Callback = function(Value)
			WhitelistFriendsEnabled = Value
		end,
	})
	
	-- **Kick Speed Slider**
	blobtab:CreateSlider({
		Name = "Kick Speed Slider",
		Range = {1, 1000},
		Increment = 1,
		Suffix = "",
		CurrentValue = 10,
		Callback = function(Value)
			KickSpeed = Value
		end,
	})
		
		blobtab:CreateToggle({
			Name = "Use All Blobs",
			CurrentValue = false,
			Flag = "UseAllBlobs", 
			Callback = function(Value)
				allblobs = Value
			end,
		})

		blobtab:CreateToggle({
			Name = "Ghost Blob",
			CurrentValue = false,
			Flag = "GhostKick", 
			Callback = function(Value)
				gk = Value
				while gk and task.wait() do
					local v1 = O.me.Character
					if v1 then
						local v2 = v1.Humanoid.SeatPart
						if v2 then
							local v3 = v2.Parent
							if v3.Name == "CreatureBlobman" then
								if v2:FindFirstChild("WeldConstraint") then 
									v2.WeldConstraint:Destroy()
									local bp = Instance.new("BodyPosition", v2)
									bp.MaxForce = N.V.mhv3
									bp.Position = v2.Position
									v2.Transparency = 0 
								end
							end
						end
					end
				end
			end,
		})

	

local lagtab = Window:CreateTab("Lag Menu", 7733765045)

	local pping = lagtab:CreateLabel("Your Currently Ping: "..O.me:GetNetworkPing() * 1000)
	lagtab:CreateToggle({
		Name = "Update Ping",
		CurrentValue = false,
		Flag = "UpdatePing", 
		Callback = function(Value)
			rthrthrth = Value
			while rthrthrth and task.wait() do pping:Set("Your Currently Ping: "..O.me:GetNetworkPing()*1000) end
		end, 
	})

	local LagServer = lagtab:CreateToggle({
		Name = "Lag Server",
		CurrentValue = false,
		Callback = function(Value)
			laggg = Value
			while laggg do
				for b=0,N.Lag_Intensity do
					O.Events.CreateGrabEvent:FireServer(S.w.SpawnLocation,S.w.SpawnLocation.CFrame)
				end
				task.wait(1)
			end 
		end
	})

	lagtab:CreateSlider({
		Name = "Lag Intensity Slider",
		Range = {1, 404},
		Increment = 1,
		Suffix = "",
		CurrentValue = 105,
		Flag = "LagIntensitySlider",
		Callback = function(Value)
			N.Lag_Intensity = Value*10
		end,
	})

	lagtab:CreateKeybind({
		Name = "Lag Server Bind",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "LagServerBind", 
		Callback = function(Keybind)
			fstatus("Lag Server".." is a "..(not(laggg) and "En" or "Dis").."abled")
			LagServer:Set(not(laggg))
		end,
	})	

local killtab = Window:CreateTab("Players Menu", 7733674079)

	local kickcount1 = killtab:CreateLabel("Kicked: "..N.kickcountc)

	killtab:CreateSection("Kill")

		killtab:CreateButton({
			Name = "Kill Player",
			Callback = function()
				for _,plr in pairs(P.who) do
					if S.Players:FindFirstChild(plr) then
						plr_kill2(S.Players[plr])
					end
				end
			end,
		})

		killtab:CreateToggle({
			Name = "Loop Kill Player",
			CurrentValue = false,
			Callback = function(Value)
				loopkill = Value
				while loopkill and task.wait() do
					for _,plr in pairs(P.who) do
						if S.Players:FindFirstChild(plr) then
							plr_kill2(S.Players[plr])
						end
					end
				end
			end,
		})

		killtab:CreateButton({
			Name = "Kill All Players",
			Callback = function()
				for _,plr in ipairs(S.Players:GetPlayers()) do
					plr_kill2(plr)
				end
			end,
		})

local liststab = Window:CreateTab("Players Lists", 7733674079)

	local function create_players_lists()
		update_hui()
		liststab:CreateSection("Blobman Functions")
		liststab:CreateDropdown({
			Name = "Left Hand List",
			Options = Lt.hui,
			CurrentOption = {""},
			MultipleOptions = true,
			Flag = "LeftHandList", 
			Callback = function(Option)
				P.lplr = {"f"}
				for i,v in pairs(Option) do
					for i2,v2 in pairs(Lt.hui2) do
						if v == v2 then table.insert(P.lplr, i2) end
					end
				end
			end,
		})

		liststab:CreateDropdown({
			Name = "Right Hand List",
			Options = Lt.hui,
			CurrentOption = {""},
			MultipleOptions = true,
			Flag = "RightHandList", 
			Callback = function(Option)
				P.rplr = {"f"}
				for i,v in pairs(Option) do
					for i2,v2 in pairs(Lt.hui2) do
						if v == v2 then table.insert(P.rplr, i2) end
					end
				end
			end,
		})

		liststab:CreateSection("Players Menu")
		liststab:CreateDropdown({
			Name = "Kill List",
			Options = Lt.hui,
			CurrentOption = {""},
			MultipleOptions = true,
			Flag = "PlayersList", 
			Callback = function(Option)
				P.who = {}
				for i,v in pairs(Option) do
					for i2,v2 in pairs(Lt.hui2) do
						if v == v2 then table.insert(P.who, i2) end
					end
				end
			end,
		})

		liststab:CreateSection("Others")
		liststab:CreateDropdown({
			Name = "White List",
			Options = Lt.hui,
			CurrentOption = {""},
			MultipleOptions = true,
			Flag = "WhiteList", 
			Callback = function(Option)
				P.whll = {"f"}
				for i,v in pairs(Option) do
					for i2,v2 in pairs(Lt.hui2) do
						if v == v2 then table.insert(P.whll, i2) end
					end
				end
			end,
		})

		liststab:CreateDropdown({
			Name = "Join Notify(Temp) List",
			Options = Lt.hui,
			CurrentOption = {""},
			MultipleOptions = true,
			Flag = "SpyList", 
			Callback = function(Option)
				Lt.spylist = {"f"}
				for i,v in pairs(Option) do
					for i2,v2 in pairs(Lt.hui2) do
						if v == v2 then table.insert(Lt.spylist, i2) end
					end
				end
			end,
		})
	end

	

	liststab:CreateKeybind({
		Name = "Kill",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "Add/RemovePlayertoPlayersList", 
		Callback = function(Keybind)
			local v1 = O.mouse.target
			local check = {"Head","Right Arm","Left Arm","Torso","Right Leg","Left Leg","HumanoidRootPart","FirePlayerPart"}
			for _,v in pairs(check) do 
				if v == v1.Name and check_prem(v1.Parent.Name) then
					local t = true
					for i,v in pairs(P.who) do 
						if v == v1.Parent.Name then 
							table.remove(P.who, i)
							fstatus(v..": Remove from Players List")
							t = false
							break
						end
					end
					if t then
						table.insert(P.who, v1.Parent.Name)
						fstatus(v1.Parent.Name..": Add from Players List")
					end
					break
				end
			end
		end,
	})

	liststab:CreateKeybind({
		Name = "White",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "Add/RemovePlayertoWhiteList", 
		Callback = function(Keybind)
			local v1 = O.mouse.target
			local check = {"Head","Right Arm","Left Arm","Torso","Right Leg","Left Leg","HumanoidRootPart","FirePlayerPart"}
			for _,v in pairs(check) do 
				if v == v1.Name and check_prem(v1.Parent.Name) then
					local t = true
					for i,v in pairs(P.whll) do 
						if v == v1.Parent.Name then 
							table.remove(P.whll, i)
							fstatus(v..": Remove from White List")
							t = false
							break
						end
					end
					if t then
						table.insert(P.whll, v1.Parent.Name)
						fstatus(v1.Parent.Name..": Add from White List")
					end
					break
				end
			end
		end,
	})

	liststab:CreateKeybind({
		Name = "Join Notify(Temp)",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "Add/RemovePlayertoSpyList(Temp)", 
		Callback = function(Keybind)
			local v1 = O.mouse.target
			local check = {"Head","Right Arm","Left Arm","Torso","Right Leg","Left Leg","HumanoidRootPart","FirePlayerPart"}
			for _,v in pairs(check)  do 
				if v == v1.Name and check_prem(v1.Parent.Name) then
					local t = true
					for i,v in pairs(Lt.spylist) do
						if v == v1.Parent.Name then 
							table.remove(Lt.spylist, i)
							fstatus(v..": Remove from Spy List(Temp)")
							t = false
							break
						end
					end
					if t then
						table.insert(Lt.spylist, v1.Parent.Name)
						fstatus(v1.Parent.Name..": Add from Spy List(Temp)")
					end
					break
				end
			end
		end,
	})

	liststab:CreateKeybind({
		Name = "Join Notify(Save)",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "Add/RemovePlayertoSpyList(Save)", 
		Callback = function(Keybind)
			local v1 = O.mouse.target
			local check = {"Head","Right Arm","Left Arm","Torso","Right Leg","Left Leg","HumanoidRootPart","FirePlayerPart"}
			for _,v in pairs(check)  do 
				if v == v1.Name and check_prem(v1.Parent.Name) then
					local t = true
					local t2 = true
					for i,v in pairs(Lt.sspylist) do
						if v == v1.Parent.Name then 
							table.remove(Lt.sspylist, i)
							fstatus(v..": Remove from Spy List(Save)")
							writefile("VHS/sspylist.vhs",tostring(S.HS:JSONEncode(Lt.sspylist)))
							t = false
							break
						end
					end
					for i,v in pairs(Lt.spylist) do
						if v == v1.Parent.Name then
							if not(t) then 
								table.remove(Lt.spylist, i)
								fstatus(v..": Remove from Spy List(Temp)")
							end
							t2 = false
							break
						end
					end
					if t then
						table.insert(Lt.sspylist, v1.Parent.Name)
						fstatus(v1.Parent.Name..": Add from Spy List(Save)")
						writefile("VHS/sspylist.vhs",tostring(S.HS:JSONEncode(Lt.sspylist)))
					end
					if t2 then
						table.insert(Lt.spylist, v1.Parent.Name)
						fstatus(v1.Parent.Name..": Add from Spy List(Temp)")
					end
					break
				end
			end
		end,
	})

	create_players_lists()

local auratab = Window:CreateTab("Auras", 7733666258)

	auratab:CreateSection("Auras")

		local TpToSpawnAura = auratab:CreateToggle({
			Name = "Tp To Spawn Aura",
			CurrentValue = false,
			Flag = "TpToSpawnAura",
			Callback = function(Value)
				flingaura = Value
				while flingaura and task.wait() do
					local v1 = O.me.Character; if v1 then
						local v2 = v1:FindFirstChild("Head") if v2 then
							for _,plr in ipairs(S.Players:GetPlayers()) do
								if flingaura and plr ~= O.me and check_prem(plr.Name) and check_whll(plr.Name) then
									local v11 = plr.Character; if v11 then
										local v12 = v11:FindFirstChild("Head"); if v12 then
											if (v2.Position - v12.Position).Magnitude < N.distallaura then
												task.spawn(function()
													invis_touch(hd)
													while not(hd:FindFirstChild("PartOwner")) do task.wait() end
													local bp = hd:FindFirstChild("fpabp")
													if not(bp) then
														local bp = Instance.new("BodyPosition", hd)
														bp.MaxForce = Vector3.new(10000,10000,10000)
														bp.D = 2000
														while hd:FindFirstChild("PartOwner") do task.wait() end
														bp:Destroy()
													end
												end)
											end
										end
									end
								end
							end
						end
					end
				end
				for _,obj in pairs(S.w:GetDescendants()) do if obj.Name == "fpabp" then obj:Destroy() end end
			end,
		})

		local FlingAura = auratab:CreateToggle({
			Name = "Fling Aura",
			CurrentValue = false,
			Flag = "FlingAura",
			Callback = function(Value)
				fling2aura = Value
				while fling2aura and task.wait() do
					for _,plr in ipairs(Players:GetPlayers()) do
						if plr ~= O.me and check_prem(plr.Name) and check_whll(plr.Name) then
							task.spawn(plr_fling, plr, true)
						end
					end
				end
			end,
		})

		local KillAura = auratab:CreateToggle({
			Name = "Kill Aura (void (fast but 65% chance))",
			CurrentValue = false,
			Flag = "KillAura",
			Callback = function(Value)
				killaura = Value
				while killaura and task.wait() do
					for _,plr in ipairs(Players:GetPlayers()) do
						if plr ~= O.me and check_prem(plr.Name) and check_whll(plr.Name) then
							task.spawn(plr_kill1, plr, true)
						end
					end
				end
			end,
		})

		local KillAura1 = auratab:CreateToggle({
			Name = "Kill Aura (health (slow but 80% chance)",
			CurrentValue = false,
			Flag = "KillAuratwo",
			Callback = function(Value)
				killaura1 = Value
				while killaura1 and task.wait() do
					for _,plr in ipairs(Players:GetPlayers()) do
						if plr ~= O.me and check_prem(plr.Name) and check_whll(plr.Name) then
							task.spawn(plr_kill2, plr, true)
						end
					end
				end
			end,
		})

		local GrabAura = auratab:CreateToggle({
			Name = "Grab Aura",
			CurrentValue = false,
			Flag = "GrabAura",
			Callback = function(Value)
				grabaura = Value
				while grabaura and task.wait() do
					for _,plr in ipairs(Players:GetPlayers()) do
						if plr ~= O.me and check_prem(plr.Name) and check_whll(plr.Name) then
							task.spawn(plr_grab, plr, true)
						end
					end
				end
			end,
		})

		local SplitAura = auratab:CreateToggle({
			Name = "Split Aura",
			CurrentValue = false,
			Flag = "SplitAura",
			Callback = function(Value)
				splitaura = Value
				while splitaura and task.wait() do
					for _,plr in ipairs(Players:GetPlayers()) do
						if plr ~= O.me and check_prem(plr.Name) and check_whll(plr.Name) then
							task.spawn(function()
								plr_ragdoll(plr, true)
								plr_split(plr, true)
							end)
						end
					end
				end
			end,
		})

		local FreezeToy = auratab:CreateToggle({
			Name = "Freeze Toy",
			CurrentValue = false,
			Flag = "FreezeToy",
			Callback = function(Value)
				freezetoy = Value
				while freezetoy and task.wait() do
					local v1 = O.me.Character; if v1 then
						local v2 = v1:FindFirstChild("HumanoidRootPart"); if v2 then
							for _,plr in ipairs(S.Players:GetPlayers()) do
								if plr ~= O.me and check_prem(plr.Name) and S.w:FindFirstChild(plr.Name.."SpawnedInToys") and check_whll(plr.Name) then 
									for _,toy in pairs(S.w[plr.Name.."SpawnedInToys"]:GetChildren()) do
										for _,prt in pairs(toy:GetChildren()) do
											if prt:IsA("Part") then
												if prt.CanQuery then
													if (prt.Position - v2.Position).Magnitude < N.distallaura then
														task.spawn(function()
															if not(prt:FindFirstChild("ftabp")) then
																local bp = Instance.new("BodyPosition", prt)
																bp.Position = prt.Position
																bp.D = 100
																bp.MaxForce = N.V.mhv3
																bp.Name = "ftabp"
															end
															if not(prt:FindFirstChild("ftabg")) then
																local bg = Instance.new("BodyGyro", prt)
																bg.CFrame = prt.CFrame
																bg.D = 100
																bg.MaxTorque = N.V.mhv3
																bg.Name = "ftabg"
															end
															if not(prt:FindFirstChild("ftahl")) then
																local hl = Instance.new("Highlight", S.w.hls)
																hl.Adornee = toy
																hl.OutlineColor = Color3.fromRGB(0, 0, 255)
																hl.FillColor = Color3.fromRGB(0, 255, 255)
																hl.FillTransparency = 0.5
																hl.OutlineTransparency = 0
																hl.Name = "ftahl"
																local hlv = Instance.new("ObjectValue", prt)
																hlv.Value = hl
																hlv.Name = "ftahl"
															end
															local po = false
															for _,obj in pairs(toy:GetDescendants()) do if obj.Name == "PartOwner" then po = obj; break end end
															if not(po) or po.Value ~= O.myname then
																invis_touch(prt)
																task.wait()
															end
														end)
													elseif prt:FindFirstChild("ftabp") then prt.ftabp:Destroy(); prt.ftabg:Destroy(); prt.ftahl.Value:Destroy(); prt.ftahl:Destroy() end
													break
												end
											end
										end
									end
								end
							end
						end
					end
				end
				for _,obj in pairs(S.w:GetDescendants()) do if obj.Name == "ftabp" or obj.Name == "ftabg" or obj.Name == "ftahl" then obj:Destroy() end end
			end,
		})

		local DeleteToy = auratab:CreateToggle({
			Name = "Tp Toy",
			CurrentValue = false,
			Flag = "DeleteToy",
			Callback = function(Value)
				deletetoy = Value
				while deletetoy and task.wait() do
					local v1 = O.me.Character; if v1 then
						local v2 = v1:FindFirstChild("HumanoidRootPart"); if v2 then
							for _,plr in ipairs(S.Players:GetPlayers()) do
								if plr ~= O.me and check_prem(plr.Name) and S.w:FindFirstChild(plr.Name.."SpawnedInToys") and check_whll(plr.Name) then 
									for _,toy in pairs(S.w[plr.Name.."SpawnedInToys"]:GetChildren()) do
										for _,prt in pairs(toy:GetChildren()) do
											if prt:IsA("Part") and prt.CanQuery and prt.Name ~= "Deleting" and magnitude(prt, v2) < N.distallaura then
												task.spawn(function()
													local save = prt.Name
													prt.Name = "Deleting"
													while deletetoy and task.wait() do
														invis_touch(prt)
														if (prt:FindFirstChild("PartOwner") and prt.PartOwner.Value == O.myname) or not(prt.Parent) or (prt.Position - v2.Position).Magnitude > 30 then break end
													end
													prt.CFrame = P.tptoypos
													prt.Name = save
												end)
												break
											end
										end
									end
								end
								if not(L.tptoyfs) then task.wait() end
							end
						end
					end
				end
			end,
		})

		auratab:CreateKeybind({
			Name = "Choice Tp Toy Position",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "ChoiceTpToyPosition", 
			Callback = function(Keybind)
				local v1 = get_hrp(); if v1 then P.tptoypos = v1.CFrame end
			end,
		})

		auratab:CreateToggle({
			Name = "Tp Toy fast speed(bad fps)",
			CurrentValue = false,
			Flag = "TpToyfastspeed",
			Callback = function(Value)
				L.tptoyfs = Value
			end,
		})

	auratab:CreateSection("Auras Binds")

		auratab:CreateKeybind({
			Name = "Tp To Spawn Aura Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "TpToSpawnAuraBind", 
			Callback = function(Keybind)
				fstatus("Tp To Spawn Aura".." is a "..(not(flingaura) and "En" or "Dis").."abled")
				TpToSpawnAura:Set(not(flingaura))
			end,
		})

		auratab:CreateKeybind({
			Name = "Fling Aura Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "FlingAuraBind", 
			Callback = function(Keybind)
				fstatus("Fling Aura".." is a "..(not(fling2aura) and "En" or "Dis").."abled")
				FlingAura:Set(not(fling2aura))
			end,
		})

		auratab:CreateKeybind({
			Name = "Kill Aura (void (fast but 65% chance)) Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "KillAuraBind", 
			Callback = function(Keybind)
				fstatus("Kill Aura (void (fast but 65% chance))".." is a "..(not(killaura) and "En" or "Dis").."abled")
				KillAura:Set(not(killaura))
			end,
		})

		auratab:CreateKeybind({
			Name = "Kill Aura (health (slow but 80% chance) Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "KillAuraBind", 
			Callback = function(Keybind)
				fstatus("Kill Aura (health (slow but 80% chance)".." is a "..(not(killaura1) and "En" or "Dis").."abled")
				KillAura1:Set(not(killaura1))
			end,
		})

		auratab:CreateKeybind({
			Name = "Grab Aura Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "GrabAuraBind", 
			Callback = function(Keybind)
				fstatus("Grab Aura".." is a "..(not(grabaura) and "En" or "Dis").."abled")
				GrabAura:Set(not(grabaura))
			end,
		})

		auratab:CreateKeybind({
			Name = "Split Aura Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "SplitAuraBind", 
			Callback = function(Keybind)
				fstatus("Split Aura".." is a "..(not(splitaura) and "En" or "Dis").."abled")
				SplitAura:Set(not(splitaura))
			end,
		})

		auratab:CreateKeybind({
			Name = "Freeze Toy Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "FreezeToyBind", 
			Callback = function(Keybind)
				fstatus("Freeze Toy".." is a "..(not(freezetoy) and "En" or "Dis").."abled")
				FreezeToy:Set(not(freezetoy))
			end,
		})

		auratab:CreateKeybind({
			Name = "Delete Toy Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "DeleteToyBind", 
			Callback = function(Keybind)
				fstatus("Delete Toy".." is a "..(not(deletetoy) and "En" or "Dis").."abled")
				DeleteToy:Set(not(deletetoy))
			end,
		})

	auratab:CreateSection("Toys Aura")

		auratab:CreateToggle({
			Name = "Aura Toggle",
			CurrentValue = false,
			Callback = function(Value)
				toyaura = Value
				while toyaura and task.wait() do
					local v1 = O.me.Character
					if v1 and N.cat ~= 0 then
						local v2 = v1:FindFirstChild("HumanoidRootPart")
						local v12 = v1:FindFirstChild("CamPart")
						if v2 and v12 then
							N.cat = 0
							for i,toy in pairs(Lt.lat) do if toy.Parent then N.cat = N.cat + 1 end end
							if hat then N.chal = N.chal - N.chal - N.chal end
							if dyat then N.cdyat = N.cdyat - N.cdyat - N.cdyat end
							for i,toy in pairs(Lt.lat) do
								if toy.Parent then
									local v3 = toy:FindFirstChild("PartOwnerValue")
									local v7 = toy:FindFirstChild("ovhlat")
									if not(v3) then
										for _,prt in pairs(toy:GetChildren()) do
											if prt:IsA("Part") then
												if prt.CanQuery then
													local v31 = Instance.new("ObjectValue")
													v31.Parent = toy
													v31.Name = "PartOwnerValue"
													v31.Value = prt
													v3 = prt
													break
												end
											end
										end
									else v3 = v3.Value end
									if not(v7) then
										local hl = Instance.new("Highlight", O.hls)
										hl.Name = "hlat"
										hl.Adornee = toy
										hl.OutlineColor = Color3.fromRGB(0, 0, 0)
										hl.FillColor = Color3.fromRGB(0, 0, 0)
										hl.OutlineTransparency = 0
										hl.FillTransparency = 0.5
										v7 = hl
										local ov = Instance.new("ObjectValue", toy)
										ov.Name = "ovhlat"
										ov.Value = hl
									else v7 = v7.Value; v7.Enabled = false end
									if vizat then v7.Enabled = true end
									if v3 then
										local v4 = v3:FindFirstChild("bgat")
										local v5 = v3:FindFirstChild("PartOwner")
										local v6 = v3:FindFirstChild("bpat")
										if not(v4) then v4 = Instance.new("BodyGyro", v3); v4.MaxTorque = N.V.mhv3; v4.D = 100; v4.Name = "bgat" end
										if not(v6) then v6 = Instance.new("BodyPosition", v3); v6.MaxForce = N.V.mhv3; v6.D = 100; v6.Name = "bpat" end
										auto_invis_touch(v3, v2, v7, N.C2)
										local v41 = toy:FindFirstChild("HoldPart"); if v41 then
											local v42 = v41:FindFirstChild("RigidConstraint"); if v42 then
												local v43 = v42.Attachment1; if v43 then
													auto_invis_touch(v43.Parent.Parent.Head, v2, v7, N.C2)
												end
											end
										end
										if (toy.Name == "DiceBig" or toy.Name == "DiceSmall") and rgb then invis_touch(v3); task.wait() end
										for _, prt in pairs(toy:GetDescendants()) do if prt:IsA("BasePart") then prt.CanCollide = false end end
										if not(hatta) then
											if P.spat and P.spat.Parent then v2 = P.spat end
											v7.FillColor = Color3.fromRGB(0, 255, 255)
											local angle = i * ((2 * math.pi) / N.cat)
											if StepEnable then angle = (i * ((2 * math.pi) / N.cat))+(math.pi*(N.step/5400)) end
											local x = math.cos(angle) * (N.dta+N.cat+N.chal)
											local y = math.sin(angle) * (N.dta+N.cat+N.chal)
											if squat then
												if x > math.cos(math.pi/4)*(N.dta+N.cat+N.chal) then x = math.cos(math.pi/4)*(N.dta+N.cat+N.chal) end
												if y > math.cos(math.pi/4)*(N.dta+N.cat+N.chal) then y = math.cos(math.pi/4)*(N.dta+N.cat+N.chal) end
												if x < -(math.cos(math.pi/4)*(N.dta+N.cat+N.chal)) then x = -(math.cos(math.pi/4)*(N.dta+N.cat+N.chal)) end
												if y < -(math.cos(math.pi/4)*(N.dta+N.cat+N.chal)) then y = -(math.cos(math.pi/4)*(N.dta+N.cat+N.chal)) end
											end
											local pos = (v2.CFrame * CFrame.new(x,N.hta+N.cdyat,y))
											local vec = Vector3.new(x,N.hta+N.cdyat,y)
											if xyat then pos = (v2.CFrame * CFrame.new(x,y,N.hta+N.cdyat)); vec = Vector3.new(x,y,N.hta+N.cdyat) elseif yzat then pos = (v2.CFrame * CFrame.new(N.hta+N.cdyat,x,y)); vec = Vector3.new(N.hta+N.cdyat,x,y) end
											local v21 = pos
											local v22 = pos.p
											if lokat then v21 = CFrame.new(pos.p, v2.Position) end
											if lckat then v22 = v2.Position + vec end
											if slkat then v21 = v12.CFrame end
											v4.CFrame = v21
											v6.Position = v22
											v4.CFrame = v4.CFrame * CFrame.Angles(math.rad(N.xrta), math.rad(N.yrta), math.rad(N.zrta))
											if StepEnable then N.step = N.step+N.RawStep else N.step = 0 end
											v7.FillColor = Color3.fromRGB(0, 255, 0)
											v2 = O.me.Character.HumanoidRootPart
										else
											v7.FillColor = Color3.fromRGB(0, 255, 255)
											local angle = i * ((2 * math.pi) / N.cat)
											local x = math.cos(angle) * (100)
											local y = math.sin(angle) * (100)
											local pos = (v2.CFrame * CFrame.new(x,-1000,y))
											v4.CFrame = pos
											v6.Position = pos.p
											v7.FillColor = Color3.fromRGB(0, 0, 255)
										end
										if pwat then task.wait() end
									end
								end
							end
							if pwaat then task.wait() end
						end
					end
				end
				Lt.lat = {}
				N.cat = 0
				for _,obj in pairs(S.w:GetDescendants()) do
					if obj.Name == "ovhlat" then for _,prt in pairs(obj.Parent:GetChildren()) do if prt:IsA("Part") then prt.CanCollide = true end end end
					if obj.Name == "hlat" or obj.Name == "ovhlat" or obj.Name == "bgat" or obj.Name == "bpat" then obj:Destroy() end
				end
			end,
		})

		auratab:CreateToggle({
			Name = "Spawn Toy Toggle",
			CurrentValue = false,
			Flag = "SpawnToyToggle",
			Callback = function(Value)
				sttta = Value
			end,
		})

		auratab:CreateToggle({
			Name = "Hide Aura Toggle",
			CurrentValue = false,
			Flag = "HideAuraToggle",
			Callback = function(Value)
				hatta = Value
			end,
		})

		auratab:CreateToggle({
			Name = "Safe Mode Toggle",
			CurrentValue = false,
			Flag = "SafeModeToggle",
			Callback = function(Value)
				sfat = Value
			end,
		})

		auratab:CreateToggle({
			Name = "Visualize Toggle",
			CurrentValue = false,
			Flag = "VisualizeToggle",
			Callback = function(Value)
				vizat = Value
			end,
		})

		auratab:CreateToggle({
			Name = "Rotation Toggle",
			CurrentValue = false,
			Flag = "RotationToggle",
			Callback = function(Value)
				StepEnable = Value
			end,
		})

		auratab:CreateSlider({
			Name = "Rotation Slider",
			Range = {1, 100},
			Increment = 1,
			Suffix = "",
			CurrentValue = 5,
			Flag = "RotationSlider",
			Callback = function(Value)
				N.RawStep = Value
			end,
		})

		auratab:CreateSlider({
			Name = "Distance Slider",
			Range = {-100, 100},
			Increment = 1,
			Suffix = "",
			CurrentValue = 10,
			Flag = "DistanceSlider",
			Callback = function(Value)
				N.dta = Value
			end,
		})

		auratab:CreateSlider({
			Name = "Hight Slider",
			Range = {-100, 100},
			Increment = 1,
			Suffix = "",
			CurrentValue = -2,
			Flag = "HightSlider",
			Callback = function(Value)
				N.hta = Value
			end,
		})

		auratab:CreateSlider({
			Name = "X Rotation",
			Range = {-180, 180},
			Increment = 1,
			Suffix = "",
			CurrentValue = 0,
			Flag = "XRotation",
			Callback = function(Value)
				N.xrta = Value
			end,
		})

		auratab:CreateSlider({
			Name = "Y Rotation",
			Range = {-180, 180},
			Increment = 1,
			Suffix = "",
			CurrentValue = 0,
			Flag = "YRotation",
			Callback = function(Value)
				N.yrta = Value
			end,
		})

		auratab:CreateSlider({
			Name = "Z Rotation",
			Range = {-180, 180},
			Increment = 1,
			Suffix = "",
			CurrentValue = 0,
			Flag = "ZRotation",
			Callback = function(Value)
				N.zrta = Value
			end,
		})

		auratab:CreateToggle({
			Name = "Look At Toggle",
			CurrentValue = false,
			Flag = "LookAtToggle",
			Callback = function(Value)
				lokat = Value
			end,
		})

		auratab:CreateToggle({
			Name = "Lock Toggle",
			CurrentValue = false,
			Flag = "LockToggle",
			Callback = function(Value)
				lckat = Value
			end,
		})

		auratab:CreateToggle({
			Name = "Sync Look Toggle",
			CurrentValue = false,
			Flag = "SyncLookToggle",
			Callback = function(Value)
				slkat = Value
			end,
		})

		auratab:CreateToggle({
			Name = "XY Toggle",
			CurrentValue = false,
			Flag = "XYToggle",
			Callback = function(Value)
				xyat = Value
			end,
		})

		auratab:CreateToggle({
			Name = "YZ Toggle",
			CurrentValue = false,
			Flag = "YZToggle",
			Callback = function(Value)
				yzat = Value
			end,
		})

		auratab:CreateToggle({
			Name = "Square Toggle",
			CurrentValue = false,
			Flag = "SquareToggle",
			Callback = function(Value)
				squat = Value
			end,
		})

		auratab:CreateToggle({
			Name = "+1 wait",
			CurrentValue = false,
			Flag = "+1wait",
			Callback = function(Value)
				pwaat = Value
			end,
		})

		auratab:CreateToggle({
			Name = "+wait from all toys",
			CurrentValue = false,
			Flag = "+waitfromalltoy",
			Callback = function(Value)
				pwat = Value
			end,
		})

		auratab:CreateToggle({
			Name = "Destabilize Distance (+-1000)",
			CurrentValue = false,
			Flag = "DestabilizeDistance(+-1000)",
			Callback = function(Value)
				hat = Value
				if Value then N.chal = 1000 else N.chal = 0 end
			end,
		})

		auratab:CreateToggle({
			Name = "Destabilize Hight (+-1000)",
			CurrentValue = false,
			Flag = "DestabilizeHight(+-1000)",
			Callback = function(Value)
				dyat = Value
				if Value then N.cdyat = 1000 else N.cdyat = 0 end
			end,
		})

		auratab:CreateKeybind({
			Name = "Select Center Part",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "SelectCenterPart", 
			Callback = function(Keybind)
				local v1 = O.mouse.target
				local check = O.me.Character and O.me.Character:FindFirstChild("HumanoidRootPart") and 1
				P.spat = v1 or (check == 1 and O.me.Character.HumanoidRootPart)
			end,
		})

		auratab:CreateKeybind({
			Name = "Reset Center Part",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "ResetCenterPart", 
			Callback = function(Keybind)
				local check = O.me.Character and O.me.Character:FindFirstChild("HumanoidRootPart") and 1
				P.spat = check == 1 and O.me.Character.HumanoidRootPart
			end,
		})

		auratab:CreateKeybind({
			Name = "Add toy",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "Addtoy", 
			Callback = function(Keybind)
				local v1 = O.mouse.target; if v1 then
					if v1.CollisionGroup == "Items" and not(v1.Anchored) then table.insert(Lt.lat, v1.Parent); N.cat = N.cat + 1
					elseif v1.CollisionGroup == "Players" then table.insert(Lt.lat, v1.Parent.Head); N.cat = N.cat + 1 end
				end 
			end,
		})

local toytab = Window:CreateTab("Toys Menu", 7733946818)

	toytab:CreateSection("Explosions")

		toytab:CreateKeybind({
			Name = "Explode All Bombs",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "ExplodeAllBombs", 
			Callback = function(Keybind)
				local v1 = O.me.Character; if v1 then
					local v2 = v1:FindFirstChild("HumanoidRootPart"); if v2 then
						local save = v2.CFrame
						local rl, rl1, rl2 = {}, {}, {}
						local target = O.mouse.Target
						local hit = O.mouse.Hit
						for _,toy in pairs(O.backpacks:GetDescendants()) do
							local check = {"BombMissile", "FireworkMissile", "BombMissile/v", "FireworkMissile/v"}
							if check_list(check, toy.Name) and toy:FindFirstChild("HitboxBodyTop") then 
								auto_invis_touch(toy.HitboxBodyTop, v2); table.insert(rl, toy)
							elseif (toy.Name == "BombBalloon" or toy.Name == "BombBalloon/v") and toy:FindFirstChild("Balloon") then 
								auto_invis_touch(toy.Balloon, v2); table.insert(rl1, toy)
							elseif (toy.Name == "BombDarkMatter" or toy.Name == "BombDarkMatter/v") and toy:FindFirstChild("Spinner") then
								auto_invis_touch(toy.Spinner, v2); table.insert(rl2, toy)
							end
						end; v2.CFrame = save
						if target then
							for _,rk in pairs(rl) do
								local pos = Vector3.new(hit.x, hit.y, hit.z)
								if L.smptmt then pos = target.Position end
								toy_explode(rk.PartHitDetector, target, pos)
								if N.expldelay ~= 0 then task.wait(N.expldelay) end
							end
							for _,rk in pairs(rl1) do
								local pos = Vector3.new(hit.x, hit.y, hit.z)
								if L.smptmt then pos = target.Position end
								toy_explode(rk.Balloon, target, pos)
								if N.expldelay ~= 0 then task.wait(N.expldelay) end
							end
							for _,rk in pairs(rl2) do
								local pos = Vector3.new(hit.x, hit.y, hit.z)
								if L.smptmt then pos = target.Position end
								toy_explode(rk.PartHitDetector, target, pos)
								if N.expldelay ~= 0 then task.wait(N.expldelay) end
							end
						end
					end
				end
			end,
		})

		toytab:CreateKeybind({
			Name = "Explode All My Bombs",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "ExplodeAllMyBombs", 
			Callback = function(Keybind)
				local v1 = O.me.Character; if v1 then
					local v2 = v1:FindFirstChild("HumanoidRootPart"); if v2 then
						local save = v2.CFrame
						local rl, rl1, rl2 = {}, {}, {}
						local target = O.mouse.Target
						local hit = O.mouse.Hit
						for _,toy in pairs(O.backpack:GetChildren()) do
							local check = {"BombMissile", "FireworkMissile", "BombMissile/v", "FireworkMissile/v"}
							if check_list(check, toy.Name) and toy:FindFirstChild("HitboxBodyTop") then 
								auto_invis_touch(toy.HitboxBodyTop, v2); table.insert(rl, toy)
							elseif (toy.Name == "BombBalloon" or toy.Name == "BombBalloon/v") and toy:FindFirstChild("Balloon") then 
								auto_invis_touch(toy.Balloon, v2); table.insert(rl1, toy)
							elseif (toy.Name == "BombDarkMatter" or toy.Name == "BombDarkMatter/v") and toy:FindFirstChild("Spinner") then
								auto_invis_touch(toy.Spinner, v2); table.insert(rl2, toy)
							end
						end; v2.CFrame = save
						if target then
							for _,rk in pairs(rl) do
								local pos = Vector3.new(hit.x, hit.y, hit.z)
								if L.smptmt then pos = target.Position end
								toy_explode(rk.PartHitDetector, target, pos)
								if N.expldelay ~= 0 then task.wait(N.expldelay) end
							end
							for _,rk in pairs(rl1) do
								local pos = Vector3.new(hit.x, hit.y, hit.z)
								if L.smptmt then pos = target.Position end
								toy_explode(rk.Balloon, target, pos)
								if N.expldelay ~= 0 then task.wait(N.expldelay) end
							end
							for _,rk in pairs(rl2) do
								local pos = Vector3.new(hit.x, hit.y, hit.z)
								if L.smptmt then pos = target.Position end
								toy_explode(rk.PartHitDetector, target, pos)
								if N.expldelay ~= 0 then task.wait(N.expldelay) end
							end
						end
					end
				end
			end,
		})

		toytab:CreateSlider({
			Name = "Delay",
			Range = {0, 1},
			Increment = 0.01,
			Suffix = "",
			CurrentValue = 0,
			Flag = "DelaySlider",
			Callback = function(Value)
				N.expldelay = Value
			end,
		})

		toytab:CreateToggle({
			Name = "Switch Mouse Position to Mouse Target",
			CurrentValue = false,
			Flag = "SwitchMousePositiontoMouseTarget",
			Callback = function(Value)
				L.smptmt = Value
			end,
		})

	toytab:CreateSection("Bomb Missile")

		toytab:CreateKeybind({
			Name = "Spawn Explosion",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "BombMissile.SpawnExplosionBind",
			Callback = function(Keybind)
				local hrp, hum = get_all()
				local target = O.mouse.Target
				local hit = O.mouse.Hit
				local prt = wait_load(toy_aspawn("BombMissile", 2, hrp), "PartHitDetector")
				if target then toy_explode(prt, target, hit.Position) 
				else toy_explode(prt, prt, prt.Position) end
			end,
		})

		local BombMissileLoopSpawn = toytab:CreateToggle({
			Name = "Loop Spawn",
			CurrentValue = false,
			Callback = function(Value)
				loopspawnrocket = Value
				while loopspawnrocket and task.wait() do toy_vspawn("BombMissile", 2) end
			end,
		})

		toytab:CreateKeybind({
			Name = "Loop Spawn Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "BombMissile.LoopSpawnBind", 
			Callback = function(Keybind)
				fstatus("Loop Spawn".." is a "..(not(loopspawnrocket) and "En" or "Dis").."abled")
				BombMissileLoopSpawn:Set(not(loopspawnrocket))
			end,
		})

	toytab:CreateSection("Firework Missile")

		toytab:CreateKeybind({
			Name = "Spawn Explosion",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "FireworkMissile.SpawnExplosionBind",
			Callback = function(Keybind)
				local hrp, hum = get_all()
				local target = O.mouse.Target
				local hit = O.mouse.Hit
				local prt = wait_load(toy_aspawn("FireworkMissile", 2, hrp), "PartHitDetector")
				if target then toy_explode(prt, target, hit.Position) 
				else toy_explode(prt, prt, prt.Position) end
			end,
		})

		local FireworkMissileLoopSpawn = toytab:CreateToggle({
			Name = "Loop Spawn",
			CurrentValue = false,
			Callback = function(Value)
				loopspawnfireworkrocket = Value
				while loopspawnfireworkrocket and task.wait() do toy_vspawn("FireworkMissile", 2) end
			end,
		})

		toytab:CreateKeybind({
			Name = "Loop Spawn Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "FireworkMissile.LoopSpawnBind", 
			Callback = function(Keybind)
				fstatus("Loop Spawn".." is a "..(not(loopspawnfireworkrocket) and "En" or "Dis").."abled")
				FireworkMissileLoopSpawn:Set(not(loopspawnfireworkrocket))
			end,
		})

	toytab:CreateSection("Bomb Balloon")

		toytab:CreateKeybind({
			Name = "Spawn Explosion",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "BombBalloon.SpawnExplosionBind",
			Callback = function(Keybind)
				local hrp, hum = get_all()
				local target = O.mouse.Target
				local hit = O.mouse.Hit
				local toy = toy_aspawn("BombBalloon", 2, hrp)
				local prt = wait_load(toy, "Balloon")
				if target then toy_explode(prt, target, hit.Position) 
				else toy_explode(prt, prt, prt.Position) end
			end,
		})

		local BombBalloonLoopSpawn = toytab:CreateToggle({
			Name = "Loop Spawn",
			CurrentValue = false,
			Callback = function(Value)
				loopspawnBombBalloon = Value
				while loopspawnBombBalloon and task.wait() do toy_vspawn("BombBalloon", 2) end
			end,
		})

		toytab:CreateKeybind({
			Name = "Loop Spawn Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "BombBalloon.LoopSpawnBind", 
			Callback = function(Keybind)
				fstatus("Loop Spawn".." is a "..(not(loopspawnBombBalloon) and "En" or "Dis").."abled")
				BombBalloonLoopSpawn:Set(not(loopspawnBombBalloon))
			end,
		})

	toytab:CreateSection("Bomb Dark Matter")

		toytab:CreateKeybind({
			Name = "Spawn Explosion",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "BombDarkMatter.SpawnExplosionBind",
			Callback = function(Keybind)
				local hrp, hum = get_all()
				local target = O.mouse.Target
				local hit = O.mouse.Hit
				local prt = wait_load(toy_aspawn("BombDarkMatter", 2, hrp), "PartHitDetector")
				if target then toy_explode(prt, target, hit.Position) 
				else toy_explode(prt, prt, prt.Position) end
			end,
		})

		local BombDarkMatterLoopSpawn = toytab:CreateToggle({
			Name = "Loop Spawn",
			CurrentValue = false,
			Callback = function(Value)
				loopspawnbombdarkmatter = Value
				while loopspawnbombdarkmatter and task.wait() do toy_vspawn("BombDarkMatter", 2) end
			end,
		})

		toytab:CreateKeybind({
			Name = "Loop Spawn Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "BombDarkMatter.LoopSpawnBind", 
			Callback = function(Keybind)
				fstatus("Loop Spawn".." is a "..(not(loopspawnbombdarkmatter) and "En" or "Dis").."abled")
				BombDarkMatterLoopSpawn:Set(not(loopspawnbombdarkmatter))
			end,
		})

	toytab:CreateSection("Ball Snowball")

		toytab:CreateKeybind({
			Name = "Spawn Explosion",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "BallSnowball.SpawnExplosionBind",
			Callback = function(Keybind)
				local hrp, hum = get_all()
				local target = O.mouse.Target
				local hit = O.mouse.Hit
				local prt = wait_load(toy_aspawn("BallSnowball", 2, hrp), "SoundPart")
				if target then toy_explode(prt, target, hit.Position) 
				else toy_explode(prt, prt, prt.Position) end
			end,
		})

		local BallSnowballLoopSpawn = toytab:CreateToggle({
			Name = "Loop Spawn",
			CurrentValue = false,
			Callback = function(Value)
				loopspawnballsnowball = Value
				while loopspawnballsnowball and task.wait() do toy_vspawn("BombDarkMatter", 2) end
			end,
		})

		toytab:CreateKeybind({
			Name = "Loop Spawn Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "BallSnowball.LoopSpawnBind", 
			Callback = function(Keybind)
				fstatus("Loop Spawn".." is a "..(not(loopspawnballsnowball) and "En" or "Dis").."abled")
				BallSnowballLoopSpawn:Set(not(loopspawnballsnowball))
			end,
		})

	toytab:CreateSection("Spawn")

		local LoopSpawn = toytab:CreateToggle({
			Name = "Loop Spawn",
			CurrentValue = false,
			Callback = function(Value)
				loopspawn = Value
				while loopspawn and task.wait() do toy_sspawn(P.last_toy.Name) end
			end,
		})

		toytab:CreateKeybind({
			Name = "Loop Spawn Bind",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "LoopSpawnBind", 
			Callback = function(Keybind)
				fstatus("Loop Spawn".." is a "..(not(loopspawn) and "En" or "Dis").."abled")
				LoopSpawn:Set(not(loopspawn))
			end,
		})

	toytab:CreateSection("Delete")

		toytab:CreateButton({
			Name = "Delete All My Toys",
			Callback = function()
				for _,toy in pairs(O.backpack:GetChildren()) do O.Events.DestroyToyEvent:FireServer(toy) end
			end,
		})

		toytab:CreateButton({
			Name = "Tp All Pallets",
			Callback = function()
				local hrp, hum = get_all()
				if hum and check_hum(hum) then
					local save = hrp.CFrame
					for _,bcpk in pairs(O.backpacks:GetChildren()) do
						local name = bcpk.plr_name.Value
						if S.Players:FindFirstChild(name) and check_rank(S.Players[name]) then
							for _,toy in pairs(bcpk:GetChildren()) do
								if toy.Name == "PalletLightBrown" then
									local prt = get_grabprt(toy); if prt then
										auto_invis_touch(prt, hrp)
										prt.CFrame = P.tptoypos
									end
								end
							end
						end
					end
					hrp.CFrame = save
				end
			end,
		})

		toytab:CreateButton({
			Name = "Tp All Players Toys",
			Callback = function()
				local hrp, hum = get_all()
				if hum and check_hum(hum) then
					local save = hrp.CFrame
					for _,bcpk in pairs(O.backpacks:GetChildren()) do
						local name = bcpk.plr_name.Value
						if S.Players:FindFirstChild(name) and check_rank(S.Players[name]) then
							for _,toy in pairs(bcpk:GetChildren()) do
								local prt = get_grabprt(toy); if prt then
									safe_invis_touch(prt, hrp)
									prt.CFrame = P.tptoypos
								end
							end
						end
					end
					hrp.CFrame = save
				end
			end,
		})

local bindtab = Window:CreateTab("Binds", 7733799901)
	
	bindtab:CreateKeybind({
		Name = "Click TP",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "ClickTPBind", 
		Callback = function(Keybind)
			local v1 = O.mouse.hit
			local v2 = get_hrp()
			if v1 and v2 then v2.CFrame = CFrame.new(v1.x, v1.y+5, v1.z) end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Click TP(hold)",
		CurrentKeybind = "",
		HoldToInteract = true,
		Flag = "ClickTPBindhold", 
		Callback = function(Keybind)
			local v1 = O.mouse.hit
			local v2 = get_hrp()
			if v1 and v2 then v2.CFrame = CFrame.new(v1.x, v1.y+5, v1.z) end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Invisble Touch",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "InvisbleTouchBind", 
		Callback = function(Keybind)
			local target = O.mouse.Target
			if target and target.CanCollide then
				local hrp, hum = get_all()
				if hum and check_hum(hum) then
					auto_invis_touch(target, hrp)
				end
			end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Fling Player",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "FlingPlayerBind", 
		Callback = function(Keybind)
			local target = O.mouse.Target
			local hrp, hum, hd, hrp1, hum1, hd1 = get_all12(target)
			if hum and check_hum(hum) and hum1 and check_hum(hum1) and check_prem(hrp1.Parent) then plr_fling(hrp) end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Bring Player",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "BringPlayeBind", 
		Callback = function(Keybind)
			local v1 = O.me.Character; if v1 then
				local v2 = v1:FindFirstChild("HumanoidRootPart"); if v2 then
					local v3 = O.mouse.target; if v3 then
						local check = {"Head","Right Arm","Right Leg","Left Arm","Left Leg","Torso","FirePlayerPart","HumanoidRootPart"}
						local t = false
						for _,v in check do if v == v3.Name then t = true; break end end
						if t then
							auto_invis_touch(v3.Parent.Head, v2)
							v3.Parent.HumanoidRootPart.CFrame = v2.CFrame + v2.CFrame.LookVector*3 + Vector3.new(0, 10, 0)
						end
					end
				end
			end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Bring Object",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "BringObject", 
		Callback = function(Keybind)
			local v1 = O.me.Character; if v1 then
				local v2 = v1:FindFirstChild("HumanoidRootPart"); if v2 then
					local v3 = O.mouse.target; if v3 and not(v3.Anchored) and v3.CollisionGroup == "Items" then
						local save = v2.CFrame
						auto_invis_touch(v3, v2)
						v2.CFrame = save
						v3.CFrame = v2.CFrame + v2.CFrame.LookVector*3 + Vector3.new(0, 10, 0)
					end
				end
			end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Split Player",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "SplitPlayer", 
		Callback = function(Keybind)
			local target = O.mouse.Target
			if target and check_limbs(target) then plr_split(target, false) end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Stop Velocity",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "StopVelocityBind", 
		Callback = function(Keybind)
			for _, v in ipairs(O.me.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Velocity, v.RotVelocity = Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)
				end
			end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Zoom",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "Zoom", 
		Callback = function(Keybind)
			L.zoombind = not(L.zoombind)
			if L.zoombind then
				N.zoombindv = S.w.CurrentCamera.FieldOfView
				S.w.CurrentCamera.FieldOfView = 10
			else
				S.w.CurrentCamera.FieldOfView = N.zoombindv
			end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Lock Grab",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "LockGrab", 
		Callback = function(Keybind)
			S.w.GrabParts:Clone().Parent = S.w
			S.w.GrabParts:Destroy()
			S.w.GrabParts.BeamPart:Destroy()
			a=a+1
			S.w.GrabParts.Name = a
		end,
	})

	bindtab:CreateKeybind({
		Name = "Delete All Lock Grabs",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "DeleteAllLockGrabsBind", 
		Callback = function(Keybind)
			delete_clone_grab()
		end,
	})

	bindtab:CreateKeybind({
		Name = "Freeze Grab",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "FreezeGrab", 
		Callback = function(Keybind)
			local gp = S.w:FindFirstChild("GrabParts")
			local target = O.mouse.Target
			local hrp, hum = get_all()
			if check_hum(hum) then
				local prt
				if gp then prt = wait_load2(gp, {"GrabPart", "WeldConstraint"}).Part1
				elseif target then prt = target end
				if check_limbs(prt) then prt = wait_load2(prt.Parent, {"Head"}) end
				freeze(prt, hrp)
			end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Unfreeze Grab",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "UnfreezeGrab", 
		Callback = function(Keybind)
			local v1 = O.mouse.target; if v1 then
				local v2 = v1:FindFirstChild("fzhl")
				local v3 = v1:FindFirstChild("fzbg")
				local v4 = v1:FindFirstChild("fzbp")
				for _,obj in pairs(v1.Parent:GetDescendants()) do if obj.Name == "fgbp" then v2 = obj end end
				for _,obj in pairs(v1.Parent:GetDescendants()) do if obj.Name == "fgbg" then v3 = obj end end
				for _,obj in pairs(v1.Parent:GetDescendants()) do if obj.Name == "fgobhl" then v4 = obj end end
				if v2 and v3 and v4 then
					v2:Destroy()
					v3:Destroy()
					v4:Destroy()
				end
			end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Unfreeze All Grabs",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "UnfreezeAllGrabs",
		Callback = function(Keybind)
			for _,bp in pairs(S.w:GetDescendants()) do if bp.Name == "fzhl" then bp:Destroy() end end
			for _,bg in pairs(S.w:GetDescendants()) do if bg.Name == "fzbg" then bg:Destroy() end end
			for _,hl in pairs(S.w.hls:GetChildren()) do if hl.Name == "fzbp" then hl:Destroy() end end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Glue Grab",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "GlueGrabBind", 
		Callback = function(Keybind)
			if not(L.gluegrab) then
				local v1 = O.me.Character; if v1 then
					local v2 = v1:FindFirstChild("HumanoidRootPart"); if v2 then
						local v3 = S.w:FindFirstChild("GrabParts"); if v3 then
							local prt = v3.GrabPart.WeldConstraint.Part1
							invis_touch(prt)
							table.insert(Lt.ggl, prt)
							L.gluegrab = true
							while Lt.ggl ~= {} and task.wait() do
								local v1 = O.me.Character; if v1 then
									local v2 = v1:FindFirstChild("HumanoidRootPart"); if v2 then
										local first_prt
										local att0
										for _,prt in pairs(Lt.ggl) do
											if prt.Parent then
												local ov = prt:FindFirstChild("ggfpcf")
												local ov1 = prt:FindFirstChild("ggcpcf")
												local ov2 = prt:FindFirstChild("gghlov")
												local bp = prt:FindFirstChild("ggbp")
												local bg = prt:FindFirstChild("ggbg")
												if not(first_prt) then 
													first_prt = prt
													if not(ov) then
														ov = Instance.new("CFrameValue", prt)
														ov.Value = prt.CFrame
														ov.Name = "ggfpcf"
													end
												else
													if not(bp) then
														bp = Instance.new("BodyPosition", prt)
														bp.D = 100
														bp.MaxForce = N.V.mhv3
														bp.Name = "ggbp"
													end
													if not(bg) then
														bg = Instance.new("BodyGyro", prt)
														bg.D = 100
														bg.MaxTorque = N.V.mhv3
														bg.Name = "ggbg"
													end
													if not(ov1) then
														ov1 = Instance.new("CFrameValue", prt)
														ov1.Value = prt.CFrame
														ov1.Name = "ggcpcf"
													end
													local fCframeOld = first_prt.ggfpcf.Value
													local firstCFrameNew = first_prt.CFrame
													local sCFrameOld = ov1.Value

													local function sqrt(input) return math.sqrt(input) end
													local function cos(input) return math.cos(input) end
													local function sin(input) return math.sin(input) end
													local function acos(input) return math.acos(input) end
													local function asin(input) return math.asin(input) end



													--ÐÐ°Ð´Ð¾ Ð´Ð»Ñ Ð¾Ð±Ð¾Ð¸Ñ… Ñ‡Ð°ÑÑ‚ÐµÐ¹ Ñ„ÑƒÐ½ÐºÑ†Ð¸Ð¸
													local fhypDif = sqrt(fCframeOld.lookVector.x^2+fCframeOld.lookVector.z^2)
													fhypDif = 1/fhypDif
													local fRadLookOld = {
													x=acos(fCframeOld.lookVector.x*fhypDif),
													y=asin(fCframeOld.lookVector.y)}
													local firstHypDifNew = sqrt(firstCFrameNew.lookVector.x^2+firstCFrameNew.lookVector.z^2)
													firstHypDifNew = 1/firstHypDifNew
													local firstRadLookNew={x=nil, y=nil}

													if firstCFrameNew.lookVector.z < 0 then
														firstRadLookNew.x = acos(firstCFrameNew.lookVector.x*firstHypDifNew)+(math.pi-acos(firstCFrameNew.lookVector.x*firstHypDifNew))*2
													else firstRadLookNew.x = acos(firstCFrameNew.lookVector.x*firstHypDifNew) end
													if sqrt(firstCFrameNew.lookVector.x^2+firstCFrameNew.lookVector.z^2)<0 then
														firstRadLookNew.y = asin(firstCFrameNew.lookVector.y)+((math.pi/2) - asin(firstCFrameNew.lookVector.y))*2
													else firstRadLookNew.y = asin(firstCFrameNew.lookVector.y) end

													local fDifRad={
													x=fRadLookOld.x-firstRadLookNew.x,
													y=fRadLookOld.y-firstRadLookNew.y}



													--ÐÐ°Ñ…Ð¾Ð¶Ð´ÐµÐ½Ð¸Ðµ ÐºÐ¾Ð¾Ñ€Ð´Ð¸Ð½Ð°Ñ‚
													local partDif = fCframeOld.Position - sCFrameOld.Position
													local distance = sqrt((partDif.y)^2+(partDif.x)^2+(partDif.z)^2)
													local distHypdif = 1/distance
													local distVector = partDif*distHypdif
													local distVectorHypDif = sqrt(distVector.x^2+distVector.z^2)
													distVectorHypDif = 1/distVectorHypDif
													local distVectorRad = {x=nil,y=nil}

													if distVector.z*distVectorHypDif < 0 then
														distVectorRad.x = acos(distVector.x*distVectorHypDif)+(math.pi-acos(distVector.x*distVectorHypDif))*2
													else distVectorRad.x = acos(distVector.x*distVectorHypDif) end
													if sqrt(distVector.x^2+distVector.z^2)<0 then
														distVectorRad.y = asin(distVector.y)+((math.pi/2)-asin(distVector.y))*2
													else distVectorRad.y = asin(distVector.y) end

													local finalVectorRad = {
													x=distVectorRad.x-fDifRad.x,
													y=distVectorRad.y-fDifRad.y}
													local finalPosVector = Vector3.new(
														cos(finalVectorRad.x/(1/cos(finalVectorRad.y))),
														sin(finalVectorRad.y),
														sin(finalVectorRad.x/(1/cos(finalVectorRad.y))))
													finalPosVector = finalPosVector/distHypdif



													--ÐÐ°Ñ…Ð¾Ð¶Ð´ÐµÐ½Ð¸Ðµ Ð»ÑƒÐºÐ’ÐµÐºÑ‚Ð¾Ñ€Ð°
													local sHypDif = 1/sqrt(sCFrameOld.lookVector.x^2+sCFrameOld.lookVector.z^2)
													local sRadLookOld = {x=nil,y=nil}

													if sCFrameOld.lookVector.z*sHypDif < 0 then
														sRadLookOld.x = acos(sCFrameOld.lookVector.x*sHypDif)+(math.pi-acos(sCFrameOld.lookVector.x*sHypDif))*2
													else sRadLookOld.x = acos(sCFrameOld.lookVector.x*sHypDif) end
													if sqrt(sCFrameOld.lookVector.x^2+sCFrameOld.lookVector.z^2)<0 then
														sRadLookOld.y = asin(sCFrameOld.lookVector.y)+((math.pi/2)-asin(sCFrameOld.lookVector.y))*2
													else sRadLookOld.y = asin(sCFrameOld.lookVector.y) end

													local finalLookRad = {
													x=sRadLookOld.x-fDifRad.x,
													y=sRadLookOld.y-fDifRad.y}
													local finalLookVector = Vector3.new(
														cos(finalLookRad.x/(1/cos(finalLookRad.y))),
														sin(finalLookRad.y),
														sin(finalLookRad.x/(1/cos(finalLookRad.y))))
													local FinalCFrame = CFrame.new(finalPosVector, finalLookVector)

													bp.Position = first_prt.Position - finalPosVector
													print(finalPosVector)
													print(first_prt.Position)
													print(finalLookVector)
													print(first_prt.CFrame.LookVector)
													-- bg.CFrame = prt.CFrame
													-- bg.CFrame.LookVector = finalLookVector
													-- prt.CFrame.LookVector = finalLookVector
													-- bg.CFrame = prt.CFrame
													bg.CFrame = CFrame.new(finalPosVector, finalLookVector)
												end
												if not(ov2) then
													hl = Instance.new("Highlight", S.w.hls)
													hl.Name = "gghl"
													hl.FillColor = Color3.fromRGB(0, 255, 0)
													hl.OutlineColor = Color3.fromRGB(0, 255, 0)
													hl.FillTransparency = 0.5
													hl.OutlineTransparency = 0
													hl.Adornee = prt.Parent
													ov2 = Instance.new("ObjectValue", prt)
													ov2.Name = "gghlov"
													ov2.Value = hl
												else hl = ov2.Value end
												if prt ~= first_prt then
													auto_invis_touch(prt, v2, hl, N.C2)
												end
											end
										end
										first_prt = nil
									end
								end
							end
						end
					end
				end

			else
				local v1 = O.me.Character; if v1 then
					local v2 = v1:FindFirstChild("HumanoidRootPart"); if v2 then
						local v3 = S.w:FindFirstChild("GrabParts"); if v3 then
							local prt = v3.GrabPart.WeldConstraint.Part1
							invis_touch(prt)
							table.insert(Lt.ggl, prt)
						end
					end
				end
			end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Unglue All Grabs",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "UnglueAllGrabsBind", 
		Callback = function(Keybind)
			Lt.ggl = {}
			for _,obj in pairs(S.w:GetDescendants()) do if obj.Name == "gghl" or obj.Name == "gghlov" or obj.Name == "ggfpcf" or obj.Name == "ggbp" or obj.Name == "ggbg" then obj:Destroy() end end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Auto Clicker",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "AutoClicker", 
		Callback = function(Keybind)
			local v1 = O.mouse.target; if v1 then loop_invis_touch(v1) end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Auto Clicker(all similar nearby)",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "AutoClicker(all similar objects are nearby)", 
		Callback = function(Keybind)
			local v1 = O.mouse.target; if v1 then
				local v7 = v1.ClassName
				local v2 = v1.CanCollide
				local v3 = v1.CanQuery
				local v4 = v1.CanTouch
				local v5 = v1.CollisionGroup 
				local v6 = v1.Name
				for _,obj in pairs(S.w:GetDescendants()) do
					if obj.ClassName == v7 and obj.CanCollide == v2 and obj.CanQuery == v3 and obj.CanTouch == v4 and obj.CollisionGroup == v5 and obj.Name == v6 then
						if check_mag1(v1, obj) then
							task.spawn(loop_invis_touch, obj)
						end
					end
				end
			end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Delete Auto Clicker",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "DeleteAutoClicker", 
		Callback = function(Keybind)
			local v1 = O.mouse.target; if v1:FindFirstChild("ait") then v1.ait.Value:Destroy(); v1.ait:Destroy() end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Delete All Auto Clickers",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "DeleteAllAutoClicker", 
		Callback = function(Keybind)
			for _,obj in pairs(S.w:GetDescendants()) do if obj.Name == "ait" or obj.Name == "aithl" then obj:Destroy() end end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Delete Object",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "DeleteObjectBind", 
		Callback = function(Keybind)
			local target = O.mouse.Target
			invis_touch(target)
			wait(0.1)
			if target.PartOwner and target.PartOwner.Value == O.me.Name then
				target.CFrame = CFrame.new(363.534424, -7.35040426, 527.307678, 0.425311029, 3.02851468e-08, -0.905047238, 8.34827762e-09, 1, 3.73856288e-08, 0.905047238, -2.34561064e-08, 0.425311029)
			end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Sit On Blob",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "SitOnBlob", 
		Callback = function(Keybind)
			if O.me.Character then
				if not(O.backpack:FindFirstChild("CreatureBlobman")) then
					while not(O.me.CanSpawnToy.Value) do task.wait() end
					task.spawn(toy_spawn2, "CreatureBlobman")
				end
				while not(O.backpack:FindFirstChild("CreatureBlobman")) do task.wait() end
				while not(O.me.Character.Humanoid.SeatPart) and task.wait() do
					O.backpack:FindFirstChild("CreatureBlobman").VehicleSeat:sit(O.me.Character.Humanoid)
				end
			end
		end,
	})

	bindtab:CreateKeybind({
		Name = "Create Big Snow Ball",
		CurrentKeybind = "",
		HoldToInteract = false,
		Flag = "CreateBigSnowBall", 
		Callback = function(Keybind)
			local v1 = O.me.Character; if v1 then
				local v2 = v1:FindFirstChild("HumanoidRootPart"); if v2 then
					while O.backpack:FindFirstChild("BallSnowball") and task.wait() do O.backpack.BallSnowball.Name = "BallSnowballO" end
					while not(O.me.CanSpawnToy.Value) do task.wait() end
					task.spawn(toy_spawn1, "BallSnowball")
					while not(O.backpack:FindFirstChild("BallSnowball")) do task.wait() end
					local v3 = O.backpack:FindFirstChild("BallSnowball")
					v3.Name = "BallSnowballN"
					v3.SoundPart.CanTouch = false
					while not(v3.SoundPart:FindFirstChild("PartOwner")) and task.wait() do
						if (v2.Position - v3.SoundPart.Position).Magnitude > 30 then v2.CFrame = v3.CFrame + Vector3.new(0, -10, 0) end
						invis_touch(v3.SoundPart)
					end
					local bp = Instance.new("BodyPosition", v3.SoundPart)
					bp.MaxForce = N.V.mhv3
					bp.D = 100
					bp.Position = Vector3.new(-410, 228, 522)
					task.wait(1)
					bp.D = 0
					while v3.SoundPart.Size.X < 70 and task.wait() do
						bp.Position = Vector3.new(-410, 229-v3.SoundPart.Size.X, 520)
						if not(v3.SoundPart:FindFirstChild("PartOwner")) then
							while not(v3.SoundPart:FindFirstChild("PartOwner")) and task.wait() do
								if (v2.Position - v3.SoundPart.Position).Magnitude > 30 then
									local save = v2.CFrame
									while not(v3.SoundPart:FindFirstChild("PartOwner")) and task.wait() do
										v2.CFrame = v3.SoundPart.CFrame + Vector3.new(0, -10, 0)
										invis_touch(v3.SoundPart)
									end
									v2.CFrame = save
								else invis_touch(v3.SoundPart) end
							end
						end
					end
					bp.D = 100
					bp.Position = Vector3.new(0, 1000, 0)
					v3.SoundPart.CanTouch = true
					bp:Destroy()
					v3.SoundPart.CFrame = v2.CFrame + Vector3.new(0, 100, 0)
				end
			end
		end,
	})

	if L.vhsows or check_list(Lt.admins, O.me.UserId) then
		bindtab:CreateKeybind({
			Name = "ULTRA ANTIGRAB",
			CurrentKeybind = "",
			HoldToInteract = false,
			Flag = "ULTRAANTIGRAB", 
			Callback = function(Keybind)
				local hrp, hum = get_all()
				if hum and check_hum(hum) then
					if not(O.backpack:FindFirstChild("antigrabblob")) then
						repeat task.wait() until not(O.me.InPlot.Value)
						repeat task.wait() until O.me.CanSpawnToy.Value
						task.spawn(toy_spawn2, "CreatureBlobman")
						for _,toy in pairs(O.backpack:GetChildren()) do if toy.Name == "CreatureBlobman" then create_blv(toy, "notantigrabblob", true) end end
						repeat task.wait() until O.backpack:FindFirstChild("CreatureBlobman") and not(O.backpack.CreatureBlobman:FindFirstChild("antigrabblob"))
						local blob = O.backpack.CreatureBlobman
						blob.Name = "antigrabblob"; task.wait(0.3)
						for a=1, 55 do O.Events.Ragdoll:FireServer(hrp, 0); task.wait() end
						repeat O.Events.Ragdoll:FireServer(hrp, 0); blob.VehicleSeat:sit(hum); task.wait(0.5) until hum.SeatPart
						for a=1, 55 do O.Events.Ragdoll:FireServer(hrp, 0); task.wait() end
						hum.Sit = false
						safe_invis_touch(blob.GrabbableHitbox, hrp)
						local bp = create_bp1(blob.VehicleSeat, "antigrabblob", Vector3.new(0, 1111111, 0))
					else toy_delete(O.backpack.antigrabblob) end
				end
			end,
		})


		bindtab:CreateButton({
			Name = "ffffffffff",
			Callback = function()
				for _, v in pairs(workspace:GetDescendants()) do
					if v.Name == "CreatureBlobman" then
						local args = {
							[1] = v.RightDetector,
							[2] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
							[3] = v.RightDetector.RightWeld
						}
				
						v.BlobmanSeatAndOwnerScript.CreatureGrab:FireServer(unpack(args))
						local args = {
							[1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
							[2] = CFrame.new(v.RightDetector.Position) * CFrame.Angles(-0, 0, -0)
						}
				
						game:GetService("ReplicatedStorage").GrabEvents.SetNetworkOwner:FireServer(unpack(args))	 
					end
				end
			end,
		})

		bindtab:CreateToggle({
			Name = "ffffffffffffffffffff",
			CurrentValue = false,
			Flag = "",
			Callback = function(Value)
				wtrhrhrthrth = Value
				if wtrhrhrthrth then
					spawn(function()
						while wtrhrhrthrth do
							local character = game:GetService("Players").LocalPlayer.Character
							if character and character:FindFirstChild("HumanoidRootPart") then
								local args = {
									[1] = character.HumanoidRootPart,
									[2] = 0
								}
								game:GetService("ReplicatedStorage").CharacterEvents.RagdollRemote:FireServer(unpack(args))
							end
							wait(0.0000000000000000000000000000000000000000000000000000001)
						end
					end)
				end
			end,
		})
	end

local scripttab = Window:CreateTab("Script", 7733920644)

	scripttab:CreateButton({
		Name = "Open Dex Explorer V2",
		Callback = function()
			loadstring(game:HttpGet('https://ithinkimandrew.site/scripts/tools/dark-dex.lua'))()
		end,
	})

	scripttab:CreateButton({
		Name = "Rejoin Game",
		Callback = function()
			local TeleportService = game:GetService("TeleportService")
			local Players = game:GetService("Players")
			local LocalPlayer = O.me

			local Rejoin = coroutine.create(function()
				local Success, ErrorMessage = pcall(function()
					TeleportService:Teleport(game.PlaceId, LocalPlayer)
				end)

				if ErrorMessage and not Success then
					warn(ErrorMessage)
				end
			end)

			coroutine.resume(Rejoin)
		end,
	})

local visualtab = Window:CreateTab("Visual", 7733774602)

	visualtab:CreateSection("Chams")

		visualtab:CreateToggle({
			Name = "Chams Toggle",
			CurrentValue = false,
			Flag = "ChamsToggle",
			Callback = function(Value)
				chamst = Value
				set_chams_parametr()
			end,
		})

		visualtab:CreateColorPicker({
			Name = "Fill Color",
			Color = Color3.fromRGB(0,0,0),
			Flag = "FillColor/chams",
			Callback = function(Value)
				chamsfc = Value
				set_chams_parametr()
			end
		})

		visualtab:CreateSlider({
			Name = "Fill Transparency",
			Range = {0, 1},
			Increment = 0.1,
			Suffix = "",
			CurrentValue = 0.7,
			Flag = "FillTransparency",
			Callback = function(Value)
				N.chamsft = Value
				set_chams_parametr()
			end,
		})

		visualtab:CreateColorPicker({
			Name = "Outline Color",
			Color = Color3.fromRGB(0,0,0),
			Flag = "OutlineColor/chams",
			Callback = function(Value)
				chamsoc = Value
				set_chams_parametr()
			end
		})

		visualtab:CreateSlider({
			Name = "Outline Transparency",
			Range = {0, 1},
			Increment = 0.1,
			Suffix = "",
			CurrentValue = 0,
			Flag = "OutlineTransparency",
			Callback = function(Value)
				N.chamsot = Value
				set_chams_parametr()
			end,
		})

	visualtab:CreateSection("FPS Boost")

		visualtab:CreateDropdown({
			Name = "Graphics Quality",
			Options = {"Bad","Default","Good","Best"},
			CurrentOption = {""},
			MultipleOptions = false,
			Flag = "GraphicsQuality", 
			Callback = function(Option)
				local temp = ""; for _,t in pairs(Option) do temp = temp..t end
				if temp == "Bad" then
					reset_gq()
					for _,obj in pairs(S.w:GetDescendants()) do if obj:IsA("Part") then local bv = Instance.new("BoolValue", obj); bv.Name = "gqcs"; bv.Value = obj.CastShadow; obj.CastShadow = false end end
					game.Lighting.Technology = "Legacy"
					game.MaterialService.Use2022Materials = true
				elseif temp == "Default" then reset_gq()
				elseif temp == "Good" then
					reset_gq()
					game.Lighting.Technology = "ShadowMap"
				elseif temp == "Best" then
					reset_gq()
					for _,obj in pairs(S.w:GetDescendants()) do if obj:IsA("PointLight") then local bv = Instance.new("BoolValue", obj); bv.Name = "gqs"; bv.Value = obj.Shadows; obj.Shadows = true end end
					for _,obj in pairs(S.w:GetDescendants()) do if obj:IsA("SpotLight") then local bv = Instance.new("BoolValue", obj); bv.Name = "gqs"; bv.Value = obj.Shadows; obj.Shadows = true end end
					O.sunrays.Intensity = 0.25
					O.sunrays.Spread = 1
					game.Lighting.Technology = "Future"
					game.Lighting.OutdoorAmbient = Color3.fromRGB(160, 160, 160)
					game.Lighting.Ambient = Color3.fromRGB(80, 80, 80)
					O.bloomeffect.Intensity = 1
					O.bloomeffect.Size = 1
					O.bloomeffect.Threshold = 1
				end
			end,
		})

		visualtab:CreateToggle({
			Name = "Hide All Toys",
			CurrentValue = false,
			Flag = "HideAllToys",
			Callback = function(Value)
				L.hidealltoys = not(L.hidealltoys)
				local t = L.hidealltoys
				while t == L.hidealltoys and task.wait() do
					for _,plr in ipairs(S.Players:GetPlayers()) do 
						if plr ~= O.me then
							if S.w:FindFirstChild(plr.Name.."SpawnedInToys") then
								for _,toy in pairs(S.w[plr.Name.."SpawnedInToys"]:GetChildren()) do
									for _,prt in pairs(toy:GetDescendants()) do
										if prt:IsA("Part") then
											local nb = prt:FindFirstChild("TValue")
											if not(nb) then
												nb = Instance.new("NumberValue", prt)
												nb.Name = "TValue"
												nb.Value = prt.Transparency
											end
											if L.hidealltoys then prt.Transparency = 1 else prt.Transparency = nb.Value end
										end
									end
									task.wait()
								end
							end
						end
					end
				end
			end,
		})

		visualtab:CreateToggle({
			Name = "No Shadow All Toys",
			CurrentValue = false,
			Flag = "NoShadowAllToys",
			Callback = function(Value)
				L.shadowalltoys = not(L.shadowalltoys)
				local t = L.shadowalltoys
				while t == L.shadowalltoys and task.wait() do
					for _,plr in ipairs(S.Players:GetPlayers()) do 
						if plr ~= O.me then
							if S.w:FindFirstChild(plr.Name.."SpawnedInToys") then
								for _,toy in pairs(S.w[plr.Name.."SpawnedInToys"]:GetChildren()) do
									for _,prt in pairs(toy:GetDescendants()) do
										if prt:IsA("Part") then
											local bv = prt:FindFirstChild("SValue")
											if not(bv) then
												bv = Instance.new("BoolValue", prt)
												bv.Name = "SValue"
												bv.Value = prt.CastShadow
											end
											if L.shadowalltoys then prt.CastShadow = false else prt.CastShadow = bv.Value end
										end
									end
									task.wait()
								end
							end
						end
					end
				end
			end,
		})

		visualtab:CreateToggle({
			Name = "Store All Players Toys",
			CurrentValue = false,
			Flag = "StoreAllToys",
			Callback = function(Value)
				L.storeallplayerstoys = not(L.storeallplayerstoys)
				local t = L.storeallplayerstoys
				while t == L.storeallplayerstoys and task.wait() do
					for _,plr in ipairs(S.Players:GetPlayers()) do 
						if plr ~= O.me then
							if L.storeallplayerstoys then
								if S.w:FindFirstChild(plr.Name.."SpawnedInToys") then
									S.w[plr.Name.."SpawnedInToys"].Parent = S.RS
								end
							else 
								if S.RS:FindFirstChild(plr.Name.."SpawnedInToys") then 
									S.RS[plr.Name.."SpawnedInToys"].Parent = S.w 
								end 
							end
						end
					end
				end
			end,
		})

	visualtab:CreateSection("Sky")

		visualtab:CreateColorPicker({
			Name = "Clouds Color",
			Color = Color3.fromRGB(0,0,0),
			Flag = "CloudsColor",
			Callback = function(Value)
				S.w.Terrain.Clouds.Color = Value
			end
		})

		visualtab:CreateSlider({
			Name = "Time Slider",
			Range = {0, 23},
			Increment = 0.001,
			Suffix = "",
			CurrentValue = 14,
			Flag = "FOVSlider",
			Callback = function(Value)
				game.Lighting.ClockTime = Value
			end,
		})

		visualtab:CreateToggle({
			Name = "Time Sync",
			CurrentValue = false,
			Flag = "timesync",
			Callback = function(Value)
				timesync = Value
				while timesync and task.wait(1) do
					local data = request({
						Url = "https://www.timeapi.io/api/time/current/zone?timeZone=Europe%2FAmsterdam",
						Method = "GET",
					})
					data = S.HS:JSONDecode(data.Body)
					game.Lighting.TimeOfDay = tostring(tonumber(data.hour)+1)..":"..data.minute..":"..data.seconds
				end
			end,
		})

	visualtab:CreateSection("World")

		visualtab:CreateColorPicker({
			Name = "Ocean Color",
			Color = Color3.fromRGB(8,137,207),
			Flag = "OceanColor",
			Callback = function(Value)
				local v1 = O.m.AlwaysHereTweenedObjects.Ocean.Object.ObjectModel
				for _,prt in pairs(v1:GetChildren()) do 
					if prt:IsA("Part") and prt.Name == "Ocean" then
						prt.Color = Value
					end
				end
			end
		})

	visualtab:CreateSection("Others")

		visualtab:CreateSlider({
			Name = "FOV Slider",
			Range = {1, 120},
			Increment = 1,
			Suffix = "",
			CurrentValue = 70,
			Flag = "FOVSlider",
			Callback = function(Value)
				S.w.CurrentCamera.FieldOfView = Value 
			end,
		})

	visualtab:CreateSection("Color Correction")

		visualtab:CreateToggle({
			Name = "LSD",
			CurrentValue = false,
			Flag = "LSD",
			Callback = function(Value)
				LSD = Value
				O.ccc.Enabled = LSD
				if LSD then
					local save1 = O.ccc.Brightness
					local save2 = O.ccc.Contrast
					local save3 = O.ccc.Saturation
					O.ccc.Brightness = 1
					O.ccc.Contrast = 10
					O.ccc.Saturation = 1
					while LSD do
						O.ccc.TintColor = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))
						task.wait()
					end
					O.ccc.Brightness = save1
					O.ccc.Contrast = save2
					O.ccc.Saturation = save3
				end
			end,
		})

		visualtab:CreateToggle({
			Name = "Color Correction",
			CurrentValue = false,
			Flag = "ColorCorrection",
			Callback = function(Value)
				O.ccc.Enabled = Value
			end,
		})

		visualtab:CreateSlider({
			Name = "Brightness",
			Range = {0,10},
			Increment = 1,
			Suffix = "",
			CurrentValue = 0,
			Flag = "Brightness",
			Callback = function(Value)
				O.ccc.Brightness = Value
			end,
		})

		visualtab:CreateSlider({
			Name = "Contrast",
			Range = {0,100},
			Increment = 1,
			Suffix = "",
			CurrentValue = 0,
			Flag = "Contrast",
			Callback = function(Value)
				O.ccc.Contrast = Value
			end,
		})

		visualtab:CreateSlider({
			Name = "Saturation",
			Range = {0,100},
			Increment = 1,
			Suffix = "",
			CurrentValue = 0,
			Flag = "Saturation",
			Callback = function(Value)
				O.ccc.Saturation = Value
			end,
		})

		visualtab:CreateColorPicker({
			Name = "Tint Color",
			Color = Color3.fromRGB(0,0,0),
			Flag = "TintColor",
			Callback = function(Value)
				O.ccc.TintColor = Value
			end
		})

local guitab = Window:CreateTab("GUI", 7733774602)

	guitab:CreateSection("Rayfield")

		guitab:CreateColorPicker({
			Name = "TextColor",
			Color = Color3.fromRGB(240, 240, 240),
			Flag = "TextColor/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.TextColor = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "Background",
			Color = Color3.fromRGB(25, 25, 25),
			Flag = "Background/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.Background = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "Topbar",
			Color = Color3.fromRGB(34, 34, 34),
			Flag = "Topbar/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.Topbar = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "Shadow",
			Color = Color3.fromRGB(20, 20, 20),
			Flag = "Shadow/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.Shadow = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "NotificationBackground",
			Color = Color3.fromRGB(20, 20, 20),
			Flag = "NotificationBackground/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.NotificationBackground = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "NotificationActionsBackground",
			Color = Color3.fromRGB(230, 230, 230),
			Flag = "NotificationActionsBackground/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.NotificationActionsBackground = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "TabBackground",
			Color = Color3.fromRGB(80, 80, 80),
			Flag = "TextTabBackgroundColor/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.TextTabBackgroundColor = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "TabStroke",
			Color = Color3.fromRGB(85, 85, 85),
			Flag = "TabStroke/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.TabStroke = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "TabBackgroundSelected",
			Color = Color3.fromRGB(210, 210, 210),
			Flag = "TabBackgroundSelected/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.TabBackgroundSelected = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "TabTextColor",
			Color = Color3.fromRGB(240, 240, 240),
			Flag = "TabTextColor/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.TabTextColor = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "SelectedTabTextColor",
			Color = Color3.fromRGB(50, 50, 50),
			Flag = "SelectedTabTextColor/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.SelectedTabTextColor = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "ElementBackground",
			Color = Color3.fromRGB(35, 35, 35),
			Flag = "ElementBackground/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.ElementBackground = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "ElementBackgroundHover",
			Color = Color3.fromRGB(40, 40, 40),
			Flag = "ElementBackgroundHover/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.ElementBackgroundHover = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "SecondaryElementBackground",
			Color = Color3.fromRGB(25, 25, 25),
			Flag = "SecondaryElementBackground/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.SecondaryElementBackground = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "ElementStroke",
			Color = Color3.fromRGB(50, 50, 50),
			Flag = "ElementStroke/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.ElementStroke = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "SecondaryElementStroke",
			Color = Color3.fromRGB(40, 40, 40),
			Flag = "SecondaryElementStroke/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.SecondaryElementStroke = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "SliderBackground",
			Color = Color3.fromRGB(43, 105, 159),
			Flag = "SliderBackground/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.SliderBackground = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "SliderProgress",
			Color = Color3.fromRGB(43, 105, 159),
			Flag = "SliderProgress/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.SliderProgress = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "SliderStroke",
			Color = Color3.fromRGB(48, 119, 177),
			Flag = "SliderStroke/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.SliderStroke = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "ToggleBackground",
			Color = Color3.fromRGB(30, 30, 30),
			Flag = "ToggleBackground/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.ToggleBackground = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "ToggleEnabled",
			Color = Color3.fromRGB(0, 146, 214),
			Flag = "ToggleEnabled/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.ToggleEnabled = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "ToggleDisabled",
			Color = Color3.fromRGB(100, 100, 100),
			Flag = "ToggleDisabled/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.ToggleDisabled = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "ToggleEnabledStroke",
			Color = Color3.fromRGB(0, 170, 255),
			Flag = "ToggleEnabledStroke/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.ToggleEnabledStroke = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "ToggleDisabledStroke",
			Color = Color3.fromRGB(125, 125, 125),
			Flag = "ToggleDisabledStroke/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.ToggleDisabledStroke = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "ToggleEnabledOuterStroke",
			Color = Color3.fromRGB(100, 100, 100),
			Flag = "ToggleEnabledOuterStroke/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.ToggleEnabledOuterStroke = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "ToggleDisabledOuterStroke",
			Color = Color3.fromRGB(65, 65, 65),
			Flag = "ToggleDisabledOuterStroke/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.ToggleDisabledOuterStroke = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "InputBackground",
			Color = Color3.fromRGB(30, 30, 30),
			Flag = "InputBackground/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.InputBackground = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "InputStroke",
			Color = Color3.fromRGB(65, 65, 65),
			Flag = "InputStroke/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.InputStroke = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

		guitab:CreateColorPicker({
			Name = "PlaceholderColor",
			Color = Color3.fromRGB(178, 178, 178),
			Flag = "PlaceholderColor/rfc",
			Callback = function(Value)
				Ld.field.Theme.Default2.PlaceholderColor = Value
				Ld.field:ChangeTheme("Default2")
			end
		})

	guitab:CreateSection("FTAP")

		guitab:CreateColorPicker({
			Name = "Coins",
			Color = Color3.fromRGB(0, 0, 0),
			Flag = "Coins/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.Coins = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "TabBar",
			Color = Color3.fromRGB(66, 66, 66),
			Flag = "TabBar/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.TabBar = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "Settings",
			Color = Color3.fromRGB(0, 0, 0),
			Flag = "Settings/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.Settings = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "Shop",
			Color = Color3.fromRGB(0, 0, 0),
			Flag = "Shop/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.Shop = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "ToyDestroy",
			Color = Color3.fromRGB(0, 0, 0),
			Flag = "ToyDestroy/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.ToyDestroy = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "ToyShop",
			Color = Color3.fromRGB(0, 0, 0),
			Flag = "ToyShop/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.ToyShop = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "Toys",
			Color = Color3.fromRGB(0, 0, 0),
			Flag = "Toys/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.Toys = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "SettingsContents",
			Color = Color3.fromRGB(90, 90, 90),
			Flag = "SettingsContents/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.SettingsContents = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "SettingsTitle",
			Color = Color3.fromRGB(66, 66, 66),
			Flag = "SettingsTitle/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.SettingsTitle = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "ShopTitle",
			Color = Color3.fromRGB(66, 66, 66),
			Flag = "ShopTitle/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.ShopTitle = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "ShopContents",
			Color = Color3.fromRGB(90, 90, 90),
			Flag = "ShopContents/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.ShopContents = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "ToysContents",
			Color = Color3.fromRGB(90, 90, 90),
			Flag = "ToysContents/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.ToysContents = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "FavoritesFrame",
			Color = Color3.fromRGB(120, 120, 120),
			Flag = "FavoritesFrame/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.FavoritesFrame = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "Favorites",
			Color = Color3.fromRGB(66, 66, 66),
			Flag = "Favorites/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.Favorites = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "MeterFrame",
			Color = Color3.fromRGB(120, 120, 120),
			Flag = "MeterFrame/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.MeterFrame = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "SortingTabs",
			Color = Color3.fromRGB(120, 120, 120),
			Flag = "SortingTabs/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.SortingTabs = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "ToysTitle",
			Color = Color3.fromRGB(66, 66, 66),
			Flag = "ToysTitle/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.ToysTitle = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "DestroyTitle",
			Color = Color3.fromRGB(66, 66, 66),
			Flag = "DestroyTitle/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.DestroyTitle = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "DestroyContents",
			Color = Color3.fromRGB(90, 90, 90),
			Flag = "DestroyContents/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.DestroyContents = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "DestroyMeterFrame",
			Color = Color3.fromRGB(120, 120, 120),
			Flag = "DestroyMeterFrame/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.DestroyMeterFrame = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "ToyShopTitle",
			Color = Color3.fromRGB(66, 66, 66),
			Flag = "ToyShopTitle/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.ToyShopTitle = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "ToyShopSortingTabs",
			Color = Color3.fromRGB(120, 120, 120),
			Flag = "ToyShopSortingTabs/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.ToyShopSortingTabs = Value
				set_ftap_color()
			end
		})

		guitab:CreateColorPicker({
			Name = "ToyShopContents",
			Color = Color3.fromRGB(90, 90, 90),
			Flag = "ToyShopContents/ftapc",
			Callback = function(Value)
				Lt.ftapcolors.ToyShopContents = Value
				set_ftap_color()
			end
		})

		GridLayoutX = 90
		GridLayoutY = 90
		guitab:CreateSlider({
			Name = "Grid Layout X",
			Range = {0, 100},
			Increment = 1,
			Suffix = "",
			CurrentValue = 90,
			Flag = "GridLayoutX",
			Callback = function(Value)
				GridLayoutX = Value
				O.me.PlayerGui.MenuGui.Menu.TabContents.Toys.Contents.UIGridLayout.CellSize = UDim2.new(0, GridLayoutX, 0, GridLayoutY)
				O.me.PlayerGui.MenuGui.Menu.TabContents.ToyShop.Contents.UIGridLayout.CellSize = UDim2.new(0, GridLayoutX, 0, GridLayoutY)
				O.me.PlayerGui.MenuGui.Menu.TabContents.ToyDestroy.Contents.UIGridLayout.CellSize = UDim2.new(0, GridLayoutX, 0, GridLayoutY)
			end,
		})

		guitab:CreateSlider({
			Name = "Grid Layout Y",
			Range = {0, 100},
			Increment = 1,
			Suffix = "",
			CurrentValue = 90,
			Flag = "GridLayoutY",
			Callback = function(Value)
				GridLayoutY = Value
				O.me.PlayerGui.MenuGui.Menu.TabContents.Toys.Contents.UIGridLayout.CellSize = UDim2.new(0, GridLayoutX, 0, GridLayoutY)
				O.me.PlayerGui.MenuGui.Menu.TabContents.ToyShop.Contents.UIGridLayout.CellSize = UDim2.new(0, GridLayoutX, 0, GridLayoutY)
				O.me.PlayerGui.MenuGui.Menu.TabContents.ToyDestroy.Contents.UIGridLayout.CellSize = UDim2.new(0, GridLayoutX, 0, GridLayoutY)
			end,
		})

	visualtab:CreateSection("Crosshair")



if get_rank(O.me) > 1 then
	local msg = ""
	if check_list(Lt.admins, O.me.UserId) then msg = "" end
	if L.vhsows then msg = "" end
	O.Events.saymsg:FireServer(""..msg, "ALL")
	O.Events.saymsg:FireServer("", "All")
end

task.delay(1, function() Lt.ftapcolors = Ld.field.Theme.ftapc end)
task.delay(1, function() chamsfc = Ld.field.Theme.FillColor end)
task.delay(1, function() chamsoc = Ld.field.Theme.OutlineColor end)
task.delay(1, function() Ld.field:ChangeTheme("Default2") end)
task.delay(1, function() set_chams_parametr() end)
task.delay(1, function() set_ftap_color() end)
task.delay(1, function() set_line_color() end)
task.delay(1, function() datadssend() end)

Ld.field:LoadConfiguration()
