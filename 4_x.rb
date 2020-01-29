require "minruby"

def evaluate(tree)
  return tree[1] if tree[0] == "lit"

  left = evaluate tree[1]
  right = evaluate tree[2]
  case tree[0]
  when "+"
    left + right
  when "-"
    left - right
  when "*"
    left * right
  when "/"
    left / right
  when "**"
    left**right
  when "%"
    left % right
  end
end

tree = minruby_parse(gets)
answer = evaluate(tree)
p answer
