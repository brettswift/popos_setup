# Set up a new popos development environment

## I'm feeling lucky (and trusting!)

`curl -k https://raw.githubusercontent.com/brettswift/popos_setup/master/run.sh | bash`

## Run Manually

Clone this repo and run: 
`./install.sh`

## Manual setup after automation

* install visual studo code from the web download
* dotfiles

### Configure xorg so screen brightness buttons work

```
$cat /etc/X11/xorg.conf
Section "Device"
        Identifier  "Intel Graphics" 
        Driver      "intel"
        Option      "Backlight"  "intel_backlight"
EndSection
```

### TODO:

* automate install of superpaper

