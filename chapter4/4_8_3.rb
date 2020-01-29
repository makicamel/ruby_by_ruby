require "minruby"

def max(tree)
  return tree[1] if tree[0] == "lit"

  left, right = max(tree[1]), max(tree[2])
  left > right ? left : right
end

def min(tree)
  return tree[1] if tree[0] == "lit"

  left, right = min(tree[1]), max(tree[2])
  left < right ? left : right
end

tree = minruby_parse(gets)
p "max: #{max(tree)}"
p "min: #{min(tree)}"
