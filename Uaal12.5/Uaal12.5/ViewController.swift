//
//  ViewController.swift
//  Uaal12.5
//
//  Created by Takayuki Sei on 2021/04/06.
//

import UIKit
import UnityFramework

class ViewController: UIViewController {
    @IBOutlet weak var unityContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let unity = unityFramework() {
            unityContainerView.addSubview(unity.appController()!.rootView)
        }
    }
    
    @IBAction func counterClockwise(_ sender: Any) {
        if let unity = unityFramework() {
            unity.sendMessageToGO(withName: "Canvas", functionName: "Counterclockwise", message: "hoge")
        }
    }
}

