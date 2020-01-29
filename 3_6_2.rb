def preorder(tree)
  if tree[1].nil?
    p tree[0]
  else
    preorder(tree[1])
    preorder(tree[2])
  end
end

nodes = [
  "節1",
  ["節2", ["葉A"], ["節3", ["葉B"], ["葉C"]]],
  ["葉D"]
]

preorder(nodes)
