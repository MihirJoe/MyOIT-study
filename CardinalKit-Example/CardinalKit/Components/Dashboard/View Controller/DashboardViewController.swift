//
//  CoffeeChartViewController.swift
//  CardinalKit_Example
//
//  Created by Mihir Joshi on 1/14/23.
//  Copyright © 2023 CardinalKit. All rights reserved.
//

import Foundation
import UIKit
import CareKit
import CareKitUI
import ResearchKit
import SwiftUI

final class DashboardViewController: OCKListViewController, ORKTaskViewControllerDelegate {
 
    let primaryColor: Color = Color(CKConfig.shared.readColor(query: "Primary Color") ?? UIColor.red)
    
    
    let storeManager: OCKSynchronizedStoreManager
    

    init(storeManager: OCKSynchronizedStoreManager) {
        self.storeManager = storeManager
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Dashboard"
        navigationController?.navigationBar.prefersLargeTitles = true

        appendView(UIView(), animated: true) // Spacer View
        
        // MARK: Coffee Pie Chart View
        
        let coffeePieChart = UIHostingController(rootView: CoffeeChartCardView())
        appendView(coffeePieChart.view, animated: true)
    }

    // MARK: ORKTaskViewControllerDelegate
    func taskViewController(
        _ taskViewController: ORKTaskViewController,
        didFinishWith reason: ORKTaskViewControllerFinishReason,
        error: Error?) {

        taskViewController.dismiss(animated: true, completion: nil)
    }
}
