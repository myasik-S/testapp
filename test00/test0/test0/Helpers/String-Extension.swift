//
//  String-Extension.swift
//  test0
//
//  Created by Aleksandr Myasoedov on 22.03.2023.
//

import Foundation
extension String {
    func isValid(regexes: [String]) -> Bool {
        for regex in regexes {
            let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
            if predicate.evaluate(with: self) == true {
                return true
            }
        }
        return false
    }
}
