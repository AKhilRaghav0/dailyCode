/// Difference of Volume in Cuboid
/// www.codewars.com/kata/58cb43f4256836ed95000f97/train/swift
/// 


func findDifference(_ a: [Int], _ b: [Int]) -> Int {
  //  Your code here!
  
  let volumeOne = a.reduce(1, *)
  let volumeTwo = b.reduce(1, *)
  return volumeOne > volumeTwo ? volumeOne - volumeTwo : volumeTwo - volumeOne
  
//   return -1
}