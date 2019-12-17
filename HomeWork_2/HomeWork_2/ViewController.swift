//
//  ViewController.swift
//  HomeWork_2
//
//  Created by Sasza Niehaj on 12/17/19.
//  Copyright © 2019 Sasza Niehaj. All rights reserved.
//

import UIKit

//MARK: - ViewController
class ViewController: UIViewController {
    
    //MARK: - outlets
    @IBOutlet weak var segmentedSwitch: UISegmentedControl!
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var signUpView: UIView!
    
    //MARK: - enums
    enum Auth: Int {
        case login
        case signIn
    }
    
    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - actions
    @IBAction func switchSelected(_ sender: Any) {
        
        guard let option = Auth(rawValue: segmentedSwitch.selectedSegmentIndex) else { return }
        
        switch option {
        case .login: print("Hello from Login")
        case .signIn: print("Hello from Sign Up")
        }
    }
    
}
