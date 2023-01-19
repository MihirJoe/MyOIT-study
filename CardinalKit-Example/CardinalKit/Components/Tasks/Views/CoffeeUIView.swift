//
//  CoffeeUIView.swift
//  CardinalKit_Example
//
//  Created for the CardinalKit Framework.
//  Copyright © 2019 Stanford University. All rights reserved.
//

import ResearchKit
import SwiftUI

struct CoffeeUIView: View {
    
    @State var coffeeChartViewModel = CoffeeChartViewModel()
    
    var body: some View {
        VStack(spacing: 10) {
            Image("CKLogo")
                .resizable()
                .scaledToFit()
                .padding(.leading, Metrics.paddingHorizontalMain * 4)
                .padding(.trailing, Metrics.paddingHorizontalMain * 4)
                .accessibilityLabel(Text("Logo"))
            
            CoffeePieChartView(dataSource: coffeeChartViewModel.coffeeDataSource)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .scaledToFit()
                .padding(Metrics.paddingHorizontalMain * 4)
//                .onAppear {
//                    coffeeChartViewModel.updateCoffeeChart()
//                }
            
            Spacer()
            
            Image("SBDLogoGrey")
                .resizable()
                .scaledToFit()
                .padding(.leading, Metrics.paddingHorizontalMain * 4)
                .padding(.trailing, Metrics.paddingHorizontalMain * 4)
                .accessibilityLabel(Text("Logo"))
        }
    }
}

struct CoffeeUIView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeUIView()
    }
}
