//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Бейбарыс Шагай on 3/9/21.
//  Copyright © 2021 Бейбарыс Шагай. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var login: String?
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = self.login else { return }
        nameLabel.text = "Hello, \(login)"
        
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
}
