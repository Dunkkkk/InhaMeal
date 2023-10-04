//
//  RastrauntPageView.swift
//  InhaMeal
//
//  Created by changgyo seo on 2023/07/05.
//

import SwiftUI

struct RastrauntPageView: View {
    
    let rastraunt: InhaRestraunt
    @State var selectedStage = 0
    
    var body: some View {
        ZStack {
            Color.listBGColor
                .ignoresSafeArea()
            VStack {
                HStack {
                    ZStack {
                        Capsule()
                            .frame(height: 38)
                            .foregroundColor(selectedStage == 0 ? .inhaBlue : .categoryButtonColor)
                        Text("생활관")
                            .foregroundColor(selectedStage == 0 ? .white : .categoryButtonTextEnableColor)
                    }
                    .onTapGesture {
                        withAnimation {
                            selectedStage = 0
                        }
                        
                    }
                    ZStack {
                        Capsule()
                            .frame(height: 38)
                            .foregroundColor(selectedStage == 1 ? .inhaBlue : .categoryButtonColor)
                        Text("학생식당")
                            .foregroundColor(selectedStage == 1 ? .white : .categoryButtonTextEnableColor)
                    }
                    .onTapGesture {
                        withAnimation {
                            selectedStage = 1
                        }
                    }
                    ZStack {
                        Capsule()
                            .frame(height: 38)
                            .foregroundColor(selectedStage == 2 ? .inhaBlue : .categoryButtonColor)
                        Text("교직원 식당")
                            .foregroundColor(selectedStage == 2 ? .white : .categoryButtonTextEnableColor)
                    }
                    .onTapGesture {
                        withAnimation {
                            selectedStage = 2
                        }
                    }
                }
                MealList(selectedStage: $selectedStage, cafe: [rastraunt.dormCafe,
                                                               rastraunt.studentCafe,
                                                               rastraunt.staffCafe])
            }
            .padding([.leading, .trailing], 33)
            .padding([.top], 15)
        }
    }
    
    @ViewBuilder
    private func catrgoryButton(_ str: String) -> some View {
        ZStack {
            Capsule()
                .frame(height: 38)
                .foregroundColor(.categoryButtonColor)
            Text(str)
        }
    }
    
}

struct preview_Rastraunt: PreviewProvider {
    static var previews: some View {
        RastrauntPageView(rastraunt: InhaRestraunt.dummy)
    }
}
