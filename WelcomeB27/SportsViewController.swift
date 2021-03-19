//
//  SportsViewController.swift
//  WelcomeB27
//
//  Created by Omar Hisham on 3/18/21.
//

import UIKit

class SportsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func mathClicked(_ sender: UIButton) {
        
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        
        let vc = st.instantiateViewController(identifier: "DetailedViewController") as! DetailedViewController
        
        vc.subjectTitle = "Math"
        
    
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func englishClicked(_ sender: UIButton) {
        
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        
        let vc = st.instantiateViewController(identifier: "DetailedViewController") as! DetailedViewController
       
        vc.subjectTitle = "English"
        navigationController?.pushViewController(vc, animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
