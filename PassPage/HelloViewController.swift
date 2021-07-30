//
//  HelloViewController.swift
//  PassPage
//
//  Created by  Mr.Ki on 30.07.2021.
//

import UIKit

class HelloViewController: UIViewController {
    
    var helloText: String!
    
    
    @IBOutlet weak var helloLabel: UILabel!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = helloText

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
