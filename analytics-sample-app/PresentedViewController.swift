//
//  PresentedViewController.swift
//  analytics-sample-app
//
//  Created by xxxx on 29/9/2022.
//

import UIKit
import FirebaseAnalytics

class PresentedViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear on presensted view controller")
        Analytics.logEvent(AnalyticsEventScreenView,
                           parameters: [AnalyticsParameterScreenName: "presented"])
    }

}
