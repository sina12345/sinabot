do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user = 147237496

  if matches[1] == "support" then
    user = 'user#id'..user
  end

  -- The message must come from a chat group
  if msg.to.type == 'chat' then
    local chat = 'chat#id'..msg.to.id
    chat_add_user(chat, user, callback, false)
    return "سازنده وارد گروه شد بدون هیچ حرفی مشکل خود را بگویید"
  else 
    return 'در گروه است!'
  end

end

return {
  description = "support", 
  patterns = {
    "^[!/](support)$"
  }, 
  run = run 
}

end
--Copyright; @kiava_ir
--کپی بدون ذکر منبع حرام است
