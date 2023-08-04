//
//  ViewController.swift
//  TrafficLight
//
//  Created by Мак Сим on 04.08.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = redView.frame.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
        switchButton.layer.cornerRadius = 10
    }

    
    @IBAction func switchButtonDidTapped() {
        switchButton.setTitle("NEXT", for: .normal)
        
        if redView.alpha == noTransparency {
            redView.alpha = lightTransparency
            yellowView.alpha = noTransparency
        } else if yellowView.alpha == noTransparency {
            yellowView.alpha = lightTransparency
            greenView.alpha = noTransparency
        } else if greenView.alpha == noTransparency {
            greenView.alpha = lightTransparency
            redView.alpha = noTransparency
        } else {
            redView.alpha = noTransparency
        }
    }
}

let noTransparency = 1.0
let lightTransparency = 0.3
