//: Playground - noun: a place where people can play

import UIKit

//4*4 array of nested squares each with center and border square.
/*
0-4-8-12
1-5-9-13
2-6-10-14
3-7-11-15
*/
struct square {
    var x : Int?
    var y : Int?
    var innerColor : String?
    var outerColor : String?
}

var arrayOfSquares = [square]()
var arrayOfColors = [String]()
arrayOfColors.append("Black")
arrayOfColors.append("Blue")
arrayOfColors.append("Gold")
arrayOfColors.append("Red")

for var i=0;i<4;++i {
    for var z=0;z<4;++z {
        var newSquare = square(x: i, y: z, innerColor: "None", outerColor: "None")
        arrayOfSquares.append(newSquare)
    }
}

arrayOfSquares[0].outerColor = "Black"
arrayOfSquares[6].outerColor = "Black"
arrayOfSquares[8].outerColor = "Red"
arrayOfSquares[14].outerColor = "Red"
arrayOfSquares[15].outerColor = "Blue"

//Rules

for var i=0;i<16;++i {
    for var p=0;p<4;++p {
        if (arrayOfSquares[i].outerColor == arrayOfSquares[i]
    }
}