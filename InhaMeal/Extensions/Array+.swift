//
//  Array+.swift
//  InhaMeal
//
//  Created by changgyo seo on 2023/07/05.
//

import Foundation

extension Array where Element: Hashable {
    
    func uniqued() -> [Element] {
            var set = Set<Element>()
            return filter { set.insert($0).inserted }
    }
}

extension Array where Element == Meal {
//    
//    func rastrauntNames() -> [String] {
//        self.map { $0.restaurant }.uniqued()
//    }
}
