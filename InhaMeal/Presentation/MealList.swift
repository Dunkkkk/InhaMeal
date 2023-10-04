//
//  MealList.swift
//  InhaMeal
//
//  Created by changgyo seo on 2023/07/05.
//

import SwiftUI

struct MealList: View {
    
    @Binding var selectedStage: Int
    @State private var offset = CGFloat.zero
    var cafe: [Cafe]
    let spacing: CGFloat = 15
    let viewCount = 3

    
    var body: some View {
        GeometryReader { geo in
            let width = geo.size.width
            LazyHStack(spacing: spacing) {
                ForEach(cafe.indices) { cafeIndex in
                    ScrollView {
                        VStack(spacing: 15) {
                            ForEach(cafeToMeals(cafe[cafeIndex]), id: \.self) { meal in
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(.white)
                                    MealDetails(meals: meal)
                                }
                            }
                        }
                    }
                    .frame(width: width)
                    .scrollIndicators(.hidden)
                }
            }
            .offset(x: CGFloat(-selectedStage) * (width + spacing) + offset)
            .gesture(
                DragGesture(minimumDistance: 10)
                    .onChanged { value in
                        offset = value.translation.width
                    }
                    .onEnded { value in
                        withAnimation(.easeIn) {
                            offset = value.predictedEndTranslation.width
                            if offset < 0 && selectedStage < viewCount - 1 {
                                selectedStage += 1
                            } else if offset > 0  && selectedStage > 0 {
                                selectedStage -= 1
                            }
                            offset = 0
                        }
                    }
            )
        }
    }
    
    private func cafeToMeals(_ cafe: Cafe) -> [[Meal]] {
        
        var answer: [[Meal]] = []
        var currentCategory = cafe.meals.first!.category
        var tempArray: [Meal] = []
        for item in cafe.meals {
            if currentCategory == item.category {
                tempArray.append(item)
            }
            else {
                answer.append(tempArray)
                tempArray.removeAll()
                tempArray.append(item)
            }
            print(item.category)
            currentCategory = item.category
        }
        answer.append(tempArray)
        print(answer)
        return answer
    }
}
//
//struct preivew_mealList: PreviewProvider {
//    static var previews: some View {
//        MealList(cafe: Cafe.dummy)
//    }
//}
