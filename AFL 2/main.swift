//
//  main.swift
//  AFL 2
//
//  Created by Jhon The on 07/04/22.
//

import Foundation

var userInput : String = ""
var userInput2: String = ""
var MyCart = shoopingCart()

struct shoopingCart {
    var cart: [String] = []

    mutating func addItem(by name: String, by amount: Int) {
        if amount > 0{
            let totalItem: String = String(amount)+" "+name
            cart.append(totalItem)
            print("-----------------------")
            print("Shooping Cart (\(cart.count)) items")
            print("-----------------------")
            for item in cart {
                print(item)
            }
        }else{
            print("Input must be a number and > 0")
            print("")
        }
    }

    func showListItems() {
        if cart.isEmpty{
            print("")
            print("Your shopping cart is empty. Please buy something first !")
            print("")
        }else{
            print("-----------------------")
            print("Shooping Cart (\(cart.count)) items")
            print("-----------------------")
            for item in cart {
                print(item)
            }
            print("")
        }
    }
}

while userInput != "x"{
print("===========================")
print("Point of Sales (PoS)")
print("===========================")
print("[1] Buy Food")
print("[2] Shooping cart")
print("[x] Exit")
print ("Your Choice :")
userInput = readLine()!

var jumlah: Int
var items: String = ""

if userInput == "1"{
    while userInput != "0" && userInput != "q"{
    print("")
    print("Hi, we have 4 Food & Beverage options for you!")
    print("----------------------------------------------")
    print("[F03] Gado-Gado")
    print("[F02] Chicken Satay")
    print("[F01] Nasi Padang")
    print("[B02] Mineral Water")
    print("[B01] Ice Tea")
    print("[Q] Back to Main Menu")
    print("")
    print ("Your F&B Choice ?")
    userInput = readLine() ?? "0"
    print("")

    if userInput == "f03"{
        print("How many Gado-Gado you want to buy?")
        userInput2 = readLine() ?? "0"
        print("")
        if userInput2 != "0"{
            items = "Gado-gado"
            jumlah = Int(userInput2) ?? 0
            MyCart.addItem(by: items, by: jumlah)
       }

    }else if userInput == "f02"{
        print("How many Chicken Satay you want to buy?")
        userInput2 = readLine() ?? "0"
        print("")
        if userInput2 != "0"{
            items = "Chicken Satay"
            jumlah = Int(userInput2) ?? 0
            MyCart.addItem(by: items, by: jumlah)

     }

    }else if userInput == "f01"{
        print("How many Nasi Padang you want to buy?")
        userInput2 = readLine() ?? "0"
        print("")
        if userInput2 != "0"{
            items = "Nasi Padang"
            jumlah = Int(userInput2) ?? 0
            MyCart.addItem(by: items, by: jumlah)
        }

    }else if userInput == "b02"{
        print("How Many Mineral Water you want to buy?")
        userInput2 = readLine() ?? "0"
        print("")
        if userInput2 != "0"{
            items = "Mineral Water"
            jumlah = Int(userInput2) ?? 0
            MyCart.addItem(by: items, by: jumlah)
        }

     }else if userInput == "b01"{
        print("How Many Ice Tea you want to buy?")
        userInput2 = readLine() ?? "0"
        print("")
        if userInput2 != "0"{
            items = "Ice Tea"
            jumlah = Int(userInput2) ?? 0
            MyCart.addItem(by: items, by: jumlah)
        }

    }else if userInput == "q"{
            print("")
        }else {
            print("Option not available, please select again")
            print("")
        }
    }

}else if userInput == "2"{
    print("")
    MyCart.showListItems()

}else if userInput == "x"{
    exit(0)

}else{
    print("")
    print("Option not available, please select again")
    print("")

    }
}


