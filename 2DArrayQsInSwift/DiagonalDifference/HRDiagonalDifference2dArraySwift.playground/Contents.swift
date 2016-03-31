import UIKit

/* * * * * * * * * * * * * * * * * *
https://www.hackerrank.com/challenges/diagonal-difference
* * * * * * * * * * * * * * * * * */


// declare 2d array
var arr : [[Int]] = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]

var n = arr.count

var firstDiagArr : [Int]
var secondDiagArr : [Int]

var sumOfFirst : Int = 0
var sumOfSecond : Int = 0

for (var i = 0; i < n; i++) {
    sumOfFirst += arr[i][i]
}

print(sumOfFirst)

for (var i = 0; i < n; i++) {
    sumOfSecond += arr[i][n-1-i]
}

print(sumOfSecond)

let difference = sumOfFirst - sumOfSecond
print(abs(difference))
