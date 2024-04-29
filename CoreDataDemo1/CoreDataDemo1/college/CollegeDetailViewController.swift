//
//  CollegeDetailViewController.swift
//  CoreDataDemo1
//
//  Created by STUDENT on 4/25/24.
//

import UIKit

class CollegeDetailViewController: UIViewController {
    
    @IBOutlet weak var collegedetail: UILabel!
    
    
    @IBOutlet weak var label1name: UILabel!
    
    
    @IBOutlet weak var label2address: UILabel!
    
    var object : College?
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.label1name.text = object?.name
        self.label2address.text = object?.address
        

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
