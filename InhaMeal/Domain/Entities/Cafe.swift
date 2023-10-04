//
//  Cafe.swift
//  InhaMeal
//
//  Created by changgyo seo on 2023/09/28.
//

import Foundation

// MARK: - Cafe
struct Cafe: Codable {
    let name: String
    let meals: [Meal]
}

extension Cafe {
    static var dummy = Cafe(name: "생활관", meals: [
        Meal(name: "아침", menus: ["가라야게 덮밥", "인절미 토스트", "깍뚜기"], category: "아침", opentime: "7:00-8:30", price: "5200"),
        Meal(name: "아침", menus: ["얼갈이 된장국", "고추장 오리 불고기", "어묵 계란전", "숙주나물"], category: "아침", opentime: "7:00 ~ 8:30", price: "5200"),
        Meal(name: "아침", menus: ["가라야게 덮밥", "인절미 토스트", "깍뚜기"], category: "아침", opentime: "7:00-8:30", price: "5200"),
        Meal(name: "점심", menus: ["얼갈이 된장국", "고추장 오리 불고기", "어묵 계란전", "숙주나물"], category: "점심", opentime: "7:00 ~ 8:30", price: "5200"),
        Meal(name: "점심", menus: ["가라야게 덮밥", "인절미 토스트", "깍뚜기"], category: "점심", opentime: "7:00-8:30", price: "5200"),
        Meal(name: "점심", menus: ["얼갈이 된장국", "고추장 오리 불고기", "어묵 계란전", "숙주나물"], category: "점심", opentime: "7:00 ~ 8:30", price: "5200")
    ])
    
    static var dummy2 = Cafe(name: "생활관", meals: [
        Meal(name: "아침", menus: ["Ehdrnr", "인절미 토스트", "깍뚜기"], category: "아침", opentime: "", price: "5200"),
        Meal(name: "아침", menus: ["얼갈이 된장국", "고추장 오리 불고기", "어묵 계란전", "숙주나물"], category: "아침", opentime: "07:00 ~ 8:30", price: "5200"),
        Meal(name: "아침", menus: ["가라야게 덮밥", "인절미 토스트", "깍뚜기"], category: "아침", opentime: "7:00-8:30", price: "5200"),
        Meal(name: "점심", menus: ["얼갈이 된장국", "고추장 오리 불고기", "어묵 계란전", "숙주나물"], category: "점심", opentime: "07:00 ~ 8:30", price: "5200"),
        Meal(name: "점심", menus: ["가라야게 덮밥", "인절미 토스트", "깍뚜기"], category: "점심", opentime: "7:00-8:30", price: "5200"),
        Meal(name: "점심", menus: ["얼갈이 된장국", "고추장 오리 불고기", "어묵 계란전", "숙주나물"], category: "점심", opentime: "07:00 ~ 8:30", price: "5200")
    ])
}
