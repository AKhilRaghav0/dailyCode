/// GrassHopper - GradeBook
/// https://www.codewars.com/kata/55cbd4ba903825f7970000f5/train/swift
/// 



func getGrade(_ s1: Int, _ s2: Int, _ s3: Int) -> String {
    let avg = (s1 + s2 + s3) / 3
    if avg >= 90 {
        return "A"
    } else if avg >= 80 {
        return "B"
    } else if avg >= 70 {
        return "C"
    } else if avg >= 60 {
        return "D"
    } else {
        return "F"
    }



  return ""
}