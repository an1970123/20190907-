//
//  ViewController.swift
//  20190907骰子
//
//  Created by Michael Chen on 2019/9/7.
//  Copyright © 2019 Michael Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dices: [UIImageView]!
    let imageNames = ["one", "two" , "three" , "five" , "six"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            for imageView in dices{
                imageView.image = UIImage(named: imageNames.randomElement()!)
            }
        }
    }
    @IBAction func sankaku(_ sender: Any) {
        for imageView in dices{
            imageView.image =
                UIImage(named:imageNames.randomElement()!)
        }
    }
    @IBAction func batsu(_ sender: Any)
    {
    for imageView in dices{
    imageView.image =
        UIImage(named:imageNames.randomElement()!)
    }
}
    @IBAction func maru(_ sender: Any) {
    for imageView in dices{
    imageView.image =
        UIImage(named:imageNames.randomElement()!)
    }
}
    @IBAction func sehou(_ sender: Any) {
    for imageView in dices{
    imageView.image =
        UIImage(named:imageNames.randomElement()!)
    }
}
    @IBAction func showSwitch(_ sender: UISwitch) {
        for imageView in dices{
            imageView.isHidden = !sender.isOn
        }
    }
}
