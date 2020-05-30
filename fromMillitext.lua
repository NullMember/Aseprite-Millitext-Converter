--
--
-- fromMillitext.lua: Aseprite script for converting 
--      millitext image to human readable form.
--
--  Author: Malik Enes Safak
--   Email: e.maliksafak@gmail.com
--     Web: https://www.github.com/NullMember
-- License: MIT
--
--

local img = app.activeImage
if not img then
	return app.alert("There is no active image")
end


if img.colorMode == ColorMode.RGB then
	pW = 1
	pH = 1
	if img:getPixel(0, 0) == 0xFFFFFFFF then
		local i = 0
		while img:getPixel(i, 0) == 0xFFFFFFFF do
			i = i + 1
		end
		pW = i
		i = 0
		while img:getPixel(0, i) == 0xFFFFFFFF do
			i = i + 1
		end
		pH = i
	end

	local output = Image(img.width * 3, img.height)
	local red = Image(pW, pH)
	local green = Image(pW, pH)
	local blue = Image(pW, pH)
	local black = Image(pW, pH)
	black:clear(0xFF000000)
	red:clear(0xFF0000FF)
	green:clear(0xFF00FF00)
	blue:clear(0xFFFF0000)
	output:clear(0xFF000000)
	local newsprite = Sprite(img.width * 3, img.height)
	
	for x = 0, img.width // pW do
		for y = 0, img.height // pH do
			local color = img:getPixel(x * pW, y * pH)
			if color & 0xFF > 0 then
				output:drawImage(red, Point((x * (pW * 3)) + (0 * pW), y * pH))
			else
				output:drawImage(black, Point((x * (pW * 3)) + (0 * pW), y * pH))
			end
			if color & 0xFF00 > 0 then
				output:drawImage(green, Point((x * (pW * 3)) + (1 * pW), y * pH))
			else
				output:drawImage(black, Point((x * (pW * 3)) + (1 * pW), y * pH))
			end
			if color & 0xFF0000 > 0 then
				output:drawImage(blue, Point((x * (pW * 3)) + (2 * pW), y * pH))
			else
				output:drawImage(black, Point((x * (pW * 3)) + (2 * pW), y * pH))
			end
		end
	end
	newsprite:newCel(newsprite.layers[1], newsprite.frames[1], output, Point(0, 0))
else
	return app.alert("Image must be RGB")
end