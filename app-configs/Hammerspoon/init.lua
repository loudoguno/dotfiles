local hyper = {"cmd", "alt", "ctrl", "shift"}

-- Integrate with Karabiner via vkurls
	hs.urlevent.bind("test1", function(eventName, params)
	  if params["someParam"] then
	    hs.alert.show(params["someParam"])
	    hs.alert.show("Hello World!")
	  end
	end)

-- Fancy configuration reloading with pathwatcher
	function reloadConfig(files)
	    doReload = false
	    for _,file in pairs(files) do
	        if file:sub(-4) == ".lua" then
	            doReload = true
	        end
	    end
	    if doReload then
	        hs.reload()
	    end
	end
	myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
	hs.alert.show("Config loaded")











