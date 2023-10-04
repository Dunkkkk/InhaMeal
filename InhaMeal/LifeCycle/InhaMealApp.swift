//
//  InhaMealApp.swift
//  InhaMeal
//
//  Created by changgyo seo on 2023/07/05.
//

import SwiftUI

@main
struct InhaMealApp: App {
    var body: some Scene {
        WindowGroup {
            DateSelectView(searchRestaurantUseCase: SearchRestaurantUseCaseImplement(getRestrantRepository: GetRestaurantRepositoryImplement()))
        }
    }
}
