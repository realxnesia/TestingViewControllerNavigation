//
//  TestingViewControllerNavigationTests.swift
//  TestingViewControllerNavigationTests
//
//  Created by realxnesia on 25/01/23.
//

import XCTest
@testable import TestingViewControllerNavigation

final class TestingViewControllerNavigationTests: XCTestCase {

    var sut: ViewController!
    var navigationController: UINavigationController!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // Step 1. Create an instance of UIStoryBoard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Step 2. Instantiate UIViewController with storyboard ID
        sut = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        
        // Step 3. Make the viewDidLoad() execute
        sut.loadViewIfNeeded()
        navigationController = UINavigationController(rootViewController: sut) //root-nya SUT
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        navigationController = nil
    }
    
    func test_NextViewButton_WhenTapped_SecondViewControllerIsPushed() {
        let myPredicate = NSPredicate { input, _ in
            return (input as? UINavigationController)?.topViewController is SecondViewController
        }
        expectation(for: myPredicate, evaluatedWith: navigationController)
        
        sut.nextViewButton.sendActions(for: .touchUpInside)
        
        waitForExpectations(timeout: 1.5)
        
        guard let _ = navigationController.topViewController as? SecondViewController else {
            XCTFail()
            return
        }
    }
}
