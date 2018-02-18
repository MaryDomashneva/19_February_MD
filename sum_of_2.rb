def list(names)
  myarray = names.map { |e| e[:name] }
  if myarray.length == 1
    return myarray.join
  else
    if myarray.length == 2
      return myarray.join("&")
    else
      if myarray.length > 2
        return myarray.take(myarray.length-1).join(", ") + '&' + myarray.last
      end
    end
  end
end
a = list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
puts a
