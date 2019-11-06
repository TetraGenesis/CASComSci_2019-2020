import UIKit

var str = "Hello, playground"


protocol Athlete {
    func practice()
    func playGame() -> Bool
}

class Student: Athlete {
    func practice() {
        print("Practicing!")
    }
    func playGame() -> Bool {
        return true
    }
    var name:String = ""
    var grade:Int = 0
    var studentID:Int = 0
}

class olympicSkater: Athlete {
    func practice() {
        print("Actually practicing")
    }
    
    func playGame() -> Bool {
        return true
    }
    
    
}
