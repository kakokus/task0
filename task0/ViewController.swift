//
//  ViewController.swift
//  task0
//
//  Created by Maxim on 16.12.21.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var id: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
         // Do any additional setup after loading the view.
    }
    
    @IBAction func openTrashDidTap(_ sender: Any) {
        if textField.text?.trimmingCharacters(in: .whitespaces) != "" {
            performSegue(withIdentifier: "openTrash", sender: self)
        } else {
            let alert = UIAlertController(title: "Error", message: "Cannot send empty data!", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .cancel)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.destination is SecondViewController {
            let vc = segue.destination as? SecondViewController
            vc?.id = "randomString <3"
    
            vc?.recievedTextFromViewController = textField.text!
        }
        
        
    }
    
}

