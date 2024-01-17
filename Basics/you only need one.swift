/// You Only need one - Beginner
/// You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.
/// https://www.codewars.com/kata/57cc975ed542d3148f00015b/train/swift
/// ---




func check<T: Equatable>(_ a: [T], _ x: T) -> Bool {
    return a.contains(x)
    // Your code here
}
