//
//  main.swift
//  calc
//
//  Created by Jesse Clark on 12/3/18.
//  Copyright © 2018 UTS. All rights reserved.
//

import Foundation

var args = ProcessInfo.processInfo.arguments
args.removeFirst() // remove the name of the program
<<<<<<< Updated upstream

print(Int(args[0])!)
=======
// Retrieve User Input
/*
var input = readLine()
var tester = [String]()
tester = input!.components(separatedBy: " ")
args = tester
*/

extension String {
    var isInt: Bool {
        return Int(self) != nil
    }
}
func getCounts(){
    var xo = 0
    totalNumbs = 0
    totalOps = 0
    for val in args {
        if args[xo].isInt {
            totalNumbs = totalNumbs+1
        }
        else {
            totalOps = totalOps + 1
        }
        xo=xo+1
    }
}

func onlyPowers() -> Bool {
    var xo = 0
    var powers = 0
    for val in args {
        if args[xo] == "x" || args[xo] == "/" || args[xo] == "%" {
        powers = powers + 1
        }
        xo=xo+1
    }
    if totalOps == powers {
        return true
    }
    else {
        return false
    }
}

func hasPowers() -> Bool {
    var xo = 0
    var powers = 0
    for val in args {
        if args[xo] == "x" || args[xo] == "/" || args[xo] == "%" {
        powers = powers + 1
        }
        xo=xo+1
    }
    if powers > 0 {
        return true
    }
    else {
        return false
    }
}

let calculator = Calculator();
var final = 0
var totalNumbs = 0
var totalOps = 0
getCounts()

var powerful = onlyPowers()
func rule1(){
    if powerful == false{
        
        var containsPowers = hasPowers()
        while containsPowers == true {
            var x = 1
            var counter = 0;
            while counter < totalOps{
                let op = args[x]
                     if op == "x" {
                      let y = calculator.mult(no1: Int(args[x-1])!, no2: Int(args[x+1])!)
                        args[x] = String(y)
                        let indexesToRemove: Set = [x-1, x+1]
                        args = args.enumerated().filter { !indexesToRemove.contains($0.offset) }.map { $0.element }
                        getCounts()
                        counter = counter + 1
                        //print("did a x")
                        
                     }
                     if op == "/" {
                       let y = calculator.div(no1: Int(args[x-1])!, no2: Int(args[x+1])!)
                         args[x] = String(y)
                         let indexesToRemove: Set = [x-1, x+1]
                         args = args.enumerated().filter { !indexesToRemove.contains($0.offset) }.map { $0.element }
                         getCounts()
                         counter = counter + 1
                         
                         
                     }
                     if op == "%" {
                        let y = calculator.rem(no1: Int(args[x-1])!, no2: Int(args[x+1])!)
                         args[x] = String(y)
                         let indexesToRemove: Set = [x-1, x+1]
                         args = args.enumerated().filter { !indexesToRemove.contains($0.offset) }.map { $0.element }
                         getCounts()
                         counter = counter + 1
                          
                    }
                if op == "+" || op == "-" {
                counter = counter + 1
                x = x + 2
               //print("in + - ")
                }
                //print(op)
                //print("outside")
            }
            containsPowers = hasPowers()
        }
    }
}
rule1()
if args.count > 3 {

    let no1 = Int(args[0])
    let op = args[1]
    let no2 = Int(args[2])
    var acca = 0;
    var counter = 0;
        if op == "+" {
            if args[3] == "x"{
            acca = calculator.mult(no1: Int(args[2])!, no2: Int(args[4])!);
            counter = -2
            totalNumbs = totalNumbs - 2
            }
            if args[3] == "/" {
            acca = calculator.div(no1: Int(args[2])!, no2: Int(args[4])!);
            counter = -2
            totalNumbs = totalNumbs - 2
            }
            else {
            acca = calculator.add(no1: no1!, no2: no2!);
            counter = 2;
            }
        }
        if op == "-" {
            acca = calculator.sub(no1: no1!, no2: no2!);
            counter = 2;
        }
        if op == "x" {
            acca = calculator.mult(no1: no1!, no2: no2!);
            counter = 2;
        }
        if op == "/" {
            acca = calculator.div(no1: no1!, no2: no2!);
            counter = 2;
        }
        if op == "%" {
            acca = calculator.rem(no1: no1!, no2: no2!);
            counter = 2;
        }
    
    
    var numbsDone = 2;
    while numbsDone < totalNumbs{
        let op = args[counter+1]
        let no2 = Int(args[counter+2])
                if op == "+" {
                    acca = calculator.add(no1: acca, no2: no2!);
                }
                if op == "-" {
                    acca = calculator.sub(no1: acca, no2: no2!);
                }
                if op == "x" {
                    acca = calculator.mult(no1: acca, no2: no2!);
                }
                if op == "/" {
                    acca = calculator.div(no1: acca, no2: no2!);
                }
                if op == "%" {
                    acca = calculator.rem(no1: acca, no2: no2!); //NEED TO ADD REMAIN
                }
        counter=counter+2
        numbsDone=numbsDone+1
        }
    print(acca)
}
    
//
// 2 NUMERAL CODE
//
if args.count == 3{
   let no1 = Int(args[0])
    let op = args[1]
   let no2 = Int(args[2])

let calculator = Calculator();
    var result = 0
    if op == "+" {
        result = calculator.add(no1: no1!, no2: no2!);
    }
    if op == "-" {
        result = calculator.sub(no1: no1!, no2: no2!);
    }
    if op == "x" {
        result = calculator.mult(no1: no1!, no2: no2!);
    }
    if op == "/" {
        result = calculator.div(no1: no1!, no2: no2!);
    }
    if op == "%" {
        result = calculator.rem(no1: no1!, no2: no2!); //NEED TO ADD REMAIN
    }
    
print(result)
}

if totalNumbs == 1 {
    let test = Int(args[0])
    print(test!)
}

if totalNumbs == 0 {
   print()
}


>>>>>>> Stashed changes
