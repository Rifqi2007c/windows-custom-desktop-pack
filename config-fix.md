### remove these line if you have one monitor
```
  status-bar-2:
    screens: ['\\.\DISPLAY2'] 
    class_name: "yasb-bar"
    alignment:
      position: "top"
      center: false
    animation:
      enabled: true
      duration: 1000
    blur_effect:
      enabled: false
      acrylic: false
      dark_mode: false
      round_corners: false
      round_corners_type: "normal"
      border_color: "System"
    window_flags:
      always_on_top: false
      windows_app_bar: true
    dimensions:
      width: "100%"
      height: 28
    padding:
      top: 4
      left: 6
      bottom: 0
      right: 6
    widgets:
      left: ["home","komorebi_workspaces","komorebi_active_layout","active_window"]
      center: []
      right: ["clock","microphone","volume","power_menu"]
```
# wallpaper section
change it into your path to wallpaper folder
```
image_path: "C:\\Users\\rifqi\\Documents\\wall"
```
