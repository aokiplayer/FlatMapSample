import UIKit

// 配列の配列
let arrayInArray: [[String]] = [
    ["ABC", "DE", "FGH"],
    [],
    ["ああ", "いいいいい"],
    ["1000", "2", "30000", "40"]
]

// 単純に、フラットな配列に展開
let result1 = arrayInArray.flatMap { (arr: [String]) -> [String] in
    arr
}

print(result1)      // ["ABC", "DE", "FGH", "ああ", "いいいいい", "1000", "2", "30000", "40"]

// フラットな配列に展開しつつ、要素をmap
let result2 = arrayInArray.flatMap { (arr: [String]) -> [Int] in
    arr.map({ (str) -> Int in
        str.characters.count
    })
}

print(result2)      // [3, 2, 3, 2, 5, 4, 1, 5, 2]

// Optionalの配列
let optionalInArray: [String?] = [ "山田", "川上", nil, "竹内", nil, "島村" ]

// Optionalから値を取り出し、フラットな配列に展開
let result3 = optionalInArray.flatMap { (name: String?) -> String? in
    return name
}

print(result3)      // ["山田", "川上", "竹内", "島村"]
