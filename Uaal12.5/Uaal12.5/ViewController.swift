//
//  ViewController.swift
//  Uaal12.5
//
//  Created by Takayuki Sei on 2021/04/06.
//

import UIKit
import UnityFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let unity = unityFramework() {
            view.addSubview(unity.appController()!.rootView)
        }
    }
}

