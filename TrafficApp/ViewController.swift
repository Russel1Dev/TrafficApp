//
//  ViewController.swift
//  TrafficApp
//
//  Created by Mac on 29/07/2022.
//  Copyright © 2022 Russel. All rights reserved.
//

import UIKit

enum chooseOfLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = chooseOfLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }

    override func viewDidLayoutSubviews() {  // нагуглил этот переопределенный метод
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        startButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            redLight.alpha = 1
            greenLight.alpha = 0.3
            currentLight = .yellow
        case .yellow:
            yellowLight.alpha = 1
            redLight.alpha = 0.3
            currentLight = .green
        case .green:
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
            currentLight = .red
        }
    }
}

