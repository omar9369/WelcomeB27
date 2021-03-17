//
//  ViewController.swift
//  WelcomeB27
//
//  Created by Omar Hisham on 3/17/21.
//

import UIKit

class ViewController: UIViewController {

    var i = 0;
    var check = false;
    @IBOutlet weak var counter: UILabel!
    
    
    @IBAction func bttn(_ sender: Any) {
        
        self.view.backgroundColor = UIColor.randomColor();
        if(i == 15){
            check = true;
        }
        else if(i == 0){
            check = false;
        }
        if(check == true){
            i = i - 1;
        }else{
            i = i + 1;
        }
        counter.text = "\(i)";
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }  
}

//Inheriting from UIColor
extension UIColor {
    static func randomColor(saturation: CGFloat = 1, brightness: CGFloat = 1, alpha: CGFloat = 1) -> UIColor {
        let hue = CGFloat(arc4random_uniform(361)) / 360.0
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
    }
}
