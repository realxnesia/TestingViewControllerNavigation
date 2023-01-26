//
//  SpyNavigationController.swift
//  TestingViewControllerNavigationTests
//
//  Created by realxnesia on 26/01/23.
//

import Foundation
import UIKit

class SpyNavigationController: UINavigationController {
    var pushedViewController: UIViewController!
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
        
        pushedViewController = viewController
    }
}
