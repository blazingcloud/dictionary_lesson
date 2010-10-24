class Dictionary < Array
 def words; self; end
 def add(word); self << word; end
 def find(word); grep(/#{word}/); end
end

