//
//   DisplayViewController.swift
//  BioBuilder
//
//  Created by Samuel Uche on 4/27/25.
//

import UIKit

class DisplayViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!

    var receivedData: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayLabel.text = receivedData
    }
}


