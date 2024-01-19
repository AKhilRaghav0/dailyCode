/// Jumping Number (Special Numbers Series #4)
/// https://www.codewars.com/kata/5a54e796b3bfa8932c0000ed/train/swift
/// 
/// 

func jumpingNumber(_ number: Int) -> String {
  //Do Some Magic 
    let digits = String(number).compactMap { Int(String($0)) }
}


// clever Approach
func jumpingNumber(_ number: Int) -> String {
  //Do Some Magic 
    let digits = String(number).compactMap { Int(String($0)) }
    return zip(digits, digits.dropFirst()).allSatisfy { abs($0.0 - $0.1) == 1 } ? "Jumping!!" : "Not!!"
}