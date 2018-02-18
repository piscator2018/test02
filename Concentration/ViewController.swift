//
//  ViewController.swift
//  Concentration
//
//  Created by Eli on 2/4/18.
//  Copyright © 2018 Eli. All rights reserved.
//

import UIKit
import FacebookLogin

class ViewController: UIViewController {

    @IBAction func touchCard(_ sender: UIButton) {
        print("ah! a ghost!")
        flipCard(withEmoji: "👻", on: sender)
    }
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("KidTimer", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    override func viewDidLoad() {
        let loginButton = LoginButton(readPermissions: [ .publicProfile ])
        loginButton.center = view.center
        
        view.addSubview(loginButton)
    }
    
}

