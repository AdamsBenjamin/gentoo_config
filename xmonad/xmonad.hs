import XMonad

import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP
import XMonad.Layout.Gaps
import XMonad.Layout.Spacing
import XMonad.Layout.ThreeColumns
import XMonad.Prompt
import XMonad.Prompt.Shell
import XMonad.Util.EZConfig
import XMonad.Util.Ungrab


myLayout = spacing 15 $ tiled ||| Mirror tiled ||| Full ||| threeCol
  where
    threeCol = ThreeColMid nmaster delta ratio
    tiled    = Tall nmaster delta ratio
    nmaster  = 1     -- Default number of master windows
    ratio    = 1/2   -- Default proportion of screen occupied by master
    delta    = 3/100 -- Resize increment


myKeybinds = [ ("M-S-l", spawn "xscreensaver-command -lock")
             , ("M-b", spawn "firefox-bin")
	     , ("M-p", spawn "rofi -show combi -modes combi -combi-modes \"window,drun,run\"")
             ]


myConfig = def
  { modMask    = mod4Mask  -- Rebind Mod to Super
  , layoutHook = myLayout  -- Use custom layouts
  , terminal = "alacritty"
  }
  `additionalKeysP` myKeybinds


main = xmonad .ewmhFullscreen . ewmh . xmobarProp $ myConfig
