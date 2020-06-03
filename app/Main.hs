module Main where
import TreeTraversal

main :: IO ()
main = do
        let t1 = newTree "T1"
        let t2 = addRight t1 (newTree "T2")
        let t3 = addLeft t2 (newTree "T3")
        let root = addRight (newTree "R1") t3

        let treesInorder = inorder (Just root)
        print(toString treesInorder)



