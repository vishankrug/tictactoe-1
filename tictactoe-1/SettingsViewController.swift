//
//  SettingsViewController.swift
//  tictactoe-1
//
//  Created by Vishank Rughwani on 6/8/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var player1TextField: UITextField!
    
    @IBOutlet weak var player2TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func enterAction(_ sender: Any) {
        if(player1TextField.text != ""){
            player1Name = player1TextField.text!
        }
        if(player2TextField.text != ""){
            player2Name = player2TextField.text!
        }
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
