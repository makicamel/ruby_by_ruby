def postorder(tree)
  unless tree[1].nil?
    postorder(tree[1])
    postorder(tree[2])
  end
  p tree[0]
end

nodes = [
  "節1",
  ["節2", ["葉A"], ["葉B"]],
  ["節3", ["葉C"], ["葉D"]]
]

postorder(nodes)
