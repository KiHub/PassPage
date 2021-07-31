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
    
    
    let primaryColor = UIColor(red: 209/255, green: 110/255, blue: 50/255, alpha: 1)
    let secondaryColor = UIColor(red: 44/255, green: 210/255, blue: 100/255, alpha: 1)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = helloText
        addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)

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
    extension HelloViewController {
        func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
            gradient.colors = [topColor.cgColor, bottomColor.cgColor]
            gradient.locations = [0.0, 1.0]
            gradient.startPoint = CGPoint(x: 0, y: 0)
            gradient.endPoint = CGPoint(x: 0, y: 1)
            view.layer.insertSublayer(gradient, at: 0)
        
        }
        
        
        
        }
    


