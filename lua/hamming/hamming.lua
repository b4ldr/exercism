hamming = {}

function hamming.compute(a, b)
  local distance = 0
  for i = 1, (#a, #b):min do
    if a:byte(i) ~= b:byte(i) then
      distance = distance + 1
    end
  end
  return distance
end

return hamming
