require "minruby"

def evaluate(tree)
  case tree[0]
  when "+"
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left + right
  when "-"
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left - right
  when "*"
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left * right
  when "/"
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left / right
  when "lit"
    tree[1]
  end
end

tree = minruby_parse(gets)
answer = evaluate(tree)
p answer
