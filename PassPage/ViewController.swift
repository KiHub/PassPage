//
//  ViewController.swift
//  PassPage
//
//  Created by  Mr.Ki on 30.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    let name = "Kirill"
    let password = "12345"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 17
        
        
        
        
        
        
        
    }

    
    @IBAction func loginPressed() {
    
    // @IBAction func loginPressed(_ sender: UIButton) {
        
//        guard nameTextField.text!.isEmpty && passwordTextField.text?.isEmpty == false
//        else {return}
        
        
        if nameTextField.text == name && passwordTextField.text == password  {
            performSegue(withIdentifier: "showHello", sender: nil)
        } else {
            print("Error")
            let alert = UIAlertController(title: "Error", message: "Try again", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            nameTextField.text = nil
            passwordTextField.text = nil
        }
        
        
       
        
        
    }
    
    @IBAction func forgotUsernamePressed(_ sender: Any) {
        
        let alert = UIAlertController(title: "You can try", message: name, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Thanks", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func forgotPasswordPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Just try", message: password, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Yeah", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        
    }
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        nameTextField.text = nil
        passwordTextField.text = nil
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let helloVC = segue.destination as! HelloViewController
        helloVC.helloText = nameTextField.text
        
        
    }
    
    
    
}

extension ViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            textField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        } else {
            loginPressed()
        }
        return true
    }
    
  
    
}


