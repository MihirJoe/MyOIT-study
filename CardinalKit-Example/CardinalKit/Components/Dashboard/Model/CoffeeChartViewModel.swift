//
//  CoffeeChartViewModel.swift
//  CardinalKit_Example
//
//  Created by Mihir Joshi on 1/14/23.
//  Copyright © 2023 CardinalKit. All rights reserved.
//

import SwiftUI

class CoffeeChartViewModel: ObservableObject {
    @Published var coffeeDataSource = CoffeeChartDataSource(countPerAnswer: [NSNumber : CGFloat]())
    
    func updateCoffeeChart() {
        CoffeeChartDataSource.fetchData { result in
            self.coffeeDataSource = CoffeeChartDataSource(countPerAnswer: result)
        }
    }
}
