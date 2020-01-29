require "minruby"

def max(tree)
  return tree[1] if tree[0] == "lit"

  left = max tree[1]
  right = max tree[2]
  left > right ? left : right
end

tree = minruby_parse(gets)
answer = max(tree)
p answer
