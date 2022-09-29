//
//  PresentingViewController.swift
//  analytics-sample-app
//
//  Created by xxxx on 29/9/2022.
//

import UIKit
import FirebaseAnalytics

class PresentingViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // NOTE: this method is not called when presented view controller is dismissed.
        print("view did appear on presenting view controller")
        Analytics.logEvent(AnalyticsEventScreenView,
                           parameters: [AnalyticsParameterScreenName: "presenting"])
    }

    @IBAction func tappedShowModal(_ sender: UIButton) {
        Analytics.logEvent(AnalyticsEventSelectContent, parameters: [
          AnalyticsParameterItemName: "show modal",
          AnalyticsParameterContentType: "button"
        ])
    }

    @IBAction func tappedTestEvent(_ sender: UIButton) {
        Analytics.logEvent(AnalyticsEventSelectContent, parameters: [
          AnalyticsParameterItemName: "test event",
          AnalyticsParameterContentType: "button"
        ])
    }
}

