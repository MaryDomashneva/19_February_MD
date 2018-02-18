def mysort(a)
  arraylength = a.length
  for i in (0...arraylength-1)
    for g in (0...arraylength-1 - i)
      if a[g] > a[g+1]
        a[g], a[g+1] = a[g+1], a[g]
      end
    end
  end
  return a
end


def repite(b)
  arraylength1 = b.length
  for k in (0...arraylength1-1)
    for n in (0...arraylenghth1-1 -k)
      if b[n] > b[n+1]
        b[n], b[n+1] = b[n+1], b[n]
      end
    end
  end
  return b
end




list = []
comand = ''
while comand != "\n"
  comand = gets
  if comand == "\n"
    puts "end\n"
    puts mysort(list)
  else
    list.push(comand)
  end
end
