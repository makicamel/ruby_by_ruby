require "minruby"

def sum(tree)
  case tree[0]
  when "+"
    left = sum(tree[1])
    right = sum(tree[2])
    left + right
  when "lit"
    tree[1]
  end
end

tree = minruby_parse(gets)
answer = sum(tree)
p answer
