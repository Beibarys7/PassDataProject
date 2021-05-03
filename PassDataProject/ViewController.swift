//
//  ViewController.swift
//  PassDataProject
//
//  Created by Бейбарыс Шагай on 3/9/21.
//  Copyright © 2021 Бейбарыс Шагай. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var loginTF: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else { return }
        guard let svc = segue.source as? SecondViewController else { return }
        self.resultLabel.text = svc.nameLabel.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sdv = segue.destination as? SecondViewController else { return }
        sdv.login = loginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

