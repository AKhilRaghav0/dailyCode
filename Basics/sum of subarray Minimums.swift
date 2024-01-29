/// Sum of Subarray Minimums
/// - Approach: Stack
/// - Time Complexity: O(n) 
/// - Space Complexity: O(n)
/// ---


class Solution {
    func sumSubarrayMins(_ arr: [Int]) -> Int {
        var stack: [Int] = []
        var left: [Int] = Array(repeating: 0, count: arr.count)
        var right: [Int] = Array(repeating: 0, count: arr.count)
        var sum = 0
        for i in 0..<arr.count {
            while !stack.isEmpty, arr[stack.last!] > arr[i] {
                stack.removeLast()
            }
            left[i] = stack.isEmpty ? -1 : stack.last!
            stack.append(i)
        }
        stack.removeAll()
        for i in stride(from: arr.count - 1, through: 0, by: -1) {
            while !stack.isEmpty, arr[stack.last!] >= arr[i] {
                stack.removeLast()
            }
            right[i] = stack.isEmpty ? arr.count : stack.last!
            stack.append(i)
        }
        for i in 0..<arr.count {
            sum += arr[i] * (i - left[i]) * (right[i] - i)
        }
        return sum % (Int(pow(10.0, 9.0)) + 7)
        
    }
}