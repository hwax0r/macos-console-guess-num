//
//  main.swift
//  Guess what
//
//  Created by David Sergeev on 29.10.2021.
//

import Foundation

let randomNumber = UInt.random(in: 1...100)

print("Now we have a random integer in Range [1,100].")
print("Guess it!")

while true {
    print("Your number is:")
    guard let userNumber = UInt8(readLine() ?? "") else {
        print("Wrong input! Try one more time.\n")
        continue
    }
    if userNumber == randomNumber {
        print("\n******************")
        print("**** WINNER!!!****")
        print("******************\n")
        break
    } else if userNumber > randomNumber {
        print("Your number is bigger\n")
    } else if userNumber < randomNumber {
        print("Your number is lower\n")
    }
}
