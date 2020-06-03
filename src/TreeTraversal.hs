module TreeTraversal where
data Tree = Tree {left::Maybe Tree, right::Maybe Tree, value::String}

newTree:: String -> Tree
newTree s = Tree {left=Nothing, right=Nothing, value=s}

addRight::Tree -> Tree -> Tree
addRight tree r = tree {right=(Just r)}

addLeft::Tree -> Tree -> Tree
addLeft tree r = tree {left=(Just r)}

preorder:: Maybe Tree -> [Maybe Tree]
preorder Nothing = []
preorder (Just t) = [Just t] ++ preorder (left t) ++ preorder (right t)

postorder::Maybe Tree -> [Maybe Tree]
postorder Nothing = []
postorder (Just t) = postorder (left t) ++ postorder (right t) ++ [Just t]

inorder:: Maybe Tree -> [Maybe Tree]
inorder Nothing = []
inorder (Just t) = inorder (left t) ++ [Just t] ++ inorder (right t)

toString:: [Maybe Tree] -> [String]
toString [] = []
toString (Nothing: ts) = toString ts
toString (Just t: ts) = [value t] ++ toString ts
