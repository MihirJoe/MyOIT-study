//
//  CoffeeChartCardView.swift
//  CardinalKit_Example
//
//  Created by Mihir Joshi on 1/14/23.
//  Copyright © 2023 CardinalKit. All rights reserved.
//

import SwiftUI
import CareKitUI

struct CoffeeChartCardView: View {
    
    @ObservedObject var coffeeChartViewModel = CoffeeChartViewModel()
    
    var body: some View {
        
        
        CardView {
            GeometryReader { geometry in
                VStack {
                    Text("ResearchKit Pie Chart").bold().padding()
                    Spacer()
                    CoffeePieChartView(dataSource: coffeeChartViewModel.coffeeDataSource).padding()
                }
            }
            
        }.scaledToFit().clipped()
            .onAppear {
                // Refresh Coffee Chart
                coffeeChartViewModel.updateCoffeeChart()
            }
    }
}
