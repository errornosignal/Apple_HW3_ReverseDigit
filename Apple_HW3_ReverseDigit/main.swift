//
//  main.swift
//  Apple_HW3_ReverseDigit
//
//  Created by Reid Nolan on 12/5/17.
//  Copyright © 2017 Reid Nolan. All rights reserved.
//

import Foundation

// print program header
print("Apple_HW3_ReverseDigit")
print("Type '0' to exit")

var originalInput = ""

//loop for geting int from user
func validateIntInput(prompt: String) -> Int {
    while (true) {
        print(prompt);
        originalInput = readLine()!
        let inputInt = Int(originalInput)
        
        //allow exit
        if (inputInt == 0) {
            exit(5)
        }
        //check for valid input
        else if (inputInt != nil ) {
            if (inputInt! < 0 || inputInt! > 0) {
                return inputInt!;
            }
        }
        //display error for bad input
        else {
            print("Error! Invalid input. Value must be an integer.");
        }
    }
}

//reverse input and strip off zeroes
func reverse(value: Int) -> Int {
    var newNumber = value
    var reversedNumber = 0
    let divisor = 10
    var dividedNumber = 0
    
    reversedNumber = (reversedNumber * divisor) + dividedNumber;
    
    while (newNumber < 0 || newNumber > 0) {
        dividedNumber = newNumber % divisor;
        reversedNumber = (reversedNumber * divisor) + dividedNumber;
        newNumber /= divisor;
    }
    return reversedNumber;
}

//reverse the reversed input from the previous function and discard sign of value
func reReverse (value: Int) -> Int {
    var newNumber = value
    if (newNumber < 0) {
        newNumber = newNumber * -1
    }else {/*doNothing()*/}
    return reverse(value: newNumber)
}

//main
while(true) {
    print()
    
    //get user input
    let inputInt = validateIntInput(prompt: "Enter a whole number: ")
    
    //run numbers through functions
    let reversedNumber = reverse(value: inputInt)
    let reReversedNumber = reReverse(value: reversedNumber)

    //output to console
    print("originalInput = " + originalInput)
    print("reversedNumberString = " + String(reversedNumber))
    print("reReversedNumberString = " + String(reReversedNumber))
}
