import Foundation

final class Main {
    static func main() {
        // create the tree
        let tree1 = Tree(numberOfLeaves: 5000, feetTall: 4, type: "birch", age: 9)

        // Use all the methods and print all the info
        print("Tree size and leaves are: \(tree1.feetTall), \(tree1.numberOfLeaves)")
        tree1.grow()
        print("Tree size and leaves are: \(tree1.feetTall), \(tree1.numberOfLeaves)")
        tree1.grow(numLeaves: 5, feet: 20)
        print("Tree size and leaves are: \(tree1.feetTall), \(tree1.numberOfLeaves)")
        tree1.loseAllLeaves()
        print("In winter the tree has \(tree1.numberOfLeaves) leaves")
        tree1.growSlow()
        print("Tree size and leaves are: \(tree1.feetTall), \(tree1.numberOfLeaves)")
    }
}

final class Tree {
    var numberOfLeaves: Int
    var feetTall: Int
    var type: String
    var age: Int

    init(numberOfLeaves: Int, feetTall: Int, type: String, age: Int) {
        self.numberOfLeaves = numberOfLeaves
        self.feetTall = feetTall
        self.type = type
        self.age = age
    }

    // Custom grow method so the user can input a specific amount of leaves
    func grow(numLeaves: Int, feet: Int) {
        numberOfLeaves += numLeaves
        feetTall += feet
        age += 1
    }

    // Preset grow method
    func grow() {
        feetTall += 5
        numberOfLeaves += 10000
        age += 1
    }

    // Lose all the leaves
    func loseAllLeaves() {
        numberOfLeaves = 0
    }

    // Slower grow default method
    func growSlow() {
        feetTall += 1
        numberOfLeaves += 500
    }
}

// Call the main method
Main.main()
