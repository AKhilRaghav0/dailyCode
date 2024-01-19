/// 70. Climbing Stairs
/// https://leetcode.com/problems/climbing-stairs/?envType=daily-question&envId=2024-01-18
/// ---
/// created at 2021/1/18 上午8:57 by cycao
/// 
/// 
class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 2 {
            return n
        }
        var dp = Array(repeating: 0, count: n + 1)
        dp[1] = 1
        dp[2] = 2
        for i in 3...n {
            dp[i] = dp[i - 2] + dp[i - 1]
        }
        return dp[n]
        
    }
}

// clever solution
class Solution {
    func climbStairs(_ n: Int) -> Int {
        var a = 1, b = 1
        for _ in 1..<n {
            (a, b) = (b, a + b)
        }
        return b
    }
}

