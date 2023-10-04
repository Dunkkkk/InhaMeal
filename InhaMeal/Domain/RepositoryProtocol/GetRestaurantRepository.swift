//
//  GetRestaurantRepository.swift
//  InhaMeal
//
//  Created by changgyo seo on 2023/09/28.
//

import Foundation

protocol GetRestaurantRepository {
    
    func getRestraunt(at date: Date) async throws -> InhaRestraunt?
}
