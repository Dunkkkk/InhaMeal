//
//  Date+.swift
//  InhaMeal
//
//  Created by changgyo seo on 2023/07/05.
//

import Foundation

extension Date {
    
    var toString: String {
        
        let formmater = DateFormatter()
        formmater.dateFormat = "yyyy-MM-dd(E)"
        formmater.locale = Locale(identifier: "ko")
        
        return formmater.string(from: self)
    }
    
    var toStringForURL: String {
        let formmater = DateFormatter()
        formmater.dateFormat = "yyyyMMdd"
        formmater.locale = Locale(identifier: "ko")
        
        return formmater.string(from: self)
    }
    
    var nextDay: Date {
        return self.addingTimeInterval(86400)
    }
    
    var previousDay: Date {
        return self.addingTimeInterval(-86400)
    }
    
    
}
