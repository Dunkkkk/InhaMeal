//
//  SearchMealUseCase.swift
//  InhaMeal
//
//  Created by changgyo seo on 2023/07/06.
//

import Foundation
import Alamofire

protocol SearchRestaurantUseCase {
    
    var getRestrantRepository: GetRestaurantRepository { get }
    
    func getRestaraunt(at date: Date) async throws -> InhaRestraunt?
}

struct SearchRestaurantUseCaseImplement: SearchRestaurantUseCase {
    
    var getRestrantRepository: GetRestaurantRepository
    
    func getRestaraunt(at date: Date) async throws -> InhaRestraunt? {
        let temp = try? await getRestrantRepository.getRestraunt(at: date)
        print("@DEBUG \(temp)")
        return temp
    }
    
}

