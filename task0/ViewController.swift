//
//  ViewController.swift
//  task0
//
//  Created by Maxim on 16.12.21.
//

import UIKit

class ViewController: UIViewController {

    var id: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
         // Do any additional setup after loading the view.
    }
    
    @IBAction func openTrashDidTap(_ sender: Any) {
        performSegue(withIdentifier: "openTrash", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.destination is SecondViewController {
            let vc = segue.destination as? SecondViewController
            vc?.id = "randomString <3"
        }
        
    }
    
}

