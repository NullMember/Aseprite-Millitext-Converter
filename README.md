# Aseprite-Militext-Converter
Aseprite scripts for converting strings to militext or militext image to human readable form

# Installation
Open Aseprite and follow File->Scripts->Open Scripts Folder then paste .lua files to root of this folder

# Usage

## toMilitext:
Run script (File->Scripts->toMilitext) then enter number of lines required. It will automatically create new dialog.
Write your text then press OK. If you want to scale up your militext image use Sprite->Sprite Size, enable lock ratio and multiply width or height by any **integer**.
Otherwise new image can contain different size of pixels and fromMilitext will not work properly. If you're going to scale up your militext please don't remove
white pixel in the 0, 0 location. This pixel used by fromMilitext script to determine pixel width and height.

## fromMilitext:
Open any militext image then run script (File->Scripts->fromMilitext). Script will convert militext image to human readable form automatically.
