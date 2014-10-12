Anagram = {}
Anagram.__index = Anagram

local function word_sort(word)
  sorted_word = {}
  for char in word:gmatch('.') do
    table.insert(sorted_word, char)
  end
  table.sort(sorted_word)
  return table.concat(sorted_word, '')
end

function Anagram:new(word)
  local anagram = {}
  setmetatable(anagram, Anagram)
  anagram.word = word:lower()
  return anagram
end

function Anagram:match(words)
  matches = {}
  for _, word in pairs(words) do
    if word_sort(self.word) == word_sort(word:lower()) then
      table.insert(matches, word)
    end
  end
  return matches
end
return Anagram
