def merge(arr1, arr2)
  arr1.push(arr2).flatten.uniq
end

def merge(arr1, arr2)
  arr1 | arr2
end