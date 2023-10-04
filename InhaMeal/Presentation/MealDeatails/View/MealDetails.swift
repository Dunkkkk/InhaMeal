//
//  ContentView.swift
//  InhaMeal
//
//  Created by changgyo seo on 2023/07/05.
//

import SwiftUI

struct MealDetails: View {
    
    var meals: [Meal]
    
    var body: some View {
        VStack {
            HStack {
                Text(meals.first!.name)
                    .font(.system(size: 22, weight: .bold))
                
                Spacer()
                Text(meals.first!.opentime)
                    .foregroundColor(.enableTextColor)
                    .background {
                        Capsule()
                            .foregroundColor(.enableColor)
                            .frame(width: 120, height: 26)
                    }
            }
            ForEach(meals.indices) { mealIndex in
                Rectangle().foregroundColor(.clear)
                    .frame(height: 20)
                VStack(spacing: 22) {
                    ForEach(oneDementionArrayToTwoDementionArray(meals[mealIndex].menus)) { foods in
                        HStack {
                            Text(foods[0])
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.53))
                            Spacer()
                            Text(foods[1])
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.53))
                        }
                    }
                }
                
                Rectangle().foregroundColor(.clear)
                    .frame(height: 16)
                
                HStack {
                    Spacer()
                    Text(meals[mealIndex].price)
                        .foregroundColor(.enableTextColor)
                }
                if mealIndex != meals.count - 1 {
                    Divider()
                        .foregroundColor(.enableTextColor)
                }
            }
        }
        .padding(.top, 31)
        .padding(.bottom, 18)
        .padding(.leading, 31)
        .padding(.trailing, 31)
    }
    
    private func oneDementionArrayToTwoDementionArray(_ array: [String]) -> [[String]] {
        var answer: [[String]] = []
        var tempArray: [String] = []
        for item in array {
            tempArray.append(item)
            if tempArray.count == 2 {
                answer.append(tempArray)
                tempArray.removeAll()
            }
        }
        if tempArray.count == 1 {
            tempArray.append("")
            answer.append(tempArray)
        }
        
        return answer
    }
}

extension Array: Identifiable where Element == String {
    public var id: String {
        UUID().uuidString
    }
}

struct preivewMealDetails: PreviewProvider {
    static var previews: some View {
        MealDetails(meals: Cafe.dummy.meals)
    }
}
