//
//  BoardFoot.swift
//
//  Created by Jessah
//  Created on 2024-03-25
//  Version 1.0
//  Copyright (c) 2024 Jessah. All rights reserved.
//
//  Program that gets width and height to find length of board.


// Function for board length.
func calcBoardfoot(height: Double, width: Double) -> Double {
    // Calculate length.
    let length = (height * width) * 144
    // Return length
    return length
}

enum InputError: Error {
  // invalid input error
  case invalidInput
}

// Greeting/title.
print("This program calculates the length of a board")
print("That is determined by 1 board foot or 144^3 inches")
print("")

// Check if user enters a string.
do {
  // Get user width.
  print("Enter a width: ")
  guard let input = readLine(), let userWidth = Double(input) else {
    throw InputError.invalidInput
  }
  // Get user height.
  print("Enter a height: ")
  guard let input = readLine(), let userHeight = Double(input) else {
    throw InputError.invalidInput
  }

  // User input above 0
  if (userWidth > 0 && userHeight > 0 ){
    let calculate = calcBoardfoot(height: userHeight, width: userWidth)
    print("The length of the board foot is \(calculate) inch(es)" )

  } else {
    // User input below 0
    print("Values cannot be 0 or below")
  }

  // if user enters a string
} catch InputError.invalidInput {
  print("Invalid input, values must be integers.")
}
