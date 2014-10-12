bob = {}

function bob.hey(what)
  local answer = 'Whatever'
  if what:find('^%s*$') then
    answer = 'Fine, be that way.'
  elseif what:upper() == what then
    answer = 'Whoa, chill out!'
  elseif what:sub(-1) == '?' then
    answer = 'Sure'
  end
  return answer
end

return bob
