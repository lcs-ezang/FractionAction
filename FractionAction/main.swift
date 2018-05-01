//
//  main.swift
//  ChipsFastFoodEmporium
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT
// Collect and filter user input here

//Global numerator
var numerator = 0

//Global denominator
var denominator = 0

//Global remainder
var remainder = 0

// Sass the user
print("Don't try to break me. You can't")
print("Please enter an integer bigger than -1, i.e 0, 1, 2, 3")
//Loop until valid numerator input is found
while 2 == 2 {
    
    //Prompt for numerator
    print("Numerator?")
    //Wait for numerator
    var numeratorInput = readLine()
    
    //Check for nil
    guard let givenInput = numeratorInput else {
        //Failed input, back to start
        continue
    }
    
    //Check for integers
    guard let givenInteger = Int(givenInput) else {
        //Failed input, back to start
            print("Do you even know what an integer is?")

        continue
    }

    
    //Check for boundary
    if givenInteger < 0 {
        //Failed input
        print("Do you even know how to count?")
        continue
    }

    //Passed tests
    
    numerator = givenInteger
    break
}

//Ask for a number
print("Please enter an integer bigger than 0, i.e 1, 2, 3, 4")

//Loop until valid numerator input is found
while 2 == 2 {
    
    //Prompt for denominator
    print("Denominator?")
    
    //Wait for numerator
    var denominatorInput = readLine()
    
    //Check for nil
    guard let givenInput = denominatorInput else {
        //Failed input, back to start
        print("Do you even know what an integer is?")
        continue
    }
    
    //Check for integers
    guard let givenInteger = Int(givenInput) else {
        //Failed input, back to start
        continue
    }
    
    //Check for boundary
    if givenInteger < 1 {
        //Failed input
        print("Do you even know how to count?")
        continue
    }
    
    //Passed tests
    denominator = givenInteger
    break
}

// PROCESS
// Implement the primary logic of the problem here

//Find whole number
let wholeNumber = numerator/denominator

// Remainder after the whole number
remainder = numerator - wholeNumber * denominator

// Simplify
// If remainder == 0
// there are no fractions, so they can be skipped
if remainder != 0 {
    // Find fraction
    
    // Find the common factors of the remainder and the denominator
    for i in stride(from: remainder, through: 2, by: -1) {
        
        // Divide the remainder and the denominator by the common factor
        if remainder%i == 0 && denominator%i == 0 {
            denominator /= i
            remainder /= i
            break
        }
    }
}

// OUTPUT
// Report results to the user here

// Print out the answer (No fraction)
if remainder == 0 {
    print("The result is \(wholeNumber)")
}
// No whole number
else if wholeNumber == 0 && remainder > 0
{
    print("The result is \(remainder)/\(denominator)")
}
// Mixed fraction
else if wholeNumber > 0 && remainder > 0
{
    print("The result is \(wholeNumber) \(remainder)/\(denominator)")
}
// Answer is 0
else
{
    print("The result is 0")
}



