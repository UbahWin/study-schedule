//
//  Int16.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 01.06.2023.
//

import Foundation

extension Int16 {
    func toRoman() -> String {
        let conversionTable: [(intNumber: Int, romanNumber: String)] =
            [(1000, "M"),
             (900, "CM"),
             (500, "D"),
             (400, "CD"),
             (100, "C"),
             (90, "XC"),
             (50, "L"),
             (40, "XL"),
             (10, "X"),
             (9, "IX"),
             (5, "V"),
             (4, "IV"),
             (1, "I")]
        var roman = ""
        var remainder = 0
        
        for entry in conversionTable {
            let quotient = (Int(self) - remainder) / entry.intNumber
            remainder += quotient * entry.intNumber
            roman += String(repeating: entry.romanNumber, count: quotient)
        }
        
        return roman
    }
}

extension Int {
    func toRoman() -> String {
        let conversionTable: [(intNumber: Int, romanNumber: String)] =
            [(1000, "M"),
             (900, "CM"),
             (500, "D"),
             (400, "CD"),
             (100, "C"),
             (90, "XC"),
             (50, "L"),
             (40, "XL"),
             (10, "X"),
             (9, "IX"),
             (5, "V"),
             (4, "IV"),
             (1, "I")]
        var roman = ""
        var remainder = 0
        
        for entry in conversionTable {
            let quotient = (Int(self) - remainder) / entry.intNumber
            remainder += quotient * entry.intNumber
            roman += String(repeating: entry.romanNumber, count: quotient)
        }
        
        return roman
    }
}
