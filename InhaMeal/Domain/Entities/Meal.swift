//
//  Meal.swift
//  InhaMeal
//
//  Created by changgyo seo on 2023/07/05.
//

import Foundation

// MARK: - Meal
struct Meal: Codable, Hashable {
    let name: String
    let menus: [String]
    let category, opentime, price: String
}

extension Meal {
    static var dummy =  Meal(name: "아침", menus: ["가라야게 덮밥", "인절미 토스트", "깍뚜기"], category: "아침", opentime: "7:00-8:30", price: "5200")
    
    static var dummy2 = Meal(name: "아침", menus: ["가라야게 덮밥", "인절미 토스트", "깍뚜기"], category: "아침", opentime: "7:00-8:30", price: "5200")
    
    static var dummy3 = Meal(name: "아침", menus: ["가라야게 덮밥", "인절미 토스트", "깍뚜기"], category: "아침", opentime: "7:00-8:30", price: "5200")
    
    static var dummy4 = Meal(name: "아침", menus: ["가라야게 덮밥", "인절미 토스트", "깍뚜기"], category: "아침", opentime: "7:00-8:30", price: "5200")
}
