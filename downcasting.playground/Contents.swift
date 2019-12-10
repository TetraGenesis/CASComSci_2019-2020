import UIKit

let xrds: [String: Any] = [
    "name": "Crossroads School",
    "foundingYear": 1971,
    "campuses": [
        "Norton",
        "21st Street"
    ]
]

let name0 = xrds["name"]
let name1 = xrds["name"] as! String
let name2 = xrds["name"] as? String

if name2 != nil {
    let unwrappedOptional = name2!
    print("Hello \(unwrappedOptional)")
}

let albertosAnswer = name2 ?? "something else"
print("Hello again, \(albertosAnswer)")



if let unwrapped = name2 {
    print("Hello another time, \(unwrapped)")
}
else {
    print("Well, that didn't work...")
}



let bruteForce = name2!
print("Hello for the last time, \(bruteForce)")
