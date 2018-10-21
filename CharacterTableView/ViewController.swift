//
//  ViewController.swift
//  CharacterTableView
//
//  Created by Duncan Champney on 10/17/18.
//  Copyright © 2018 Duncan Champney. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var theTextView: UITextView!
    
    var characterVC: CharacterTableViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CharacterTableViewController {
            characterVC = destination
        }
    }
    
    @IBAction func handleButton(_ sender: Any) {
        //theTextView.resignFirstResponder()
        characterVC?.contentString = theTextView.text
    }
}

