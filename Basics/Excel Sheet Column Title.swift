/// Excel Sheet Column Title    
/// https://leetcode.com/problems/excel-sheet-column-title/
/// created at 2021/1/18 上午9:00 by cycao
/// 
class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
        var result = ""
        var num = columnNumber
        while num > 0 {
            num -= 1
            let char = Character(UnicodeScalar(num % 26 + 65)!)
            result = "\(char)" + result
            num /= 26
        }
        return result
        
    }
}