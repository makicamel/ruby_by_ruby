require "minruby"

def evaluate(tree)
  case tree[0]
  when "lit"
    tree[1]
  when "+"
    evaluate(tree[1]) + evaluate(tree[2])
  when "-"
    evaluate(tree[1]) - evaluate(tree[2])
  when "*"
    evaluate(tree[1]) * evaluate(tree[2])
  when "/"
    evaluate(tree[1]) / evaluate(tree[2])
  when "**"
    evaluate(tree[1])**evaluate(tree[2])
  when "%"
    evaluate(tree[1]) % evaluate(tree[2])
  when "<"
    evaluate(tree[1]) < evaluate(tree[2])
  when "<="
    evaluate(tree[1]) <= evaluate(tree[2])
  when ">"
    evaluate(tree[1]) > evaluate(tree[2])
  when ">="
    evaluate(tree[1]) >= evaluate(tree[2])
  when "=="
    evaluate(tree[1]) == evaluate(tree[2])
  when "stmts"
    i = 1
    last = nil
    until tree[i].nil?
      last = evaluate(tree[i])
      i += 1
    end
    last
  when "func_call"
    p evaluate(tree[2])
  end
end

tree = minruby_parse(minruby_load)
evaluate(tree)
