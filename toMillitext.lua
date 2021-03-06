--
--
-- toMillitext.lua: Aseprite script for converting 
--         strings to millitext image.
--
--  Author: Malik Enes Safak
--   Email: e.maliksafak@gmail.com
--     Web: https://www.github.com/NullMember
-- License: MIT
--
--

local font = {	{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },

				{ 0xFF000000, 0xFF000000, 0xFF000000, 0xFF000000, 0xFF000000 },
				{ 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF000000, 0xFF00FF00 },
				{ 0xFFFF00FF, 0xFFFF00FF, 0xFF000000, 0xFF000000, 0xFF000000 },
				{ 0xFFFF00FF, 0xFFFFFFFF, 0xFFFF00FF, 0xFFFFFFFF, 0xFFFF00FF },
				{ 0xFFFFFF00, 0xFF00FFFF, 0xFFFFFF00, 0xFF00FFFF, 0xFF00FF00 },
				{ 0xFF0000FF, 0xFFFF0000, 0xFF00FF00, 0xFF0000FF, 0xFFFF0000 },
				{ 0xFF00FFFF, 0xFF00FFFF, 0xFFFFFFFF, 0xFFFF00FF, 0xFFFFFF00 },
				{ 0xFF00FF00, 0xFF00FF00, 0xFF000000, 0xFF000000, 0xFF000000 },
				{ 0xFFFF0000, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFFFF0000 },
				{ 0xFF0000FF, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF0000FF },
				{ 0xFFFF00FF, 0xFF00FF00, 0xFFFF00FF, 0xFF000000, 0xFF000000 },
				{ 0xFF000000, 0xFF00FF00, 0xFFFFFFFF, 0xFF00FF00, 0xFF000000 },
				{ 0xFF000000, 0xFF000000, 0xFF000000, 0xFF00FF00, 0xFF0000FF },
				{ 0xFF000000, 0xFF000000, 0xFFFFFFFF, 0xFF000000, 0xFF000000 },
				{ 0xFF000000, 0xFF000000, 0xFF000000, 0xFF000000, 0xFF00FF00 },
				{ 0xFFFF0000, 0xFFFF0000, 0xFF00FF00, 0xFF0000FF, 0xFF0000FF },
				{ 0xFF00FF00, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFF00FF00 },
				{ 0xFF00FF00, 0xFF00FFFF, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00 },
				{ 0xFFFFFFFF, 0xFFFF0000, 0xFFFFFFFF, 0xFF0000FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF0000, 0xFFFFFF00, 0xFFFF0000, 0xFFFFFFFF },
				{ 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF, 0xFFFF0000, 0xFFFF0000 },
				{ 0xFFFFFFFF, 0xFF0000FF, 0xFFFFFFFF, 0xFFFF0000, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFF0000FF, 0xFFFFFFFF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF0000, 0xFF00FF00, 0xFF0000FF, 0xFF0000FF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFFFFFF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFFFFFF, 0xFFFF0000, 0xFFFFFFFF },
				{ 0xFF000000, 0xFF00FF00, 0xFF000000, 0xFF00FF00, 0xFF000000 },
				{ 0xFF000000, 0xFF00FF00, 0xFF000000, 0xFF00FF00, 0xFF0000FF },
				{ 0xFFFF0000, 0xFF00FF00, 0xFF0000FF, 0xFF00FF00, 0xFFFF0000 },
				{ 0xFF000000, 0xFFFFFFFF, 0xFF000000, 0xFFFFFFFF, 0xFF000000 },
				{ 0xFF0000FF, 0xFF00FF00, 0xFFFF0000, 0xFF00FF00, 0xFF0000FF },
				{ 0xFFFFFFFF, 0xFFFF0000, 0xFF00FF00, 0xFF000000, 0xFF00FF00 },

				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFFFFFF, 0xFF0000FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF },
				{ 0xFF00FFFF, 0xFFFF00FF, 0xFF00FFFF, 0xFFFF00FF, 0xFF00FFFF },
				{ 0xFFFFFFFF, 0xFF0000FF, 0xFF0000FF, 0xFF0000FF, 0xFFFFFFFF },
				{ 0xFF00FFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFF00FFFF },
				{ 0xFFFFFFFF, 0xFF0000FF, 0xFFFFFFFF, 0xFF0000FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFF0000FF, 0xFFFFFFFF, 0xFF0000FF, 0xFF0000FF },
				{ 0xFFFFFFFF, 0xFF0000FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF },
				{ 0xFFFFFFFF, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFFFFFFFF },
				{ 0xFFFF0000, 0xFFFF0000, 0xFFFF0000, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFF00FF, 0xFFFF00FF, 0xFF00FFFF, 0xFFFF00FF, 0xFFFF00FF },
				{ 0xFF0000FF, 0xFF0000FF, 0xFF0000FF, 0xFF0000FF, 0xFFFFFFFF },
				{ 0xFFFF00FF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFFFFFF, 0xFF0000FF, 0xFF0000FF },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFF00FFFF, 0xFFFFFF00 },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFFFFFF, 0xFF00FFFF, 0xFFFF00FF },
				{ 0xFFFFFF00, 0xFF0000FF, 0xFFFFFFFF, 0xFFFF0000, 0xFF00FFFF },
				{ 0xFFFFFFFF, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00 },
				{ 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF, 0xFF00FF00, 0xFF00FF00 },
				{ 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFF00FF },
				{ 0xFFFF00FF, 0xFFFF00FF, 0xFF00FF00, 0xFFFF00FF, 0xFFFF00FF },
				{ 0xFFFF00FF, 0xFFFF00FF, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00 },
				{ 0xFFFFFFFF, 0xFFFF0000, 0xFF00FF00, 0xFF0000FF, 0xFFFFFFFF },
				{ 0xFFFFFF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFFFFFF00 },
				{ 0xFF000000, 0xFF0000FF, 0xFF00FF00, 0xFFFF0000, 0xFF000000 },
				{ 0xFF00FFFF, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FFFF },
				{ 0xFF00FF00, 0xFFFF00FF, 0xFF000000, 0xFF000000, 0xFF000000 },
				{ 0xFF000000, 0xFF000000, 0xFF000000, 0xFF000000, 0xFFFFFFFF },

				{ 0xFF0000FF, 0xFF00FFFF, 0xFF000000, 0xFF000000, 0xFF000000 },
				{ 0xFF000000, 0xFFFFFFFF, 0xFFFFFF00, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFF0000FF, 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFF000000, 0xFFFFFFFF, 0xFF0000FF, 0xFF0000FF, 0xFFFFFFFF },
				{ 0xFFFF0000, 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFF000000, 0xFFFFFFFF, 0xFFFF00FF, 0xFF00FFFF, 0xFFFFFFFF },
				{ 0xFFFFFF00, 0xFF00FF00, 0xFFFFFFFF, 0xFF00FF00, 0xFF00FF00 },
				{ 0xFFFFFFFF, 0xFFFF00FF, 0xFFFFFFFF, 0xFFFF0000, 0xFFFFFF00 },
				{ 0xFF0000FF, 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF },
				{ 0xFF00FF00, 0xFF000000, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00 },
				{ 0xFFFF0000, 0xFF000000, 0xFFFF0000, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFF0000FF, 0xFFFF00FF, 0xFFFF00FF, 0xFF00FFFF, 0xFFFF00FF },
				{ 0xFF00FFFF, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFFFFFFFF },
				{ 0xFF000000, 0xFFFF00FF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFF00FF },
				{ 0xFF000000, 0xFF00FFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF },
				{ 0xFF000000, 0xFFFFFFFF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFF000000, 0xFFFFFFFF, 0xFFFF00FF, 0xFFFFFFFF, 0xFF0000FF },
				{ 0xFF000000, 0xFFFFFFFF, 0xFFFF00FF, 0xFFFFFFFF, 0xFFFF0000 },
				{ 0xFF000000, 0xFFFFFFFF, 0xFF0000FF, 0xFF0000FF, 0xFF0000FF },
				{ 0xFF000000, 0xFFFFFFFF, 0xFF00FFFF, 0xFFFFFF00, 0xFFFFFFFF },
				{ 0xFF00FF00, 0xFFFFFFFF, 0xFF00FF00, 0xFF00FF00, 0xFFFFFF00 },
				{ 0xFF000000, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFFFFFF },
				{ 0xFF000000, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFF00FF00 },
				{ 0xFF000000, 0xFFFF00FF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF },
				{ 0xFF000000, 0xFFFF00FF, 0xFF00FF00, 0xFF00FF00, 0xFFFF00FF },
				{ 0xFF000000, 0xFFFF00FF, 0xFFFFFFFF, 0xFFFF0000, 0xFFFFFF00 },
				{ 0xFF000000, 0xFFFFFFFF, 0xFFFFFF00, 0xFF00FFFF, 0xFFFFFFFF },
				{ 0xFFFFFF00, 0xFF00FF00, 0xFF00FFFF, 0xFF00FF00, 0xFFFFFF00 },
				{ 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00, 0xFF00FF00 },
				{ 0xFF00FFFF, 0xFF00FF00, 0xFFFFFF00, 0xFF00FF00, 0xFF00FFFF },
				{ 0xFFFFFF00, 0xFF00FFFF, 0xFF000000, 0xFF000000, 0xFF000000 },
				{ 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF }
}

cH = 5
cW = 1
bH = cH + 1
bW = cW + 1

linesdialog = Dialog():number{ id="totallines", label="Total Lines:", text="" , decimals = integer}
					  :button{ id="ok", text="OK" }
					  :button{ id="cancel", text="Cancel" }
					  :show().data


if linesdialog.ok then
	totallines = linesdialog.totallines
	if totallines < 1 or totallines > 32 then
		print("Lines must between 1 and 32")
		return
	end
else
	return
end

text = Dialog()

for i = 1, totallines do
	text:entry{id = "text"..tostring(i), label = "Line "..tostring(i), text = ""}
end

text:button{ id="ok", text="OK" }
text:button{ id="cancel", text="Cancel" }
text:show()
data = text.data

if data.ok then
	local height = totallines
	local width = 0
	for i = 1, height do
		local length = _G["data"]["text"..tostring(i)]:len()
		if width < length then
			width = length
		end
	end
	if width < 1 then
		print("Please insert some text")
		return
	end
	
	local output = Image(width * bW, height * bH)
	output:clear(Color{r = 0, g = 0, b = 0, a = 255})
	output:drawPixel(0, 0, 0xFFFFFFFF)
	for i = 1, height do
		local text = _G["data"]["text"..tostring(i)]
		local length = text:len()
		for j = 1, length do
			local ascii = string.byte(text:sub(j, j))
			local character = font[ascii + 1]
			for k = 1, cH do
				output:drawPixel((j * 2) - 1, ((i - 1) * bH) + k, character[k])
			end
		end
	end
	
	local newsprite = Sprite(width * 2, height * 6)
	newsprite:newCel(newsprite.layers[1], newsprite.frames[1], output, Point(0, 0))
end