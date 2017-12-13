//
//  ViewController.swift
//  rateWithStars
//
//  Created by adminaccount on 12/13/17.
//  Copyright © 2017 adminaccount. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var stars: Rating?
    @IBOutlet weak var rating: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func vote(_ sender: UIButton) {
        let tmp = Double (rating.text!)
        if stars != nil {
            stars?.removeFromSuperview()
        }
        stars = Rating(x: 30, y: 50, height: 70, currentRate: tmp!)
        if stars != nil {
            view.addSubview(stars!)
        }
    }
    
}

