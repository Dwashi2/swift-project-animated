//
//  ViewController.swift
//  animated
//
//  Created by Daniel Washington Ignacio on 09/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var anim: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func aniFun(_ sender: Any) {
        UIView.animate(withDuration: 1, delay: 0.5, animations: {
            self.anim.backgroundColor = .purple
            self.anim.frame.size.width += 10
            self.anim.frame.size.height += 10
        })
        { _ in
            UIView.animate(withDuration: 1,delay: 0,options: .curveEaseIn){
                self.anim.backgroundColor = .orange
                self.anim.frame.origin.y += 40
            }
        }
    }
    
}

