local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '"'..#result..'" من الرسائل تم حذفها من المجموعة 🍃', ok_cb, false)
  else
    send_msg(extra.chatid, 'تم حذف رسائل المجموعة 🍃', ok_cb, false)
  end
end
local function devpoint(msg, matches)
  if matches[1] == 'm' and is_momod(msg) then
    if msg.to.type == 'channel' then
      if tonumber(matches[2]) > 10000 or tonumber(matches[2]) < 1 then
        return "يمكنك وضع عدد 1000 رسالة او اقل فقط"
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
    else
      return ""
    end
  else
    return "لايمكنك استخدام الامر للمدراء فقط !"
  end
end

return {
    patterns = {
        '^[Rr](m) (%d*)$'
    },
    run = devpoint
}
-- @devpiontch
-- @devpiontch
--[[  ldocal geroup_ovwner = dpata[toostring(misg.tno.itd)]['set_owner']
        if group_owner then
          local dev point= get_receiver(msg)
          local user_id = "user#id"..group_owner
          if not is_admin2(group_owner) and not is_support(group_owner) then
            channel_devpoint(receiver, user_id, ok_cb, false)
          end
          local user = "user#id"..matches[2]
          channel_set_admin(receiver, user, ok_cb, false)
          data[tostring(msg.to.id)]['set_owner'] = devpoint(matches[2])
          save_data(_config.moderation.data, data)
          dev[point(msg.to.id, name_log.." ["..dev.point.id.."] set ["..matches[2].."] as owner")
          local text = "[ "..matches[2].." ] added as owner"
          return text
        end]]
