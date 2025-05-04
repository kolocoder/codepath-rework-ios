//
//  ViewController.swift
//  BioBuilder
//
//  Created by Samuel Uche on 4/26/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstnameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var jobTextField: UITextField!
    @IBOutlet weak var bioTextField: UITextField!
    @IBOutlet weak var institutionButton: UIButton!
    
    let institutions = ["Harvard University", "Worcester Polytechnic Institute"]
    var selectedInstitution: String = ""



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ClearAll(_ sender: UIButton) {
    }
    
    @IBAction func chooseVarsity(_ sender: UIButton) {
        let alert = UIAlertController(title: "Select Institution", message: nil, preferredStyle: .actionSheet)
        
        for institution in institutions {
            alert.addAction(UIAlertAction(title: institution, style: .default, handler: { _ in
                self.institutionButton.setTitle(institution, for: .normal)
                self.selectedInstitution = institution
            }))
        }
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }

    
    @IBAction func SaveAll(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DisplayViewController") as! DisplayViewController
        
        let firstname = firstnameTextField.text ?? ""
        let lastname = lastnameTextField.text ?? ""
        let bio = bioTextField.text ?? ""
        let job = jobTextField.text ?? ""
        
        vc.receivedData = "Name: \(firstname) \(lastname)\nBio: \(bio)\nJob: \(job)"
        
        navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeBackgroundColorToRandom()
        view.backgroundColor = randomColor
    }
    func changeBackgroundColorToRandom() -> UIColor {
        let red = CGFloat.random(in:0...1)
        let green = CGFloat.random(in:0...1)
        let blue = CGFloat.random(in:0...1)
        return UIColor(red: red, green: green, blue: blue, alpha:0.5)
        
    }
    
    func getFirstNameValue() -> String {
        return firstnameTextField.text ?? ""
    }

    func getLastNameValue() -> String {
        return lastnameTextField.text ?? ""
    }

    func getJobValue() -> String {
        return jobTextField.text ?? ""
    }

    func getBioValue() -> String {
        return bioTextField.text ?? ""
    }
    
}
    
    


