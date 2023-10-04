//
//  DateSelectView.swift
//  InhaMeal
//
//  Created by changgyo seo on 2023/09/28.
//

import SwiftUI

struct DateSelectView: View {
    
    @State private var showing: Bool = false
    @State private var showingToday: Bool = false
    @State var inhaRestraunt: InhaRestraunt?
    @State var date: Date = Date()
    var searchRestaurantUseCase: SearchRestaurantUseCase
    
    var body: some View {
        VStack {
            ZStack {
                Text(date.toString)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.inhaBlue)
                HStack {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.inhaBlue)
                        .onTapGesture {
                            if let restraunt = inhaRestraunt,
                               restraunt.prev {
                                date = date.previousDay
                                inhaRestraunt = nil
                                Task {
                                    inhaRestraunt = try! await searchRestaurantUseCase.getRestaraunt(at: date)
                                }
                            }
                            else {
                                showing = true
                            }
                        }
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.inhaBlue)
                        .onTapGesture {
                            if let restraunt = inhaRestraunt,
                               restraunt.next  {
                                date = date.nextDay
                                inhaRestraunt = nil
                                Task {
                                    inhaRestraunt = try! await searchRestaurantUseCase.getRestaraunt(at: date)
                                }
                            }
                            else {
                                showing = true
                            }
                        }
                }
                .padding()
            }
            .frame(height: 40)
            if inhaRestraunt != nil {
                RastrauntPageView(rastraunt: inhaRestraunt! )
            }
            else {
                Spacer()
                ProgressView()
                Spacer()
            }
        }
        .onAppear {
            Task {
                if let searchResult = try? await searchRestaurantUseCase.getRestaraunt(at: date) {
                    inhaRestraunt = searchResult
                }
                else {
                    showingToday = true
                }
            }
        }
        .alert("해당 날짜의 학식은 아직 최신화되지 않았습니다.", isPresented: $showing) {
              Button("OK", role: .cancel) {
                  showing = false
              }
        }
        .alert("오늘 학식은 아직 최신화되지 않았습니다.", isPresented: $showingToday) {
              Button("OK", role: .cancel) {
                  showingToday = false
              }
        }
    }
}
