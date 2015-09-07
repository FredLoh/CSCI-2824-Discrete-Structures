//: Playground - noun: a place where people can play

import UIKit

//Blue Orange Red Yellow Purple White
// 0 1 2 3 4 5
struct rules {
    var slot: Int?
    var color: Int?
}

struct guess {
    var slot1: Int?
    var slot2: Int?
    var slot3: Int?
    var slot4: Int?
}

var arrayOfRules = [rules]()
var guessArray = [guess]()

//begin shitshow of for loops
for var a=0;a<=5;++a {
    for var b=0;b<=5;++b {
        for var c=0;c<=5;++c {
            for var d=0;d<=5;++d {
                    var currentGuess = guess(slot1: a, slot2: b, slot3: c, slot4: d)
                    guessArray.append(currentGuess)
                }
            }
        }
}

guessArray.count
//Blue Orange Red Yellow Purple White
// 0 1 2 3 4 5
//GUESS 1
for var a=0;a<guessArray.count;++a {
    if (guessArray[a].slot1 == 5  && (guessArray[a].slot3 == 1 || guessArray[a].slot4 == 1)) || (guessArray[a].slot1 == 5  && (guessArray[a].slot2 == 0 || guessArray[a].slot4 == 0)) || (guessArray[a].slot1 == 5  && (guessArray[a].slot2 == 2 || guessArray[a].slot3 == 2)) {
        continue
    } else if (guessArray[a].slot2 == 1  && (guessArray[a].slot3 == 5 || guessArray[a].slot4 == 5)) || (guessArray[a].slot2 == 1  && (guessArray[a].slot1 == 0 || guessArray[a].slot4 == 0)) || (guessArray[a].slot2 == 1  && (guessArray[a].slot1 == 2 || guessArray[a].slot3 == 2)) {
        continue
    } else if (guessArray[a].slot3 == 0  && (guessArray[a].slot2 == 5 || guessArray[a].slot4 == 5)) || (guessArray[a].slot3 == 0  && (guessArray[a].slot1 == 1 || guessArray[a].slot4 == 1)) || (guessArray[a].slot3 == 0  && (guessArray[a].slot1 == 2 || guessArray[a].slot2 == 2)) {
        continue
    } else if (guessArray[a].slot4 == 2  && (guessArray[a].slot2 == 5 || guessArray[a].slot3 == 5)) || (guessArray[a].slot4 == 2  && (guessArray[a].slot1 == 1 || guessArray[a].slot3 == 1)) || (guessArray[a].slot4 == 2  && (guessArray[a].slot1 == 0 || guessArray[a].slot2 == 0)) {
        continue
    } else {
        guessArray.removeAtIndex(a)
        a--
    }
}
//Blue Orange Red Yellow Purple White
// 0 1 2 3 4 5
//GUESS 2
for var a=0;a<guessArray.count;++a {
    if (guessArray[a].slot1 == 4  && (guessArray[a].slot3 == 3 || guessArray[a].slot4 == 3)) || (guessArray[a].slot1 == 4  && (guessArray[a].slot2 == 2 || guessArray[a].slot4 == 2)) || (guessArray[a].slot1 == 4  && (guessArray[a].slot2 == 0 || guessArray[a].slot3 == 0)) {
        continue
    } else if (guessArray[a].slot2 == 3  && (guessArray[a].slot3 == 4 || guessArray[a].slot4 == 4)) || (guessArray[a].slot2 == 3  && (guessArray[a].slot1 == 2 || guessArray[a].slot4 == 2)) || (guessArray[a].slot2 == 3  && (guessArray[a].slot1 == 0 || guessArray[a].slot3 == 0)) {
        continue
    } else if (guessArray[a].slot3 == 2  && (guessArray[a].slot2 == 4 || guessArray[a].slot4 == 4)) || (guessArray[a].slot3 == 2  && (guessArray[a].slot1 == 3 || guessArray[a].slot4 == 3)) || (guessArray[a].slot3 == 2  && (guessArray[a].slot1 == 0 || guessArray[a].slot2 == 0)) {
        continue
    } else if (guessArray[a].slot4 == 0  && (guessArray[a].slot2 == 4 || guessArray[a].slot3 == 4)) || (guessArray[a].slot4 == 0  && (guessArray[a].slot1 == 3 || guessArray[a].slot3 == 3)) || (guessArray[a].slot4 == 0  && (guessArray[a].slot1 == 2 || guessArray[a].slot2 == 2)) {
        continue
    } else {
        guessArray.removeAtIndex(a)
        a--
    }
}

for var a=0;a<guessArray.count;++a {
    if guessArray[a].slot1 == 2 || guessArray[a].slot2 == 2 || guessArray[a].slot3 == 1 || guessArray[a].slot4 == 3 {
        guessArray.removeAtIndex(a)
        a--
    } else if guessArray[a].slot1 == 3 && guessArray[a].slot2 == 2 && guessArray[a].slot3 == 2 {
    } else if guessArray[a].slot1 == 3 && guessArray[a].slot2 == 2 && guessArray[a].slot4 == 2 {
    } else if guessArray[a].slot1 == 3 && guessArray[a].slot2 == 2 && guessArray[a].slot3 == 1 {
    } else if guessArray[a].slot1 == 3 && guessArray[a].slot2 == 1 && guessArray[a].slot3 == 2 {
    } else if guessArray[a].slot1 == 3 && guessArray[a].slot2 == 1 && guessArray[a].slot4 == 2 {
    } else if guessArray[a].slot1 == 3 && guessArray[a].slot2 == 2 && guessArray[a].slot4 == 1 {
    } else {
        guessArray.removeAtIndex(a)
        a--
    }
}
guessArray.count

//Blue Orange Red Yellow Purple White
// 0 1 2 3 4 5
//GUESS 4
for var a=0;a<guessArray.count;++a {
    if guessArray[a].slot1 == 3 && (guessArray[a].slot2 == 2 || guessArray[a].slot3 == 2 || guessArray[a].slot4 == 5) {
        continue
    } else if guessArray[a].slot2 == 2 && (guessArray[a].slot3 == 2 || guessArray[a].slot4 == 5) {
        continue
    } else if guessArray[a].slot3 == 2 && guessArray[a].slot4 == 5 {
        continue
    } else {
        guessArray.removeAtIndex(a)
        a--
    }
}
guessArray.count

//Slot 4 cannot be blue, purple or White
for var a=0;a<guessArray.count;++a {
    if guessArray[a].slot4 == 0 || guessArray[a].slot4 == 4 || guessArray[a].slot4 == 5 {
        guessArray.removeAtIndex(a)
        a--
    }
}

for var a=0;a<guessArray.count;++a {
    println("Slots in order are \(guessArray[a].slot1) \(guessArray[a].slot2) \(guessArray[a].slot3) \(guessArray[a].slot4)")
}
/* The program outputs Yellow Orange Red Orange and Yellow Orange Red Red as the two possibilities
We know that YORR is not a possibility since the third guess only returned three white slots and
not 4. */
