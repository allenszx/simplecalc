//
//  main.swift
//  SimpleCalc
//
//  Created by Ted Neward on 10/3/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

public class Calculator {
    public func calculate(_ args: [String]) -> Int {
        if Int(args.last!) != nil {
            let numOne = Int(args[0])!
            let numTwo = Int(args[2])!
            switch args[1] {
            case "+":
                return numOne + numTwo
            case "-":
                return numOne - numTwo
            case "/":
                return numOne / numTwo
            case "%":
                return numOne % numTwo
            case "*":
                return numOne * numTwo
            
            default: return 0
            }
        } else {
            switch args.last {
            case "count":
                var result = args.count - 1
                return result
            case "avg":
                if args[0] == "avg" {
                    return 0
                }
                let myCount = args.count - 2
                var numbers = Array(args[0...(myCount)])
                var sum = 0
                for num in numbers {
                    print(num)
                   sum += Int(num)!
                }
                return sum / numbers.count
            case "fact":
                if args[0] == "fact"{
                    return 0
                }
                var product = 1
                for i in 1...Int(args[0])! {
                    product = product * i
                }
                return product
            default: return 0
            }
        }
        return 0
    }
    
    public func calculate(_ arg: String) -> Int {
        return calculate( arg.split(separator: " ").map({ substr in String(substr) }) )
    }
}

//print("UW Calculator v1")
//print("Enter an expression separated by returns:")
//let first = readLine()!
//let operation = readLine()!
//let second = readLine()!
//print(Calculator().calculate([first, operation, second]))

Calculator().calculate(["5", "fact"]) == 120
