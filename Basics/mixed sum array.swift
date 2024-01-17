/// Mixed Sum Array
/// https://www.codewars.com/kata/57eaeb9578748ff92a000009/train/swift
/// ---

// My Solution

func sumMix(_ arr: [Any]) -> Int {
    var sum = 0
    for i in arr {
        if let num = i as? Int {
            sum += num
        } else if let num = i as? String {
            sum += Int(num)!
        }
    }
    return sum

}

// Clever Approch
func sumMix2(_ arr: [Any]) -> Int {
    return arr.map { Int("\($0)")! }.reduce(0, +)
}

// Best Approch
func sumMix3(_ arr: [Any]) -> Int {
    return arr.reduce(0) { $0 + (Int("\($1)") ?? 0) }
}