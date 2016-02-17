//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let swiftTeam: Int = 13
let iOSTeam = 54
let otherTeams = 48
let totalTeam = swiftTeam + iOSTeam + otherTeams

let onSalesInferred = true
let onSalesExplicit: Bool = false
let priceInferred = 19.99
let priceExplicit: Double = 19.99

let nameInferred = "Whoopie Cushion"
let nameExplicit: String = "Whoopie Cushion"

if onSalesInferred {
    print("\(nameInferred) on sale for \(priceInferred)!")
} else {
    print("\(nameInferred) at regular price: \(priceInferred)!")
}

//1
class TipCalculator {
    //2
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    //3
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    //4
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    //5
    func returnPossibleTips() -> [Int: Double] {
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        
        // 2
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            // 3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
        
    }
}

let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()










