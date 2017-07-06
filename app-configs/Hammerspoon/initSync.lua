-- Move window left with setFrame
	hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame() -- colon syntax means we are calling one of the objects methods implicitly passing the object to the method as a self argument
