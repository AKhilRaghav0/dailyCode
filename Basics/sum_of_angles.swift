/// CodeWars Problem: Sum of angles
/// https://www.codewars.com/kata/5a03b3f6a1c9040084001765/train/swift
/// ---
/// Find the total sum of internal angles (in degrees) in an n-sided simple polygon. N will be greater than 2.
/// ---

func angle(_ n: Int) -> Int {
    guard n > 2 else {
        fatalError("n must be greater than 2")
    }
      let sum = (n - 2) * 180
    
    return sum

    // your code here
}

// Clever Approch
func angle2(_ n: Int) -> Int {
    return (n - 2) * 180
}