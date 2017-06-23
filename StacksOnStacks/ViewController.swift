//
//  ViewController.swift
//  StacksOnStacks
//
//  Created by Paul Minh Pham on 6/23/17.
//  Copyright © 2017 Paul Minh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heart: UIImageView!
    @IBOutlet weak var LikeBtn: UIButton!
    @IBOutlet weak var unlike: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func likeBtnPressed(_ sender: Any) {
        if heart.isHidden {
            unlike.isHidden = true
            unlike.alpha = 1.0
            
            heart.isHidden = false
            UIView.animate(withDuration: 2, animations: {self.heart.alpha = 0})
            LikeBtn.setTitle("UNLIKE", for: .normal)
        }
        else {
            heart.isHidden = true
            heart.alpha = 1.0
            
            unlike.isHidden = false
            UIView.animate(withDuration: 2, animations: {self.unlike.alpha = 0})
            LikeBtn.setTitle("LIKE", for: .normal)
        }
    }

}

