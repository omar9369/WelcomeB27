//
//  DetailedViewController.swift
//  WelcomeB27
//
//  Created by Omar Hisham on 3/18/21.
//

import UIKit

class DetailedViewController: UIViewController {

    var subjectTitle: String = ""
    
    @IBOutlet weak var lblSubjectName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblSubjectName.text = subjectTitle

        // Do any additional setup after loading the view.
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
