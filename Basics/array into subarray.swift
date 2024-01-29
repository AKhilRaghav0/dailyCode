class Solution {
    func minimumCost(_ nums: [Int]) -> Int {
        var nums = nums.sorted()
        var cost = 0
        while nums.count > 1 {
            let sum = nums[0] + nums[1]
            cost += sum
            nums.removeFirst(2)
            nums.insert(sum, at: 0)
            nums = nums.sorted()
        }
        return cost
        
    }
}