local command = 'print <text>'
local doc = [[```
/perint <text>
Enter the command along with the text.
```]]

local triggers = {
	'^/print[@'..bot.username..']*'
}

local action = function(msg)

	local input = msg.text:input()

	if input then
		sendMessage(msg.chat.id, latcyr(input))
	else
		sendMessage(msg.chat.id, doc, true, msg.message_id, true)
	end

end

return {
	action = action,
	triggers = triggers,
	doc = doc,
	command = command
}
