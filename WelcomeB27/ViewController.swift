//
//  ViewController.swift
//  WelcomeB27
//
//  Created by Omar Hisham on 3/17/21.
//

import UIKit

class ViewController: UIViewController {

    var i = 0;
    var check:Bool = false;

    
    
    @IBAction func Slide(_ sender: UISlider) {
        view.alpha = CGFloat(sender.value)
    }
    
   
    
   // view.alpha = CGFloat(sender.value)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func subjectClicked(_ sender: UIButton) {
        
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        
        let vc = st.instantiateViewController(identifier: "DetailedViewController") as! DetailedViewController
       
            
        if sender.titleLabel?.text == "Cricket" {
            //nned ref story
            vc.subjectTitle = "Cricket"
            //once vc ,push vc to nc
            
        } else {
            vc.subjectTitle = "Badminton"

        }
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}

//Inheriting from UIColor
extension UIColor {
    static func randomColor(saturation: CGFloat = 1, brightness: CGFloat = 1, alpha: CGFloat = 1) -> UIColor {
        let hue = CGFloat(arc4random_uniform(361)) / 360.0
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
    }
}
