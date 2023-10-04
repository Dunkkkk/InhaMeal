//
//  File.swift
//  InhaMeal
//
//  Created by changgyo seo on 2023/09/28.
//

import Foundation


struct InhaRestraunt: Codable {
    let dormCafe, studentCafe, staffCafe: Cafe
    let next: Bool
    let prev: Bool
    //let createdDate: String
    let id: String
}


extension InhaRestraunt {
    static let dummy: InhaRestraunt = InhaRestraunt(dormCafe: Cafe.dummy, studentCafe: Cafe.dummy, staffCafe: Cafe.dummy, next: true, prev: true, id: "1")
    static let dummy2: InhaRestraunt = InhaRestraunt(dormCafe: Cafe.dummy2, studentCafe: Cafe.dummy2, staffCafe: Cafe.dummy2, next: false, prev: false, id: "2")
}
