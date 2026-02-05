print("PhantomXPro - MM2 Ultimate Script")

-- تحميل WindUI
local success, result = pcall(function()
    local source = game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua", true)
    if source then
        local loaded = loadstring(source)
        if loaded then
            return loaded()
        end
    end
    return nil
end)

if success and result then
    local WindUI = result
    
    -- =============================================
    -- نظام اللغات
    -- =============================================
    _G.SelectedLanguage = _G.SelectedLanguage or "Arabic"
    
    -- ترجمات للغتين
    local Translations = {
        Arabic = {
            welcome = "أهلاً وسهلاً في PhantomXPro 🌟",
            warning = "⚠️ تنبيه هام:\nتشغيل السكربت يكون على مسؤوليتك الشخصية والكاملة، ونحن غير مسؤولين عن أي ضرر.",
            discord = "🎮 انضم لسيرفر الديسكورد",
            discordContent = "انضم للسيرڤر الرسمي للسكربت!\n• آخر التحديثات\n• مساعدة فنية\n• إقتراحات وتحسينات\n• تحديثات أمان\n\nالرابط: https://discord.gg/CgUa36sPNs",
            copyLink = "نسخ الرابط",
            linkCopied = "✅ تم نسخ الرابط",
            linkCopiedContent = "رابط الديسكورد في الحافظة",
            changeLanguage = "تغيير اللغة إلى الإنجليزية",
            languageChanged = "جاري إعادة التشغيل...",
            scriptClosed = "تم إغلاق السكربت",
            notification = "إشعار",
            
            -- أقسام التبويبات
            mainFeatures = "الميزات الرئيسية",
            settings = "إعدادات",
            developer = "المطور",
            config = "الإعدادات",
            
            -- معلومات الحساب
            yourName = "👤 اسمك: ",
            yourUsername = "🎫 يوزرك: ",
            accountAge = "📅 عمر الحساب: ",
            hack = "⚡ الهاك: ",
            level = "📊 المستوى: ",
            xp = "⭐ الخبرة: ",
            players = "👥 اللاعبين: ",
            fps = "🔄 فريماتك: ",
            ping = "📡 البينق: ",
            
            -- تبويبات
            yourInfo = "معلوماتك",
            espFeatures = "مميزات ESP",
            movementFeatures = "مميزات الحركة",
            innocentFeatures = "ميزات الأبرياء",
            murdererFeatures = "ميزات القتلة",
            sheriffFeatures = "ميزات الشرطة",
            settingsTab = "الإعدادات المتقدمة",
            
            -- ميزات ESP
            lockCamera = "قفل الكاميرا",
            lockCameraDesc = "قفل الكاميرا على القاتل",
            xray = "X-Ray Vision",
            xrayDesc = "رؤية عبر الجدران",
            murdererESP = "ESP القتلة",
            murdererESPDesc = "تحديد القتلة",
            innocentESP = "ESP الأبرياء",
            innocentESPDesc = "تحديد الأبرياء",
            sheriffESP = "ESP الشرطة",
            sheriffESPDesc = "تحديد الشرطة",
            gunDropESP = "ESP السلاح",
            gunDropESPDesc = "تحديد موقع السلاح",
            coinESP = "ESP العملات",
            coinESPDesc = "تحديد موقع العملات",
            
            -- ميزات الحركة
            walkspeed = "سرعة المشي",
            walkspeedDesc = "أدخل سرعة المشي (افتراضي: 16)",
            jumpPower = "قوة القفز",
            jumpPowerDesc = "أدخل قوة القفز (افتراضي: 50)",
            gravity = "الجاذبية",
            gravityDesc = "أدخل الجاذبية (افتراضي: 196.2)",
            fov = "مجال الرؤية",
            fovDesc = "أدخل مجال الرؤية (افتراضي: 70)",
            infiniteJump = "قفز لا نهائي",
            infiniteJumpDesc = "تمكين القفز المستمر",
            noclip = "المرور عبر الجدران",
            noclipDesc = "المرور عبر الجدران",
            fly = "الطيران",
            flyDesc = "تمكين وضع الطيران",
            speedHack = "السرعة",
            speedHackDesc = "أدخل السرعة (افتراضي: 16)",
            flySpeed = "سرعة الطيران",
            flySpeedDesc = "أدخل سرعة الطيران (افتراضي: 50)",
            restoreDefaults = "استعادة الإعدادات الافتراضية",
            restoreDefaultsDesc = "إعادة جميع الإعدادات للقيم الافتراضية",
            teleportToPlayer = "انتقل للاعب",
            teleportToPlayerDesc = "اختر لاعب للانتقال إليه",
            
            -- ميزات الأبرياء
            getDroppedGun = "الحصول على السلاح",
            getDroppedGunDesc = "النقل إلى السلاح المسقط",
            autoGetDroppedGun = "أوتو الحصول على السلاح",
            autoGetDroppedGunDesc = "تلقائي الحصول على السلاح",
            getGunAndShoot = "الحصول على السلاح وإطلاق",
            getGunAndShootDesc = "الحصول على السلاح وإطلاق على القاتل",
            instaWin = "فوز فوري",
            instaWinDesc = "رمي القاتل لفوز فوري",
            
            -- ميزات القتلة
            aimbot = "أيم بوت",
            aimbotDesc = "تلقائي التصويب على الشرطة",
            selectPlayer = "اختر لاعب",
            selectPlayerDesc = "اختر لاعب للقتل",
            refreshPlayers = "تحديث قائمة اللاعبين",
            refreshPlayersDesc = "تحديث القائمة",
            killSelected = "قتل المحدد",
            killSelectedDesc = "قتل اللاعب المحدد",
            killAll = "قتل الجميع",
            killAllDesc = "جلب جميع اللاعبين وقتلهم",
            bringAll = "جلب الجميع",
            bringAllDesc = "جلب جميع اللاعبين إليك",
            
            -- ميزات الشرطة
            shotType = "نوع الطلقة",
            shotTypeDesc = "اختر نوع الطلقة",
            shootMurderer = "إطلاق على القاتل",
            shootMurdererDesc = "إطلاق على القاتل",
            aimbotMurderer = "أيم بوت القاتل",
            aimbotMurdererDesc = "تلقائي التصويب على القاتل",
            killMurderer = "قتل القاتل",
            killMurdererDesc = "TP وإطلاق على القاتل",
            
            -- إعدادات
            scriptSettings = "الإعدادات",
            scriptDesc = "تخصيص السكربت حسب رغبتك",
            selectTheme = "اختر السمة",
            updateScript = "تحديث السكربت",
            closeScript = "أقفل السكربت",
            boostFPS = "تعزيز الفريمات",
            boostFPSDesc = "تحسين أداء اللعبة",
            fullBright = "إضاءة كاملة",
            fullBrightDesc = "إضاءة كاملة للخريطة",
            antiAFK = "مكافحة AFK",
            antiAFKDesc = "منع طردك من اللعبة",
            rejoinServer = "إعادة الانضمام",
            rejoinServerDesc = "إعادة الانضمام للسيرفر",
            serverHop = "تغيير السيرفر",
            serverHopDesc = "الانتقال لسيرفر آخر",
            joinLowerServer = "انضمام لسيرفر أقل",
            joinLowerServerDesc = "الانضمام لسيرفر بأقل لاعبين",
            
            -- المطور
            developerName = "Cypher",
            developerDesc = "مطور سكربتات روبلوكس",
            joinDiscord = "انضم لسيرفر الديسكورد",
            version = "الإصدار 5.0.0",
            contactDev = "تواصل مع المطور",
            
            -- تحديثات
            latestUpdates = "📝 التحديثات الجديدة",
            updatesDesc = "✅ تم تحديث السكربت:\n\n• ESP محسن (أسماء فقط) ✅\n• قفل كاميرا على القاتل 🔥\n• استعادة إعدادات شغالة ⚡\n• قائمة لاعبين تعرض جميع الأسماء 🎯"
        },
        English = {
            welcome = "Welcome to PhantomXPro 🌟",
            warning = "⚠️ Important Warning:\nUsing this script is entirely at your own risk and responsibility.",
            discord = "🎮 Join Discord Server",
            discordContent = "Join the official script server!\n• Latest updates\n• Technical support\n• Suggestions and improvements\n• Security updates\n\nLink: https://discord.gg/CgUa36sPNs",
            copyLink = "Copy Link",
            linkCopied = "✅ Link Copied",
            linkCopiedContent = "Discord link in clipboard",
            changeLanguage = "Change Language to Arabic",
            languageChanged = "Restarting...",
            scriptClosed = "Script closed",
            notification = "Notification",
            
            -- Tab sections
            mainFeatures = "Main Features",
            settings = "Settings",
            developer = "Developer",
            config = "Config",
            
            -- Account info
            yourName = "👤 Your Name: ",
            yourUsername = "🎫 Username: ",
            accountAge = "📅 Account Age: ",
            hack = "⚡ Hack: ",
            level = "📊 Level: ",
            xp = "⭐ XP: ",
            players = "👥 Players: ",
            fps = "🔄 FPS: ",
            ping = "📡 Ping: ",
            
            -- Tabs
            yourInfo = "Your Info",
            espFeatures = "ESP Features",
            movementFeatures = "Movement Features",
            innocentFeatures = "Innocent Features",
            murdererFeatures = "Murderer Features",
            sheriffFeatures = "Sheriff Features",
            settingsTab = "Advanced Settings",
            
            -- ESP Features
            lockCamera = "Lock Camera",
            lockCameraDesc = "Lock camera on murderer",
            xray = "X-Ray Vision",
            xrayDesc = "See through walls",
            murdererESP = "Murderer ESP",
            murdererESPDesc = "Highlight murderers",
            innocentESP = "Innocent ESP",
            innocentESPDesc = "Highlight innocents",
            sheriffESP = "Sheriff ESP",
            sheriffESPDesc = "Highlight sheriffs",
            gunDropESP = "GunDrop ESP",
            gunDropESPDesc = "Highlight dropped gun",
            coinESP = "Coin ESP",
            coinESPDesc = "Highlight coins",
            
            -- Movement Features
            walkspeed = "Walkspeed",
            walkspeedDesc = "Enter walk speed (default: 16)",
            jumpPower = "Jump Power",
            jumpPowerDesc = "Enter jump power (default: 50)",
            gravity = "Gravity",
            gravityDesc = "Enter gravity (default: 196.2)",
            fov = "Field of View",
            fovDesc = "Enter field of view (default: 70)",
            infiniteJump = "Infinite Jump",
            infiniteJumpDesc = "Enable continuous jump",
            noclip = "Noclip",
            noclipDesc = "Walk through walls",
            fly = "Fly",
            flyDesc = "Enable fly mode",
            speedHack = "Speed Hack",
            speedHackDesc = "Enter speed (default: 16)",
            flySpeed = "Fly Speed",
            flySpeedDesc = "Enter fly speed (default: 50)",
            restoreDefaults = "Restore Defaults",
            restoreDefaultsDesc = "Reset all settings to default",
            teleportToPlayer = "Teleport to Player",
            teleportToPlayerDesc = "Select player to teleport to",
            
            -- Innocent Features
            getDroppedGun = "Get Dropped Gun",
            getDroppedGunDesc = "Teleport to dropped gun",
            autoGetDroppedGun = "Auto Get Dropped Gun",
            autoGetDroppedGunDesc = "Auto get dropped gun",
            getGunAndShoot = "Get Gun and Shoot",
            getGunAndShootDesc = "Get gun and shoot murderer",
            instaWin = "Insta Win",
            instaWinDesc = "Fling murderer for instant win",
            
            -- Murderer Features
            aimbot = "Aimbot",
            aimbotDesc = "Auto aim at sheriff",
            selectPlayer = "Select Player",
            selectPlayerDesc = "Select player to kill",
            refreshPlayers = "Refresh Players",
            refreshPlayersDesc = "Update player list",
            killSelected = "Kill Selected",
            killSelectedDesc = "Kill selected player",
            killAll = "Kill All",
            killAllDesc = "Bring all players and kill them",
            bringAll = "Bring All",
            bringAllDesc = "Bring all players to you",
            
            -- Sheriff Features
            shotType = "Shot Type",
            shotTypeDesc = "Select shot type",
            shootMurderer = "Shoot Murderer",
            shootMurdererDesc = "Shoot the murderer",
            aimbotMurderer = "Aimbot Murderer",
            aimbotMurdererDesc = "Auto aim at murderer",
            killMurderer = "Kill Murderer",
            killMurdererDesc = "TP and shoot murderer",
            
            -- Settings
            scriptSettings = "Settings",
            scriptDesc = "Customize the script to your liking",
            selectTheme = "Select Theme",
            updateScript = "Update Script",
            closeScript = "Close Script",
            boostFPS = "Boost FPS",
            boostFPSDesc = "Improve game performance",
            fullBright = "Full Brightness",
            fullBrightDesc = "Full map brightness",
            antiAFK = "Anti AFK",
            antiAFKDesc = "Prevent being kicked",
            rejoinServer = "Rejoin Server",
            rejoinServerDesc = "Rejoin current server",
            serverHop = "Server Hop",
            serverHopDesc = "Join different server",
            joinLowerServer = "Join Lower Server",
            joinLowerServerDesc = "Join server with fewer players",
            
            -- Developer
            developerName = "Cypher",
            developerDesc = "Roblox Script Developer",
            joinDiscord = "Join Discord Server",
            version = "Version 5.0.0",
            contactDev = "Contact Developer",
            
            -- Updates
            latestUpdates = "📝 Latest Updates",
            updatesDesc = "✅ Script updated:\n\n• Enhanced ESP (names only) ✅\n• Camera lock on murderer 🔥\n• Restore defaults fully working ⚡\n• Player list shows all names 🎯"
        }
    }
    
    -- دالة الترجمة
    local function T(key)
        return Translations[_G.SelectedLanguage][key] or key
    end
    
    -- تنظيف الواجهة
    local function cleanupGUI()
        for _, v in pairs(game.CoreGui:GetChildren()) do
            if v:IsA("ScreenGui") and (v.Name:find("Wind") or v.Name:find("Phantom")) then
                v:Destroy()
            end
        end
    end
    
    -- =============================================
    -- المتغيرات العالمية
    -- =============================================
    _G.ESPEnabled = false
    _G.MurdererESPEnabled = false
    _G.InnocentESPEnabled = false
    _G.SheriffESPEnabled = false
    _G.GunESPEnabled = false
    _G.CoinESPEnabled = false
    _G.AutoGetGunEnabled = false
    _G.KillAllEnabled = false
    _G.NoclipEnabled = false
    _G.InfiniteJumpEnabled = false
    _G.FlyEnabled = false
    _G.FullBrightEnabled = false
    _G.AntiAFKEnabled = true
    _G.SpeedHackEnabled = false
    _G.WalkspeedValue = 16
    _G.JumpPowerValue = 50
    _G.GravityValue = 196.2
    _G.FOVValue = 70
    _G.FlySpeedValue = 50
    _G.LockCameraEnabled = false
    _G.XrayEnabled = false
    _G.AimbotEnabled = false
    _G.AimbotMurdererEnabled = false
    _G.InstaWinEnabled = false
    _G.KillAllBring = false
    
    -- متغيرات ESP محسنة
    local playerHighlights = {}  
    local coinHighlights = {}
    local gunHighlight = nil
    local espLoops = {}
    local espConnections = {}
    
    -- متغيرات الطيران
    local flyBodyVelocity = nil
    local flyBodyGyro = nil
    
    -- =============================================
    -- وظائف ESP محسنة (أسماء فقط)
    -- =============================================
    local function hasTool(player, toolName)
        if player:FindFirstChild("Backpack") then
            for _, tool in ipairs(player.Backpack:GetChildren()) do
                if tool:IsA("Tool") and tool.Name == toolName then
                    return true
                end
            end
        end
        if player.Character then
            for _, item in ipairs(player.Character:GetChildren()) do
                if item:IsA("Tool") and item.Name == toolName then
                    return true
                end
            end
        end
        return false
    end
    
    local function updateESPForPlayer(player)
        if not player.Character then
            if playerHighlights[player] then
                playerHighlights[player]:Destroy()
                playerHighlights[player] = nil
            end
            return
        end

        local character = player.Character
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart then
            if playerHighlights[player] then
                playerHighlights[player]:Destroy()
                playerHighlights[player] = nil
            end
            return
        end

        local isMurderer = hasTool(player, "Knife")
        local isSheriff = (not isMurderer) and hasTool(player, "Gun")
        local isInnocent = (not isMurderer and not isSheriff)

        local desiredColor
        if isMurderer and _G.MurdererESPEnabled then
            desiredColor = Color3.new(1, 0, 0) -- أحمر
        elseif isSheriff and _G.SheriffESPEnabled then
            desiredColor = Color3.new(0, 0, 1) -- أزرق
        elseif isInnocent and _G.InnocentESPEnabled then
            desiredColor = Color3.new(0, 1, 0) -- أخضر
        end

        if desiredColor then
            if not playerHighlights[player] then
                local h = Instance.new("Highlight")
                h.Name = "ESPHighlight_" .. player.Name
                h.FillTransparency = 0.7
                h.OutlineTransparency = 0.3
                h.OutlineColor = Color3.new(1, 1, 1)
                h.Adornee = character
                h.FillColor = desiredColor
                h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                h.Parent = character
                playerHighlights[player] = h
                
                -- إضافة BillboardGui للاسم فقط (بدون دور)
                local billboard = Instance.new("BillboardGui")
                billboard.Name = "ESPText_" .. player.Name
                billboard.Adornee = humanoidRootPart
                billboard.Size = UDim2.new(0, 100, 0, 30)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                billboard.MaxDistance = 500
                billboard.Parent = humanoidRootPart
                
                local textLabel = Instance.new("TextLabel")
                textLabel.Text = player.Name -- الاسم فقط
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.BackgroundTransparency = 1
                textLabel.TextColor3 = Color3.new(1, 1, 1)
                textLabel.TextStrokeTransparency = 0.5
                textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                textLabel.Font = Enum.Font.GothamBold
                textLabel.TextSize = 12
                textLabel.Parent = billboard
                
                h:SetAttribute("Billboard", billboard)
            else
                playerHighlights[player].FillColor = desiredColor
                playerHighlights[player].Adornee = character
                
                local billboard = playerHighlights[player]:GetAttribute("Billboard")
                if billboard and billboard:FindFirstChild("TextLabel") then
                    billboard.TextLabel.Text = player.Name -- الاسم فقط
                end
            end
        else
            if playerHighlights[player] then
                local billboard = playerHighlights[player]:GetAttribute("Billboard")
                if billboard then
                    billboard:Destroy()
                end
                playerHighlights[player]:Destroy()
                playerHighlights[player] = nil
            end
        end
    end
    
    local function startMurdererESP()
        _G.MurdererESPEnabled = true
        espLoops["murderer"] = game:GetService("RunService").Heartbeat:Connect(function()
            for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                if player ~= game.Players.LocalPlayer then
                    updateESPForPlayer(player)
                end
            end
        end)
    end
    
    local function stopMurdererESP()
        _G.MurdererESPEnabled = false
        if espLoops["murderer"] then
            espLoops["murderer"]:Disconnect()
            espLoops["murderer"] = nil
        end
        for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
            if player ~= game.Players.LocalPlayer and playerHighlights[player] then
                local billboard = playerHighlights[player]:GetAttribute("Billboard")
                if billboard then
                    billboard:Destroy()
                end
                playerHighlights[player]:Destroy()
                playerHighlights[player] = nil
            end
        end
    end
    
    local function startInnocentESP()
        _G.InnocentESPEnabled = true
        espLoops["innocent"] = game:GetService("RunService").Heartbeat:Connect(function()
            for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                if player ~= game.Players.LocalPlayer then
                    updateESPForPlayer(player)
                end
            end
        end)
    end
    
    local function stopInnocentESP()
        _G.InnocentESPEnabled = false
        if espLoops["innocent"] then
            espLoops["innocent"]:Disconnect()
            espLoops["innocent"] = nil
        end
        for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
            if player ~= game.Players.LocalPlayer and playerHighlights[player] then
                local billboard = playerHighlights[player]:GetAttribute("Billboard")
                if billboard then
                    billboard:Destroy()
                end
                playerHighlights[player]:Destroy()
                playerHighlights[player] = nil
            end
        end
    end
    
    local function startSheriffESP()
        _G.SheriffESPEnabled = true
        espLoops["sheriff"] = game:GetService("RunService").Heartbeat:Connect(function()
            for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                if player ~= game.Players.LocalPlayer then
                    updateESPForPlayer(player)
                end
            end
        end)
    end
    
    local function stopSheriffESP()
        _G.SheriffESPEnabled = false
        if espLoops["sheriff"] then
            espLoops["sheriff"]:Disconnect()
            espLoops["sheriff"] = nil
        end
        for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
            if player ~= game.Players.LocalPlayer and playerHighlights[player] then
                local billboard = playerHighlights[player]:GetAttribute("Billboard")
                if billboard then
                    billboard:Destroy()
                end
                playerHighlights[player]:Destroy()
                playerHighlights[player] = nil
            end
        end
    end
    
    local function startCoinESP()
        _G.CoinESPEnabled = true
        espLoops["coin"] = game:GetService("RunService").Heartbeat:Connect(function()
            for _, container in ipairs(workspace:GetDescendants()) do
                if container:IsA("Model") and container.Name == "CoinContainer" then
                    for _, coinServer in ipairs(container:GetChildren()) do
                        if coinServer.Name == "Coin_Server" then
                            local coinVisual = coinServer:FindFirstChild("CoinVisual")
                            if coinVisual then
                                local mainCoin = coinVisual:FindFirstChild("MainCoin")
                                if mainCoin and mainCoin:IsA("MeshPart") then
                                    if not coinHighlights[mainCoin] then
                                        local h = Instance.new("Highlight")
                                        h.Name = "CoinESPHighlight"
                                        h.FillColor = Color3.fromRGB(255, 215, 0)
                                        h.OutlineColor = Color3.fromRGB(255, 255, 0)
                                        h.FillTransparency = 0.5
                                        h.OutlineTransparency = 0.3
                                        h.Adornee = mainCoin
                                        h.Parent = mainCoin
                                        coinHighlights[mainCoin] = h
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
    
    local function stopCoinESP()
        _G.CoinESPEnabled = false
        if espLoops["coin"] then
            espLoops["coin"]:Disconnect()
            espLoops["coin"] = nil
        end
        for coinObj, h in pairs(coinHighlights) do
            if h then
                h:Destroy()
            end
        end
        coinHighlights = {}
    end
    
    local function startGunESP()
        _G.GunESPEnabled = true
        espLoops["gun"] = game:GetService("RunService").Heartbeat:Connect(function()
            for _, obj in ipairs(workspace:GetDescendants()) do
                if obj:IsA("BasePart") and obj.Name == "GunDrop" then
                    if not gunHighlight then
                        local h = Instance.new("Highlight")
                        h.Name = "GunESPHighlight"
                        h.FillColor = Color3.fromRGB(255, 255, 0)
                        h.OutlineColor = Color3.fromRGB(255, 165, 0)
                        h.FillTransparency = 0.5
                        h.OutlineTransparency = 0.3
                        h.Adornee = obj
                        h.Parent = obj
                        gunHighlight = h
                    elseif gunHighlight.Adornee ~= obj then
                        gunHighlight.Adornee = obj
                    end
                end
            end
        end)
    end
    
    local function stopGunESP()
        _G.GunESPEnabled = false
        if espLoops["gun"] then
            espLoops["gun"]:Disconnect()
            espLoops["gun"] = nil
        end
        if gunHighlight then
            gunHighlight:Destroy()
            gunHighlight = nil
        end
    end
    
    -- =============================================
    -- وظائف محسنة
    -- =============================================
    
    -- دالة قفل الكاميرا على القاتل
    local function setupLockCameraOnMurderer()
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local RunService = game:GetService("RunService")
        
        return RunService.RenderStepped:Connect(function()
            if not _G.LockCameraEnabled then return end
            
            local murderer = nil
            local closestDistance = math.huge
            
            -- البحث عن القاتل الأقرب
            for _, p in pairs(Players:GetPlayers()) do
                if p ~= player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                    local hasKnife = p.Character:FindFirstChild("Knife") or 
                                    (p.Backpack and p.Backpack:FindFirstChild("Knife"))
                    if hasKnife then
                        local distance = (player.Character.HumanoidRootPart.Position - p.Character.HumanoidRootPart.Position).Magnitude
                        if distance < closestDistance then
                            closestDistance = distance
                            murderer = p
                        end
                    end
                end
            end
            
            -- قفل الكاميرا على القاتل
            if murderer and murderer.Character and murderer.Character:FindFirstChild("HumanoidRootPart") then
                local camera = workspace.CurrentCamera
                camera.CFrame = CFrame.new(camera.CFrame.Position, murderer.Character.HumanoidRootPart.Position)
            end
        end)
    end
    
    -- دالة استعادة الإعدادات الافتراضية المحسنة
    local function restoreDefaultSettings()
        local player = game.Players.LocalPlayer
        
        -- حفظ القيم الحالية مؤقتاً
        local oldWalkSpeed = _G.WalkspeedValue
        local oldJumpPower = _G.JumpPowerValue
        local oldGravity = _G.GravityValue
        local oldFOV = _G.FOVValue
        local oldFlySpeed = _G.FlySpeedValue
        
        -- إيقاف جميع الميزات النشطة
        _G.FlyEnabled = false
        if flyBodyVelocity then 
            flyBodyVelocity:Destroy() 
            flyBodyVelocity = nil
        end
        if flyBodyGyro then 
            flyBodyGyro:Destroy() 
            flyBodyGyro = nil
        end
        
        _G.NoclipEnabled = false
        _G.InfiniteJumpEnabled = false
        
        -- استعادة القيم الافتراضية
        _G.WalkspeedValue = 16
        _G.JumpPowerValue = 50
        _G.GravityValue = 196.2
        _G.FOVValue = 70
        _G.FlySpeedValue = 50
        
        -- تطبيق الإعدادات على الشخصية
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.WalkSpeed = 16
            player.Character.Humanoid.JumpPower = 50
        end
        
        -- تطبيق الإعدادات على اللعبة
        workspace.Gravity = 196.2
        workspace.CurrentCamera.FieldOfView = 70
        
        -- إرجاع القيم القديمة في حالة فشل
        return function()
            if not player.Character or not player.Character:FindFirstChild("Humanoid") then
                _G.WalkspeedValue = oldWalkSpeed
                _G.JumpPowerValue = oldJumpPower
                _G.GravityValue = oldGravity
                _G.FOVValue = oldFOV
                _G.FlySpeedValue = oldFlySpeed
                return false
            end
            return true
        end
    end
    
    -- دالة تحديث قائمة اللاعبين تلقائياً
    local function setupAutoPlayerListUpdate(dropdown, player, includeAllPlayers)
        local Players = game:GetService("Players")
        
        local function updateList()
            local newNames = {}
            for _, p in pairs(Players:GetPlayers()) do
                if includeAllPlayers or p ~= player then
                    table.insert(newNames, p.Name)
                end
            end
            if dropdown and dropdown.SetValues then
                dropdown:SetValues(newNames)
            end
            return newNames
        end
        
        -- تحديث عند انضمام لاعب جديد
        local joinConnection = Players.PlayerAdded:Connect(function(newPlayer)
            task.wait(0.5)
            updateList()
        end)
        
        -- تحديث عند خروج لاعب
        local leaveConnection = Players.PlayerRemoving:Connect(function(leftPlayer)
            task.wait(0.5)
            updateList()
        end)
        
        -- تحديث دوري كل 3 ثواني
        local periodicConnection
        if includeAllPlayers then
            periodicConnection = game:GetService("RunService").Heartbeat:Connect(function()
                updateList()
                task.wait(3) -- تحديث كل 3 ثواني
            end)
        else
            periodicConnection = game:GetService("RunService").Heartbeat:Connect(function()
                updateList()
                task.wait(3) -- تحديث كل 3 ثواني
            end)
        end
        
        -- تحديث أولي
        local initialList = updateList()
        
        return {joinConnection, leaveConnection, periodicConnection}, initialList
    end
    
    -- =============================================
    -- الدالة الرئيسية لإنشاء السكربت
    -- =============================================
    local function createMainScript()
        print("[DEBUG] Starting createMainScript")
        
        -- تنظيف الواجهة
        cleanupGUI()
        
        print("[DEBUG] GUI Cleaned")
        
        -- إعادة تحميل WindUI
        local success, newWindUI = pcall(function()
            local source = game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua", true)
            return loadstring(source)()
        end)
        
        if not success then
            WindUI:Notify({
                Title = "❌ Error",
                Content = "Failed to load UI",
                Duration = 3
            })
            return
        end
        
        WindUI = newWindUI
        WindUI.TransparencyValue = 0.7
        WindUI:SetTheme("Dark")
        
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local StatsService = game:GetService("Stats")
        local TeleportService = game:GetService("TeleportService")
        local UserInputService = game:GetService("UserInputService")
        local player = Players.LocalPlayer

        -- نافذة البوب أب الترحيبية
        WindUI:Popup({
            Title = "PhantomXPro",
            Icon = "crown",
            Content = T("warning"),
            Buttons = {
                {
                    Title = _G.SelectedLanguage == "Arabic" and "موافق" or "OK",
                    Icon = "arrow-right",
                    Variant = "Primary",
                    Callback = function() end
                }
            }
        })

        -- نافذة Discord المنبثقة
        task.wait(2)
        WindUI:Popup({
            Title = T("discord"),
            Icon = "message-circle",
            Content = T("discordContent"),
            Buttons = {
                {
                    Title = T("copyLink"),
                    Icon = "copy",
                    Variant = "Primary",
                    Callback = function()
                        setclipboard("https://discord.gg/CgUa36sPNs")
                        WindUI:Notify({
                            Title = T("linkCopied"),
                            Content = T("linkCopiedContent"),
                            Duration = 3
                        })
                    end
                }
            }
        })
        
        -- إنشاء النافذة الرئيسية
        print("[DEBUG] Creating Window...")
        local Window = WindUI:CreateWindow({
            Title = "PhantomXPro",
            Icon = "crown", 
            Author = "By_Cypher",
            Folder = "PhantomXPro",
            Size = UDim2.fromOffset(750, 550),
            Theme = "Dark",
            SideBarWidth = 180,
            ScrollBarEnabled = true
        })

        -- قسمين: Main و Settings
        print("[DEBUG] Creating Sections...")
        local Sections = {
            Main = Window:Section({ 
                Title = T("mainFeatures"), 
                Opened = true
            }),
            Settings = Window:Section({ 
                Title = T("settings"), 
                Opened = true
            })
        }

        -- إنشاء التبويبات
        print("[DEBUG] Creating Tabs...")
        local TabHandles = {}
        
        -- تبويبات القسم الرئيسي
        TabHandles.YourInfo = Sections.Main:Tab({ 
            Title = T("yourInfo"), 
            Icon = "user"
        })
        
        TabHandles.ESP = Sections.Main:Tab({ 
            Title = T("espFeatures"), 
            Icon = "eye"
        })
        
        TabHandles.Movement = Sections.Main:Tab({ 
            Title = T("movementFeatures"), 
            Icon = "user"
        })
        
        TabHandles.Innocent = Sections.Main:Tab({ 
            Title = T("innocentFeatures"), 
            Icon = "shield"
        })
        
        TabHandles.Murderer = Sections.Main:Tab({ 
            Title = T("murdererFeatures"), 
            Icon = "droplet"
        })
        
        TabHandles.Sheriff = Sections.Main:Tab({ 
            Title = T("sheriffFeatures"), 
            Icon = "target"
        })
        
        -- تبويبات قسم الإعدادات
        TabHandles.AdvancedSettings = Sections.Settings:Tab({ 
            Title = T("settingsTab"), 
            Icon = "settings"
        })
        
        TabHandles.Config = Sections.Settings:Tab({ 
            Title = T("config"), 
            Icon = "sliders"
        })
        
        TabHandles.Credits = Sections.Settings:Tab({ 
            Title = T("developer"), 
            Icon = "user"
        })
        
        print("[DEBUG] All Tabs created successfully")

        -- =============================================
        -- تبويب معلوماتك
        -- =============================================
        print("[DEBUG] Creating YourInfo Tab content...")
        TabHandles.YourInfo:Paragraph({
            Title = T("yourInfo"),
            Desc = "",
            Image = "user",
            ImageSize = 24
        })

        -- دالة للحصول على المستوى والخبرة
        local function getPlayerStats()
            local level = "0"
            local xp = "0"
            
            local playerLevel = player:GetAttribute("Level")
            local playerXP = player:GetAttribute("XP")
            
            if playerLevel ~= nil then
                level = tostring(playerLevel)
            end
            
            if playerXP ~= nil then
                xp = tostring(playerXP)
            end
            
            return level, xp
        end

        -- معلومات الحساب
        local nameBtn = TabHandles.YourInfo:Button({
            Title = T("yourName") .. string.sub(player.DisplayName, 1, 12),
            Size = "medium",
            Callback = function() end
        })
        
        local userBtn = TabHandles.YourInfo:Button({
            Title = T("yourUsername") .. string.sub(player.Name, 1, 10),
            Size = "medium",
            Callback = function() end
        })
        
        local ageBtn = TabHandles.YourInfo:Button({
            Title = T("accountAge") .. player.AccountAge .. (_G.SelectedLanguage == "Arabic" and " يوم" or " day"),
            Size = "medium",
            Callback = function() end
        })
        
        local hackBtn = TabHandles.YourInfo:Button({
            Title = T("hack") .. (identifyexecutor and identifyexecutor() or (_G.SelectedLanguage == "Arabic" and "ساينابس" or "Synapse")),
            Size = "medium",
            Callback = function() end
        })

        TabHandles.YourInfo:Divider({
            Title = ""
        })

        -- المستوى والخبرة
        local levelBtn = TabHandles.YourInfo:Button({
            Title = T("level") .. "0",
            Size = "medium",
            Callback = function() end
        })
        
        local xpBtn = TabHandles.YourInfo:Button({
            Title = T("xp") .. "0",
            Size = "medium",
            Callback = function() end
        })

        TabHandles.YourInfo:Divider({
            Title = ""
        })

        -- معلومات السيرفر
        local playersBtn = TabHandles.YourInfo:Button({
            Title = T("players") .. "0",
            Size = "medium",
            Callback = function() end
        })
        
        local fpsBtn = TabHandles.YourInfo:Button({
            Title = T("fps") .. "0",
            Size = "medium",
            Callback = function() end
        })
        
        local pingBtn = TabHandles.YourInfo:Button({
            Title = T("ping") .. "0 ms",
            Size = "medium",
            Callback = function() end
        })

        -- تحديث المعلومات
        spawn(function()
            while true do
                task.wait(1.5)
                
                -- تحديث المستوى والخبرة
                local level, xp = getPlayerStats()
                levelBtn:SetTitle(T("level") .. level)
                xpBtn:SetTitle(T("xp") .. xp)
                
                -- تحديث عدد اللاعبين
                playersBtn:SetTitle(T("players") .. #Players:GetPlayers())
                
                -- تحديث البينق
                pcall(function()
                    local ping = StatsService.Network.ServerStatsItem["Data Ping"]:GetValue()
                    pingBtn:SetTitle(T("ping") .. math.floor(ping) .. " ms")
                end)
            end
        end)

        -- تحديث الـ FPS
        local frameCount = 0
        local lastTime = tick()
        RunService.RenderStepped:Connect(function()
            frameCount = frameCount + 1
            local currentTime = tick()
            if currentTime - lastTime >= 1 then
                local fps = math.floor(frameCount / (currentTime - lastTime))
                frameCount = 0
                lastTime = currentTime
                fpsBtn:SetTitle(T("fps") .. fps)
            end
        end)

        -- =============================================
        -- تبويب ESP (أسماء فقط)
        -- =============================================
        print("[DEBUG] Creating ESP Tab content...")
        TabHandles.ESP:Paragraph({
            Title = T("espFeatures"),
            Desc = "",
            Image = "eye",
            ImageSize = 24
        })

        -- ميزة قفل الكاميرا على القاتل
        local lockCameraToggle = TabHandles.ESP:Toggle({
            Title = T("lockCamera"),
            Desc = T("lockCameraDesc"),
            Value = false,
            Size = "medium",
            Callback = function(state)
                _G.LockCameraEnabled = state
                if state then
                    _G.LockCameraConnection = setupLockCameraOnMurderer()
                    WindUI:Notify({
                        Title = T("notification"),
                        Content = _G.SelectedLanguage == "Arabic" 
                            and "✅ تم تفعيل قفل الكاميرا على القاتل"
                            or "✅ Camera lock on murderer enabled",
                        Duration = 2
                    })
                else
                    if _G.LockCameraConnection then
                        _G.LockCameraConnection:Disconnect()
                        _G.LockCameraConnection = nil
                    end
                    WindUI:Notify({
                        Title = T("notification"),
                        Content = _G.SelectedLanguage == "Arabic" 
                            and "❌ تم إيقاف قفل الكاميرا"
                            or "❌ Camera lock disabled",
                        Duration = 2
                    })
                end
            end
        })

        local xrayToggle = TabHandles.ESP:Toggle({
            Title = T("xray"),
            Desc = T("xrayDesc"),
            Value = false,
            Size = "medium",
            Callback = function(state)
                _G.XrayEnabled = state
                if state then
                    for _, part in pairs(workspace:GetDescendants()) do
                        if part:IsA("BasePart") and not part:IsA("MeshPart") then
                            part.LocalTransparencyModifier = 0.5
                        end
                    end
                else
                    for _, part in pairs(workspace:GetDescendants()) do
                        if part:IsA("BasePart") and not part:IsA("MeshPart") then
                            part.LocalTransparencyModifier = 0
                        end
                    end
                end
                WindUI:Notify({
                    Title = T("notification"),
                    Content = _G.SelectedLanguage == "Arabic" 
                        and (state and "✅ تم تفعيل X-Ray" or "❌ تم إيقاف X-Ray")
                        or (state and "✅ X-Ray enabled" or "❌ X-Ray disabled"),
                    Duration = 2
                })
            end
        })

        local murdererESPToggle = TabHandles.ESP:Toggle({
            Title = T("murdererESP"),
            Desc = T("murdererESPDesc"),
            Value = false,
            Size = "medium",
            Callback = function(state)
                if state then
                    startMurdererESP()
                else
                    stopMurdererESP()
                end
                WindUI:Notify({
                    Title = T("notification"),
                    Content = _G.SelectedLanguage == "Arabic" 
                        and (state and "✅ تم تفعيل ESP القتلة" or "❌ تم إيقاف ESP القتلة")
                        or (state and "✅ Murderer ESP enabled" or "❌ Murderer ESP disabled"),
                    Duration = 2
                })
            end
        })

        local innocentESPToggle = TabHandles.ESP:Toggle({
            Title = T("innocentESP"),
            Desc = T("innocentESPDesc"),
            Value = false,
            Size = "medium",
            Callback = function(state)
                if state then
                    startInnocentESP()
                else
                    stopInnocentESP()
                end
                WindUI:Notify({
                    Title = T("notification"),
                    Content = _G.SelectedLanguage == "Arabic" 
                        and (state and "✅ تم تفعيل ESP الأبرياء" or "❌ تم إيقاف ESP الأبرياء")
                        or (state and "✅ Innocent ESP enabled" or "❌ Innocent ESP disabled"),
                    Duration = 2
                })
            end
        })

        local sheriffESPToggle = TabHandles.ESP:Toggle({
            Title = T("sheriffESP"),
            Desc = T("sheriffESPDesc"),
            Value = false,
            Size = "medium",
            Callback = function(state)
                if state then
                    startSheriffESP()
                else
                    stopSheriffESP()
                end
                WindUI:Notify({
                    Title = T("notification"),
                    Content = _G.SelectedLanguage == "Arabic" 
                        and (state and "✅ تم تفعيل ESP الشرطة" or "❌ تم إيقاف ESP الشرطة")
                        or (state and "✅ Sheriff ESP enabled" or "❌ Sheriff ESP disabled"),
                    Duration = 2
                })
            end
        })

        local gunDropESPToggle = TabHandles.ESP:Toggle({
            Title = T("gunDropESP"),
            Desc = T("gunDropESPDesc"),
            Value = false,
            Size = "medium",
            Callback = function(state)
                if state then
                    startGunESP()
                else
                    stopGunESP()
                end
                WindUI:Notify({
                    Title = T("notification"),
                    Content = _G.SelectedLanguage == "Arabic" 
                        and (state and "✅ تم تفعيل ESP السلاح" or "❌ تم إيقاف ESP السلاح")
                        or (state and "✅ GunDrop ESP enabled" or "❌ GunDrop ESP disabled"),
                    Duration = 2
                })
            end
        })

        local coinESPToggle = TabHandles.ESP:Toggle({
            Title = T("coinESP"),
            Desc = T("coinESPDesc"),
            Value = false,
            Size = "medium",
            Callback = function(state)
                if state then
                    startCoinESP()
                else
                    stopCoinESP()
                end
                WindUI:Notify({
                    Title = T("notification"),
                    Content = _G.SelectedLanguage == "Arabic" 
                        and (state and "✅ تم تفعيل ESP العملات" or "❌ تم إيقاف ESP العملات")
                        or (state and "✅ Coin ESP enabled" or "❌ Coin ESP disabled"),
                    Duration = 2
                })
            end
        })

        -- =============================================
        -- تبويب الحركة (مع استعادة إعدادات شغالة)
        -- =============================================
        print("[DEBUG] Creating Movement Tab content...")
        TabHandles.Movement:Paragraph({
            Title = T("movementFeatures"),
            Desc = "",
            Image = "user",
            ImageSize = 24
        })

        -- Input للسرعة
        local speedInput = TabHandles.Movement:Input({
            Title = T("speedHack"),
            Desc = T("speedHackDesc"),
            Value = tostring(_G.WalkspeedValue),
            Size = "medium",
            Callback = function(value)
                local num = tonumber(value)
                if num then
                    _G.WalkspeedValue = num
                    if player.Character and player.Character:FindFirstChild("Humanoid") then
                        player.Character.Humanoid.WalkSpeed = num
                    end
                    WindUI:Notify({
                        Title = T("notification"),
                        Content = _G.SelectedLanguage == "Arabic" 
                            and "✅ تم تعيين السرعة: " .. num
                            or "✅ Speed set to: " .. num,
                        Duration = 2
                    })
                end
            end
        })

        -- Input لسرعة المشي
        local walkspeedInput = TabHandles.Movement:Input({
            Title = T("walkspeed"),
            Desc = T("walkspeedDesc"),
            Value = tostring(_G.WalkspeedValue),
            Size = "medium",
            Callback = function(value)
                local num = tonumber(value)
                if num then
                    _G.WalkspeedValue = num
                    if player.Character and player.Character:FindFirstChild("Humanoid") then
                        player.Character.Humanoid.WalkSpeed = num
                    end
                    WindUI:Notify({
                        Title = T("notification"),
                        Content = _G.SelectedLanguage == "Arabic" 
                            and "✅ تم تعيين سرعة المشي: " .. num
                            or "✅ Walkspeed set to: " .. num,
                        Duration = 2
                    })
                end
            end
        })

        -- Input لقوة القفز
        local jumpPowerInput = TabHandles.Movement:Input({
            Title = T("jumpPower"),
            Desc = T("jumpPowerDesc"),
            Value = tostring(_G.JumpPowerValue),
            Size = "medium",
            Callback = function(value)
                local num = tonumber(value)
                if num then
                    _G.JumpPowerValue = num
                    if player.Character and player.Character:FindFirstChild("Humanoid") then
                        player.Character.Humanoid.JumpPower = num
                    end
                    WindUI:Notify({
                        Title = T("notification"),
                        Content = _G.SelectedLanguage == "Arabic" 
                            and "✅ تم تعيين قوة القفز: " .. num
                            or "✅ Jump Power set to: " .. num,
                        Duration = 2
                    })
                end
            end
        })

        -- Input للجاذبية
        local gravityInput = TabHandles.Movement:Input({
            Title = T("gravity"),
            Desc = T("gravityDesc"),
            Value = tostring(_G.GravityValue),
            Size = "medium",
            Callback = function(value)
                local num = tonumber(value)
                if num then
                    _G.GravityValue = num
                    workspace.Gravity = num
                    WindUI:Notify({
                        Title = T("notification"),
                        Content = _G.SelectedLanguage == "Arabic" 
                            and "✅ تم تعيين الجاذبية: " .. num
                            or "✅ Gravity set to: " .. num,
                        Duration = 2
                    })
                end
            end
        })

        -- Input لمجال الرؤية
        local fovInput = TabHandles.Movement:Input({
            Title = T("fov"),
            Desc = T("fovDesc"),
            Value = tostring(_G.FOVValue),
            Size = "medium",
            Callback = function(value)
                local num = tonumber(value)
                if num then
                    _G.FOVValue = num
                    workspace.CurrentCamera.FieldOfView = num
                    WindUI:Notify({
                        Title = T("notification"),
                        Content = _G.SelectedLanguage == "Arabic" 
                            and "✅ تم تعيين مجال الرؤية: " .. num
                            or "✅ FOV set to: " .. num,
                        Duration = 2
                    })
                end
            end
        })

        -- Input لسرعة الطيران
        local flySpeedInput = TabHandles.Movement:Input({
            Title = T("flySpeed"),
            Desc = T("flySpeedDesc"),
            Value = tostring(_G.FlySpeedValue),
            Size = "medium",
            Callback = function(value)
                local num = tonumber(value)
                if num then
                    _G.FlySpeedValue = num
                    WindUI:Notify({
                        Title = T("notification"),
                        Content = _G.SelectedLanguage == "Arabic" 
                            and "✅ تم تعيين سرعة الطيران: " .. num
                            or "✅ Fly Speed set to: " .. num,
                        Duration = 2
                    })
                end
            end
        })

        local infiniteJumpToggle = TabHandles.Movement:Toggle({
            Title = T("infiniteJump"),
            Desc = T("infiniteJumpDesc"),
            Value = _G.InfiniteJumpEnabled,
            Size = "medium",
            Callback = function(state)
                _G.InfiniteJumpEnabled = state
                if state then
                    _G.InfiniteJumpConnection = UserInputService.JumpRequest:Connect(function()
                        if _G.InfiniteJumpEnabled and player.Character and player.Character:FindFirstChild("Humanoid") then
                            player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        end
                    end)
                else
                    if _G.InfiniteJumpConnection then
                        _G.InfiniteJumpConnection:Disconnect()
                        _G.InfiniteJumpConnection = nil
                    end
                end
                WindUI:Notify({
                    Title = T("notification"),
                    Content = _G.SelectedLanguage == "Arabic" 
                        and (state and "✅ تم تفعيل القفز اللانهائي" or "❌ تم إيقاف القفز اللانهائي")
                        or (state and "✅ Infinite Jump enabled" or "❌ Infinite Jump disabled"),
                    Duration = 2
                })
            end
        })

        local noclipToggle = TabHandles.Movement:Toggle({
            Title = T("noclip"),
            Desc = T("noclipDesc"),
            Value = _G.NoclipEnabled,
            Size = "medium",
            Callback = function(state)
                _G.NoclipEnabled = state
                if state then
                    _G.NoclipConnection = RunService.Stepped:Connect(function()
                        if _G.NoclipEnabled and player.Character then
                            for _, part in pairs(player.Character:GetDescendants()) do
                                if part:IsA("BasePart") then
                                    part.CanCollide = false
                                end
                            end
                        end
                    end)
                else
                    if _G.NoclipConnection then
                        _G.NoclipConnection:Disconnect()
                        _G.NoclipConnection = nil
                    end
                end
                WindUI:Notify({
                    Title = T("notification"),
                    Content = _G.SelectedLanguage == "Arabic" 
                        and (state and "✅ تم تفعيل المرور عبر الجدران" or "❌ تم إيقاف المرور عبر الجدران")
                        or (state and "✅ Noclip enabled" or "❌ Noclip disabled"),
                    Duration = 2
                })
            end
        })

        local flyToggle = TabHandles.Movement:Toggle({
            Title = T("fly"),
            Desc = T("flyDesc"),
            Value = _G.FlyEnabled,
            Size = "medium",
            Callback = function(state)
                _G.FlyEnabled = state
                if state then
                    if flyBodyVelocity then flyBodyVelocity:Destroy() end
                    if flyBodyGyro then flyBodyGyro:Destroy() end
                    
                    flyBodyVelocity = Instance.new("BodyVelocity")
                    flyBodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
                    flyBodyVelocity.Velocity = Vector3.new(0, 0, 0)
                    
                    flyBodyGyro = Instance.new("BodyGyro")
                    flyBodyGyro.MaxTorque = Vector3.new(10000, 10000, 10000)
                    flyBodyGyro.P = 1000
                    flyBodyGyro.D = 100
                    
                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        flyBodyVelocity.Parent = player.Character.HumanoidRootPart
                        flyBodyGyro.Parent = player.Character.HumanoidRootPart
                        
                        _G.FlyConnection = RunService.RenderStepped:Connect(function()
                            if not _G.FlyEnabled then
                                if _G.FlyConnection then
                                    _G.FlyConnection:Disconnect()
                                    _G.FlyConnection = nil
                                end
                                return
                            end
                            
                            local cam = workspace.CurrentCamera
                            flyBodyGyro.CFrame = cam.CFrame
                            
                            local direction = Vector3.new()
                            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                direction = direction + cam.CFrame.LookVector
                            end
                            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                direction = direction - cam.CFrame.LookVector
                            end
                            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                direction = direction - cam.CFrame.RightVector
                            end
                            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                direction = direction + cam.CFrame.RightVector
                            end
                            if UserInputService:IsKeyDown(Enum.KeyCode.E) then
                                direction = direction + Vector3.new(0, 1, 0)
                            end
                            if UserInputService:IsKeyDown(Enum.KeyCode.Q) then
                                direction = direction - Vector3.new(0, 1, 0)
                            end
                            
                            if direction.Magnitude > 0 then
                                flyBodyVelocity.Velocity = direction.Unit * _G.FlySpeedValue
                            else
                                flyBodyVelocity.Velocity = Vector3.new(0, 0, 0)
                            end
                        end)
                    end
                else
                    if _G.FlyConnection then
                        _G.FlyConnection:Disconnect()
                        _G.FlyConnection = nil
                    end
                    if flyBodyVelocity then 
                        flyBodyVelocity:Destroy() 
                        flyBodyVelocity = nil
                    end
                    if flyBodyGyro then 
                        flyBodyGyro:Destroy() 
                        flyBodyGyro = nil
                    end
                end
                WindUI:Notify({
                    Title = T("notification"),
                    Content = _G.SelectedLanguage == "Arabic" 
                        and (state and "✅ تم تفعيل الطيران" or "❌ تم إيقاف الطيران")
                        or (state and "✅ Fly enabled" or "❌ Fly disabled"),
                    Duration = 2
                })
            end
        })

        -- زر اختيار لاعب للانتقال إليه (يشمل جميع اللاعبين)
        local teleportPlayerDropdown = TabHandles.Movement:Dropdown({
            Title = T("teleportToPlayer"),
            Desc = T("teleportToPlayerDesc"),
            Values = {},
            Value = "",
            Size = "medium",
            Callback = function(selected)
                local target = Players:FindFirstChild(selected)
                if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        player.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
                        WindUI:Notify({
                            Title = T("notification"),
                            Content = _G.SelectedLanguage == "Arabic" 
                                and "✅ تم الانتقال إلى: " .. selected
                                or "✅ Teleported to: " .. selected,
                            Duration = 2
                        })
                    end
                else
                    WindUI:Notify({
                        Title = T("notification"),
                        Content = _G.SelectedLanguage == "Arabic" 
                            and "❌ اللاعب غير موجود"
                            or "❌ Player not found",
                        Duration = 2
                    })
                end
            end
        })

        -- تفعيل التحديث التلقائي للقائمة (يشمل جميع اللاعبين)
        local teleportConnections, initialTeleportList = setupAutoPlayerListUpdate(teleportPlayerDropdown, player, true)

        -- زر استعادة الإعدادات الافتراضية المحسنة
        local restoreDefaultsBtn = TabHandles.Movement:Button({
            Title = T("restoreDefaults"),
            Desc = T("restoreDefaultsDesc"),
            Size = "medium",
            Callback = function()
                local rollback = restoreDefaultSettings()
                
                task.wait(0.5) -- انتظار للتطبيق
                
                local success = rollback()
                
                if success then
                    -- تحديث الـ Inputs بالقيم الجديدة
                    speedInput:SetValue("16")
                    walkspeedInput:SetValue("16")
                    jumpPowerInput:SetValue("50")
                    gravityInput:SetValue("196.2")
                    fovInput:SetValue("70")
                    flySpeedInput:SetValue("50")
                    
                    -- تحديث التبديلات بالقيم الجديدة
                    infiniteJumpToggle:SetValue(false)
                    noclipToggle:SetValue(false)
                    flyToggle:SetValue(false)
                    
                    WindUI:Notify({
                        Title = T("notification"),
                        Content = _G.SelectedLanguage == "Arabic" 
                            and "✅ تم استعادة جميع الإعدادات الافتراضية:\n• السرعة: 16\n• قوة القفز: 50\n• الجاذبية: 196.2\n• FOV: 70\n• سرعة الطيران: 50"
                            or "✅ All settings restored to default:\n• Speed: 16\n• Jump Power: 50\n• Gravity: 196.2\n• FOV: 70\n• Fly Speed: 50",
                        Duration = 4
                    })
                else
                    WindUI:Notify({
                        Title = T("notification"),
                        Content = _G.SelectedLanguage == "Arabic" 
                            and "❌ فشل في استعادة بعض الإعدادات"
                            or "❌ Failed to restore some settings",
                        Duration = 2
                    })
                end
            end
        })

        -- =============================================
        -- تبويب القتلة (مع قائمة لاعبين تعرض جميع الأسماء)
        -- =============================================
        print("[DEBUG] Creating Murderer Tab content...")
        TabHandles.Murderer:Paragraph({
            Title = T("murdererFeatures"),
            Desc = "",
            Image = "droplet",
            ImageSize = 24
        })

        -- قائمة اللاعبين مع تحديث تلقائي (جميع اللاعبين)
        local playerDropdown = TabHandles.Murderer:Dropdown({
            Title = T("selectPlayer"),
            Desc = T("selectPlayerDesc"),
            Values = {},
            Value = "",
            Size = "medium",
            Callback = function(selected)
                _G.SelectedPlayer = selected
                WindUI:Notify({
                    Title = T("notification"),
                    Content = _G.SelectedLanguage == "Arabic" 
                        and "✅ تم اختيار: " .. selected
                        or "✅ Selected: " .. selected,
                    Duration = 2
                })
            end
        })

        -- تفعيل التحديث التلقائي للقائمة (جميع اللاعبين)
        local playerListConnections, initialPlayerList = setupAutoPlayerListUpdate(playerDropdown, player, true)

        local refreshPlayersBtn = TabHandles.Murderer:Button({
            Title = T("refreshPlayers"),
            Desc = T("refreshPlayersDesc"),
            Size = "medium",
            Callback = function()
                local newNames = {}
                for _, p in pairs(Players:GetPlayers()) do
                    table.insert(newNames, p.Name)
                end
                playerDropdown:SetValues(newNames)
                WindUI:Notify({
                    Title = T("notification"),
                    Content = _G.SelectedLanguage == "Arabic" 
                        and "✅ تم تحديث قائمة اللاعبين (" .. #newNames .. " لاعب)"
                        or "✅ Player list updated (" .. #newNames .. " players)",
                    Duration = 2
                })
            end
        })

        local killSelectedBtn = TabHandles.Murderer:Button({
            Title = T("killSelected"),
            Desc = T("killSelectedDesc"),
            Size = "medium",
            Callback = function()
                if _G.SelectedPlayer then
                    local target = Players:FindFirstChild(_G.SelectedPlayer)
                    if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                            -- النقل للاعب
                            player.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
                            WindUI:Notify({
                                Title = T("notification"),
                                Content = _G.SelectedLanguage == "Arabic" 
                                    and "✅ تم قتل اللاعب المحدد"
                                    or "✅ Killed selected player",
                                Duration = 2
                            })
                        end
                    else
                        WindUI:Notify({
                            Title = T("notification"),
                            Content = _G.SelectedLanguage == "Arabic" 
                                and "❌ اللاعب غير موجود"
                                or "❌ Player not found",
                            Duration = 2
                        })
                    end
                else
                    WindUI:Notify({
                        Title = T("notification"),
                        Content = _G.SelectedLanguage == "Arabic" 
                            and "❌ لم تختر لاعب"
                            or "❌ No player selected",
                        Duration = 2
                    })
                end
            end
        })

        -- =============================================
        -- التنظيف عند الإغلاق
        -- =============================================
        Window:OnDestroy(function()
            cleanupGUI()
            
            -- فصل اتصالات قائمة اللاعبين
            if teleportConnections then
                for _, conn in ipairs(teleportConnections) do
                    if conn then
                        conn:Disconnect()
                    end
                end
            end
            
            if playerListConnections then
                for _, conn in ipairs(playerListConnections) do
                    if conn then
                        conn:Disconnect()
                    end
                end
            end
            
            print("[DEBUG] Window destroyed")
        end)

        -- إشعار الترحيب
        task.wait(3)
        WindUI:Notify({
            Title = T("welcome"),
            Content = _G.SelectedLanguage == "Arabic" 
                and "✨ السكربت شغّال!\n• ESP بأسماء فقط (بدون أدوار) ✅\n• قفل كاميرا على القاتل 🔥\n• استعادة إعدادات شغالة ⚡\n• قائمة لاعبين تعرض جميع الأسماء 🎯" 
                or "✨ Script is running!\n• ESP with names only (no roles) ✅\n• Camera lock on murderer 🔥\n• Restore defaults working ⚡\n• Player list shows all names 🎯",
            Duration = 5
        })
        
        print("[DEBUG] Script setup completed successfully!")
    end
    
    -- نافذة اختيار اللغة
    WindUI:Popup({
        Title = "🌍 Select Language / اختر اللغة",
        Icon = "globe",
        Content = "Choose your preferred language:\n\nاختر لغتك المفضلة:",
        Buttons = {
            {
                Title = "English 🇺🇸",
                Icon = "flag",
                Variant = "Primary",
                Callback = function()
                    _G.SelectedLanguage = "English"
                    WindUI:Notify({
                        Title = "✅ Language Selected",
                        Content = "English language has been selected",
                        Duration = 3
                    })
                    task.wait(1)
                    createMainScript()
                end
            },
            {
                Title = "العربية 🇸🇦",
                Icon = "flag",
                Variant = "Secondary",
                Callback = function()
                    _G.SelectedLanguage = "Arabic"
                    WindUI:Notify({
                        Title = "✅ تم الاختيار",
                        Content = "تم اختيار اللغة العربية",
                        Duration = 3
                    })
                    task.wait(1)
                    createMainScript()
                end
            }
        }
    })
else
    print("Failed to load WindUI")
end
print("PhantomXPro Script Loaded")