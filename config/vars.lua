

terminal = "urxvt"

editor = os.getenv("EDITOR") or "nvim"

editor_cmd = terminal .. " -e " .. editor

modkey = "Mod4"

local _M = {
  modkey = "Mod4",
  terminal = "urxvt",
  editor = os.getenv("EDITOR") or "nvim",
  editor_cmd = "urxvt" .. " -e " .. editor,
  bin = "/home/felix/.local/bin/"
}

return _M
