//
//  GameViewController.swift
//  tictactoe-1
//
//  Created by Vishank Rughwani on 6/8/21.
//

import UIKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var label: UILabel!
    var activePlayer = 1 //Cross
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]

    @IBAction func action(_ sender: AnyObject)
    {
        if(activePlayer == 1){
            label.text = player1Name + "'s turn"
        } else {
            label.text = player2Name + "'s turn"
        }
        if(gameState[sender.tag-1] == 0){
            gameState[sender.tag-1] = activePlayer
            if (activePlayer == 1){
                sender.setImage(UIImage(named: "cross.png"), for: UIControl.State())
                activePlayer = 2
            } else {
                sender.setImage(UIImage(named: "circle.png"), for: UIControl.State())
                activePlayer = 1
            }
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
