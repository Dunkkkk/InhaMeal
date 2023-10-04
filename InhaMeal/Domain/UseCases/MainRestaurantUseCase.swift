//
//  UserDefaultUseCase.swift
//  InhaMeal
//
//  Created by changgyo seo on 2023/07/06.
//

import Foundation

protocol MainRestaurantUseCase {
    func SetMainRestaurant(_ restaurant: String)
    func GetMainRestaurant() -> String?
}

class MainRestaurantUseCaseImplementation: MainRestaurantUseCase {
    
    func SetMainRestaurant(_ restaurant: String) {
        UserDefaults.standard.set("restaurant", forKey: "InhaMeal")
    }
    
    func GetMainRestaurant() -> String? {
        UserDefaults.standard.string(forKey: "InhaMeal")
    }
}
