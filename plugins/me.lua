do

local function run(msg, matches)
  if matches[1] == 'me' then
    if is_sudo(msg) then
	  send_document(get_receiver(msg), "./files/me/sudo.webp", ok_cb, false)
      return "انته البطور فديتك 🌝💔"
    elseif is_admin(msg) then
	  send_document(get_receiver(msg), "./files/me/admin.webp", ok_cb, false)
      return "انته البسؤول عن كروبات البوت 🌚💔"
    elseif is_owner(msg) then
	  send_document(get_receiver(msg), "./files/me/leader.webp", ok_cb, false)
      return "انته البشرف 🌝💔"
    elseif is_momod(msg) then
	  send_document(get_receiver(msg), "./files/me/moderator.webp", ok_cb, false)
      return "انته بجرد ادبن ليش فرحان 😕"
    else
	  send_document(get_receiver(msg), "./files/me/member.webp", ok_cb, false)
      return "نجب انته بجرد عضو 🌝💔"
    end
  end
end

return {
  patterns = {
    "^([Mm]e)$"
    },
  run = run
}
end

do

local function run(msg, matches)
if is_sudo(msg) then 
        local text = "✅- Your sudo bot".."\n".."🆔- id : "..msg.from.id.."\n".."♍️- Name : "..msg.from.first_name.."\n".."♑️- Username : @"..msg.from.username.."\n".."💟- Group Name  "..msg.to.title 
        return reply_msg(msg.id, text, ok_cb, false)
     end
if is_momod(msg) then 
        local text = "✅- Your admin Groups".."\n".."🆔- id : "..msg.from.id.."\n".."♍️- Name : "..msg.from.first_name.."\n".."♑️- Username : @"..msg.from.username.."\n".."💟- Group Name  "..msg.to.title
        return reply_msg(msg.id, text, ok_cb, false)
     end
if not is_momod(msg) then 
        local text = "✅- Your Members in Groups".."\n".."🆔- id : "..msg.from.id.."\n".."♍️- Name : "..msg.from.first_name.."\n".."♑️- Username : @"..msg.from.username.."\n".."💟- Group Name  "..msg.to.title
        return reply_msg(msg.id, text, ok_cb, false)
     end
if is_owner(msg) then 
        local text = "✅- Your owner in Groups".."\n".."🆔- id : "..msg.from.id.."\n".."♍️- Name : "..msg.from.first_name.."\n".."♑️- Username : @"..msg.from.username.."\n".."💟- Group Name  "..msg.to.title
        return reply_msg(msg.id, text, ok_cb, false)
     end
     end

return {  
  patterns = {
       "^([Mm][Ee])$",
  },
  run = run,
}

end