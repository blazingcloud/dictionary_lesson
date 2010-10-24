class Dictionary
  include Enumerable
  
  def words
    @words ||= []
  end
  
  def add(word)
    words.push(word)
  end
  
  def each
    words.each { |word| yield word }
  end
  
  def find(prefix)
    if words == []
      return []
    end
    
    matches = []
    words.each { |word| if word.start_with?(prefix) then matches.push(word) end }
    return matches
    
  end
  
end

