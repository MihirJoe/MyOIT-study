//
//  DashboardViewRepresentable.swift
//  CardinalKit_Example
//
//  Created by Mihir Joshi on 1/14/23.
//  Copyright © 2023 CardinalKit. All rights reserved.
//

import SwiftUI
import UIKit

struct DashboardViewControllerRepresentable: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIViewController
    
    func updateUIViewController(_ taskViewController: UIViewController, context: Context) {}
    func makeUIViewController(context: Context) -> UIViewController {
        let manager = CKCareKitManager.shared
        let vc = DashboardViewController(storeManager: manager.synchronizedStoreManager)
        return UINavigationController(rootViewController: vc)
    }
    
}
