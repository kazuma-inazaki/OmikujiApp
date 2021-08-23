//
//  ViewController.swift
//  OmikujiApp
//
//  Created by inazaki on 2021/06/03.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        myLabel.layer.borderColor = UIColor.orange.cgColor
//        myLabel.layer.borderWidth = 5
        myLabel.layer.cornerRadius = myLabel.bounds.width / 2
        myLabel.layer.masksToBounds = true
    }

    @IBOutlet weak var myLabel: UILabel!
    @IBAction func getOmikuji(_ sender: Any) {
        let results = ["大吉", "吉", "中吉", "凶", "大凶"]
        let random = arc4random_uniform(UInt32(results.count))
        
        self.myLabel.text = results[Int(random)]
    }
    
}
