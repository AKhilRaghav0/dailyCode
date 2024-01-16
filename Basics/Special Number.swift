/// Special Number (Special Numbers Series #5)
/// 7 kyu
/// https://www.codewars.com/kata/5a55f04be6be383a50000187
/// ---

func specialNumber(_ number: Int) -> String {
    let numberArray = String(number).compactMap { Int(String($0)) }
    let specialNumberArray = numberArray.filter { $0 <= 5 }
    return numberArray.count == specialNumberArray.count ? "Special!!" : "NOT!!"
}

// Clever Approch
func specialNumber2(_ number: Int) -> String {
    return String(number).filter { $0 > "5" } == "" ? "Special!!" : "NOT!!"
}