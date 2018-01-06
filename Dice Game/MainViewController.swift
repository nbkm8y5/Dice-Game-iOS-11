//
//  MainViewController.swift
//  dicee
//
//  Created by Rolando Moreno on 12/10/17.
//  Copyright © 2017 Greasy Hacks, LLC. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    
    var randomDiceIndex2: Int = 0
    
//    an array of strings that represent the images in Assets
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
//    state of this view controller
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let square = UIView(frame: CGRect(x: self.view.frame.width / 2 - 50, y: self.view.frame.height / 2 - 50, width: 100, height: 100))
//        square.backgroundColor = UIColor.red
//        self.view.addSubview(square)
        // Do any additional setup after loading the view.
//        triggers when starting the scene
        
        updateDiceImages()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var count = 0
    
    @IBAction func rollButtonPressed(_ sender: RollButton) {
        
        count += 1
        print("Button clicked \(count) times")
        
        //        get random number between 0 and 6-1 and cast as an Integer
        updateDiceImages()
        
    }
    
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print(randomDiceIndex1)
        print(randomDiceIndex2)
        
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

