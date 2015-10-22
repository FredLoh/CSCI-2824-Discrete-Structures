//: Playground - noun: a place where people can play

import UIKit

var numberFound = false
var startingTroopCount = 1001
while(numberFound != true) {
    if(startingTroopCount % 11 == 9 && startingTroopCount % 13 == 1 && startingTroopCount % 17 == 14) {
        print(startingTroopCount)
        numberFound = true
    } else {
        startingTroopCount++
    }
}

var numberFound2 = false
var InitialCount = 1
while(InitialCount < 104) {
    if(InitialCount % 3 == 0 && InitialCount % 5 == 4 && InitialCount % 7 == 5) {
        print(InitialCount)
        InitialCount++
    } else {
        InitialCount++
    }
}
