//
//  ViewController.swift
//  TestingViewControllerNavigation
//
//  Created by realxnesia on 25/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextViewButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextViewButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
}

