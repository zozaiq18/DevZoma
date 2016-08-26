do 
function run(msg, matches) 
local reply_id = msg['id'] 

local info = '♉️name:' ..(msg.from.first_name or "N/A")..'\n'..'♉️listname:'..(msg.from.last_name or "N/A" )..'\n'..'🆔:'..msg.from.id..'\n'..'♉️username: @'..(msg.from.username or "N/A" )..'\n'..'🆔group:'..msg.to.id..'\n'..'📱number:'..(msg.from.phone or "N/A"  )..'\n'..'♉️group name:'..msg.to.title 

reply_msg(reply_id, info, ok_cb, false) 
end 

return { 
patterns = { 
"^info" 
}, 
run = run 
} 

end