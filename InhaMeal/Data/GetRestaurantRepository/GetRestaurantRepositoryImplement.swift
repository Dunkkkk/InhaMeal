//
//  GetRestaurantRepository.swift
//  InhaMeal
//
//  Created by changgyo seo on 2023/09/28.
//

import Foundation
import Alamofire

struct GetRestaurantRepositoryImplement: GetRestaurantRepository {
    
    func getRestraunt(at date: Date) async throws -> InhaRestraunt? {
        
        //        let baseURL = NetworkConstants.endpoint + NetworkConstants.domain + "20230926"
        //        let request = AF.request(baseURL, method: .get)
        //        let dataTask = request.sera
        //
        //        print("@DEBUG \(baseURL)")
        //
        //        switch await dataTask.result {
        //        case .success(let value):
        //            guard let response = await dataTask.response.response, (200...299).contains(response.statusCode) else {
        //                throw RestrauntError.cantDecoding
        //            }
        //
        //            return value
        //        case .failure:
        //            throw RestrauntError.cantLoad
        //        }
        //
        return try? await withCheckedThrowingContinuation { continuation in
            AF.request(
                NetworkConstants.endpoint + NetworkConstants.domain + "20230926",
                requestModifier: { $0.timeoutInterval = 10 }
            )
            .responseData { response in
                switch response.result {
                case let .success(data):
                    do {
                        print("@DEBUG here")
                        //print("@DEBUG \(String(data: data, encoding: .utf8))")
                        let decodingResult = try JSONDecoder().decode(InhaRestraunt.self, from: data)
                        continuation.resume(returning: decodingResult)
                    }
                    catch {
                        print("@DEBUG \(error)")
                        continuation.resume(throwing: error)
                    }
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
}

class GetRestaurantMockUp_returnDummy_withSleep5: GetRestaurantRepository {
    
    func getRestraunt(at date: Date) async throws -> InhaRestraunt? {
        sleep(5)
        return InhaRestraunt.dummy2
    }
}

class GetRestaurantMockUp_returnNil: GetRestaurantRepository {
    
    func getRestraunt(at date: Date) async throws -> InhaRestraunt? {
        nil
    }
}
