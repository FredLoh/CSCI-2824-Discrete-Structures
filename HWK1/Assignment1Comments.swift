import UIKit
/*  We create a struct rules in which we have a variable slot and a variable color, both represented by an int
    If we were to redo this program we would probably use a char or string for the color since using a int made
    it quite a challenge to remember each color and makes reading the code harder. 

    Our color logic is as follows: Blue Orange Red Yellow Purple White
                                   0    1      2   3      4      5     */
struct rules {
    var slot: Int?
    var color: Int?
}
/* For a guess we used the same format of a struct as above, an Int per guess. */
struct guess {
    var slot1: Int?
    var slot2: Int?
    var slot3: Int?
    var slot4: Int?
}
/* We create an array in which to store all the possible guesses and then we remove invalid guesses from it. */
var guessArray = [guess]()

/* Generate and add all possible answers with 6 colors and 4 pegs */
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

/*  Logic for guess 1, since we recived XO back we know that if the first slot is White then either the third slot must be Orange or
    the fourth slot must be Orange OR if slot 1 is White then slot two or slot 4 must be blue Or if slot 1 is White slot 2 or 3 must be Red.
    We then follow the same logic for slots 2,3 and 4 and remove all options that don't fall under these categories. */
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

/*  We use the same logic as above since we recieved XO back as well.  */
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

/*  For the third guess we recieved OOO, so the first thing we check is that no possible combinations with those 4 colors exist
    whether it be RROY, YORR, RORY, ROYR etc.  We did not map out every single test case since just the first ones cut our list
    of possible answers down to a small enough number.  */
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

/*  For the last guess we recived XX which we check by saying that if Slot 1 is Yellow then either slot 2, 3, or 4 must match
    their respective colors.  We then do the same starting at Slot 2, followed by 3 and 4. */
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

/*  At this point the only valid answers that remain all have Yellow as slot1, Orange as slot2 and Red as slot3. We then use
    the answers we were given to elimante Blue, Purple and White as possibilities in slot 4.  This leaves us with Orange and
    Red as possibilites.  However we know that YORR is not a possibility since the third guess only returned 3 O's and not 4.
    As such we remove red as a possibility and are left only with YORO as a possibility.
*/
for var a=0;a<guessArray.count;++a {
    if guessArray[a].slot4 == 0 || guessArray[a].slot4 == 4 || guessArray[a].slot4 == 5 | guessArray[a].slot4 == 2 {
        guessArray.removeAtIndex(a)
        a--
    }
}

for var a=0;a<guessArray.count;++a {
    println("Slots in order are \(guessArray[a].slot1) \(guessArray[a].slot2) \(guessArray[a].slot3) \(guessArray[a].slot4)")
}


/*  BEGIN PART 2 */

/*  We create a second guess array. */
var secondGuessArray = [guess]()

/*  Generate all possible guesses */
for var a=0;a<=5;++a {
    for var b=0;b<=5;++b {
        for var c=0;c<=5;++c {
            for var d=0;d<=5;++d {
                var currentGuess = guess(slot1: a, slot2: b, slot3: c, slot4: d)
                secondGuessArray.append(currentGuess)
            }
        }
    }
}
secondGuessArray.count

/*  We use the same logic that we used in our Guess 4 from above since we also have two X's returned here */
for var a=0;a<secondGuessArray.count;++a {
    if secondGuessArray[a].slot1 == 1 && (secondGuessArray[a].slot2 == 3 || secondGuessArray[a].slot3 == 4 || secondGuessArray[a].slot4 == 2) {
        continue
    } else if secondGuessArray[a].slot2 == 3 && (secondGuessArray[a].slot3 == 4 || secondGuessArray[a].slot4 == 2) {
        continue
    } else if secondGuessArray[a].slot3 == 4 && secondGuessArray[a].slot4 == 2 {
        continue
    } else {
        secondGuessArray.removeAtIndex(a)
        a--
    }
}
secondGuessArray.count

/* We use the same logic as in Guess 1 and 2 from above since we also have an XO returned */
for var a=0;a<secondGuessArray.count;++a {
    if (secondGuessArray[a].slot1 == 3  && (secondGuessArray[a].slot3 == 0 || secondGuessArray[a].slot4 == 0)) || (secondGuessArray[a].slot1 == 3  && (secondGuessArray[a].slot2 == 1 || secondGuessArray[a].slot4 == 1)) || (secondGuessArray[a].slot1 == 3  && (secondGuessArray[a].slot2 == 5 || secondGuessArray[a].slot3 == 5)) {
        continue
    } else if (secondGuessArray[a].slot2 == 0  && (secondGuessArray[a].slot3 == 3 || secondGuessArray[a].slot4 == 3)) || (secondGuessArray[a].slot2 == 0  && (secondGuessArray[a].slot1 == 1 || secondGuessArray[a].slot4 == 1)) || (secondGuessArray[a].slot2 == 0  && (secondGuessArray[a].slot1 == 5 || secondGuessArray[a].slot3 == 5)) {
        continue
    } else if (secondGuessArray[a].slot3 == 1  && (secondGuessArray[a].slot2 == 3 || secondGuessArray[a].slot4 == 3)) || (secondGuessArray[a].slot3 == 1  && (secondGuessArray[a].slot1 == 0 || secondGuessArray[a].slot4 == 0)) || (secondGuessArray[a].slot3 == 1  && (secondGuessArray[a].slot1 == 5 || secondGuessArray[a].slot2 == 5)) {
        continue
    } else if (secondGuessArray[a].slot4 == 5  && (secondGuessArray[a].slot2 == 3 || secondGuessArray[a].slot3 == 3)) || (secondGuessArray[a].slot4 == 5  && (secondGuessArray[a].slot1 == 0 || secondGuessArray[a].slot3 == 0)) || (secondGuessArray[a].slot4 == 5  && (secondGuessArray[a].slot1 == 1 || secondGuessArray[a].slot2 == 1)) {
        continue
    } else {
        secondGuessArray.removeAtIndex(a)
        a--
    }
}
secondGuessArray.count



/*  Guess three only returned a single O so we begin by elminating all guesses that have colors in the position indicated by the guess
    since we know that those guesses cannot be right */
for var a=0;a<secondGuessArray.count;++a {
    if (secondGuessArray[a].slot1 == 0 || secondGuessArray[a].slot2 == 5 || secondGuessArray[a].slot3 == 3 || secondGuessArray[a].slot4 == 3) {
        secondGuessArray.removeAtIndex(a)
        a--
    } else if (secondGuessArray[a].slot2 == 0 || secondGuessArray[a].slot3 == 0 || secondGuessArray[a].slot4 == 0) && (secondGuessArray[a].slot1 == 5 || secondGuessArray[a].slot3 == 5 || secondGuessArray[a].slot4 == 5 || secondGuessArray[a].slot1 == 3 || secondGuessArray[a].slot2 == 3) {
        secondGuessArray.removeAtIndex(a)
        a--
    } else if (secondGuessArray[a].slot1 == 5 || secondGuessArray[a].slot3 == 5 || secondGuessArray[a].slot4 == 5) && (secondGuessArray[a].slot2 == 0 || secondGuessArray[a].slot3 == 0 || secondGuessArray[a].slot4 == 0 || secondGuessArray[a].slot1 == 3 || secondGuessArray[a].slot2 == 3) {
        secondGuessArray.removeAtIndex(a)
        a--
    } else if (secondGuessArray[a].slot1 == 3 || secondGuessArray[a].slot2 == 3) && (secondGuessArray[a].slot2 == 0 || secondGuessArray[a].slot3 == 0 || secondGuessArray[a].slot4 == 0 || secondGuessArray[a].slot1 == 5 || secondGuessArray[a].slot3 == 5 || secondGuessArray[a].slot4 == 5) {
        secondGuessArray.removeAtIndex(a)
        a--
    }
}
secondGuessArray.count

/*  At this point we have 18 left, we use paper and pen logic (since writing down all the test cases would take forever and it is way
    faster to check with pen and paper) we know that slot one is Orange, slot 2 is Blue and slot 3 is Purple so we remove all options
    that don't have this as an option */
for var a=0;a<secondGuessArray.count;++a {
    if secondGuessArray[a].slot1 == 1 && secondGuessArray[a].slot2 == 0 && secondGuessArray[a].slot3 == 4 {
        
    } else {
        secondGuessArray.removeAtIndex(a)
        a--
    }
}
secondGuessArray.count

/*  This leaves us with 4 possible guesses, OBPB, OBPO, OBPP and OBPR.  We know that OBPR is not valid since we know that OBP is coorect
    So our next guess should be OOPP which will return at least two X's if we have a third X then we know that P is the last character.
    If we have XXO then we know that O is the right last character, if otherwise we know that B is the last character. */
for var a=0;a<secondGuessArray.count;++a {
    println("Slots in order are \(secondGuessArray[a].slot1) \(secondGuessArray[a].slot2) \(secondGuessArray[a].slot3) \(secondGuessArray[a].slot4)")
}
