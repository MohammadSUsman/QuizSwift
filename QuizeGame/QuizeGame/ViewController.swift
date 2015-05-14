//
//  ViewController.swift
//  QuizeGame
//
//  Created by Brianna Przybysz on 5/13/15.
//  Copyright (c) 2015 Joel. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
   
    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBOutlet weak var answerOutlet1: UIButton!
    @IBOutlet weak var answerOutlet2: UIButton!
    @IBOutlet weak var answerOutlet3: UIButton!
    @IBOutlet weak var answerOutlet4: UIButton!
    @IBOutlet weak var answer: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func answer1() {
        if (answerOutlet1.currentTitle == "fruit"){
        
            answerOutlet1.backgroundColor = UIColor.greenColor()
            answerOutlet1.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        }
        else
        {
            answerOutlet1.backgroundColor = UIColor.redColor()
            answerOutlet1.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        }
        answerOutlet1.enabled = false
        answerOutlet2.enabled = false
        answerOutlet3.enabled = false
        answerOutlet4.enabled = false
        
    }
   
    @IBAction func answer2() {
        if (answerOutlet2.currentTitle == "SendingEvents"){
        answerOutlet2.backgroundColor = UIColor.greenColor()
        answerOutlet2.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        }
        else
        {
            answerOutlet2.backgroundColor = UIColor.redColor()
            answerOutlet2.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        }

        
        answerOutlet1.enabled = false
        answerOutlet2.enabled = false
        answerOutlet3.enabled = false
        answerOutlet4.enabled = false
    }
    
    @IBAction func answer3() {
        if (answerOutlet3.currentTitle == "Laptop"){
            
        
        answerOutlet3.backgroundColor = UIColor.greenColor()
        answerOutlet3.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        }
        else
        {
            answerOutlet3.backgroundColor = UIColor.redColor()
            answerOutlet3.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        }

        answerOutlet1.enabled = false
        answerOutlet2.enabled = false
        answerOutlet3.enabled = false
        answerOutlet4.enabled = false
        
    }
    
    @IBAction func answer4() {
        if (answerOutlet4.currentTitle == "tonsOfFun"){
        answerOutlet4.backgroundColor = UIColor.greenColor()
        answerOutlet4.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        }
        else
        {
            answerOutlet4.backgroundColor = UIColor.redColor()
            answerOutlet4.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        }

        answerOutlet1.enabled = false
        answerOutlet2.enabled = false
        answerOutlet3.enabled = false
        answerOutlet4.enabled = false
    }
    

    
    func titleChange() {
        
        if (questionLabel.text == "What is an Apple ?"){
            answerOutlet1.setTitle("fruit", forState: UIControlState.Normal)
            answerOutlet2.setTitle("House", forState: UIControlState.Normal)
            answerOutlet3.setTitle("Animals", forState: UIControlState.Normal)
            answerOutlet4.setTitle("fishName", forState: UIControlState.Normal)
        }
        else if (questionLabel.text == "Which one is Machine ?"){
            
            answerOutlet1.setTitle("fruit", forState: UIControlState.Normal)
            answerOutlet2.setTitle("House", forState: UIControlState.Normal)
            answerOutlet3.setTitle("Laptop", forState: UIControlState.Normal)
            answerOutlet4.setTitle("fish", forState: UIControlState.Normal)
            
        }
        
        else if (questionLabel.text == "What is this button do "){
            
            answerOutlet1.setTitle("fruit", forState: UIControlState.Normal)
            answerOutlet2.setTitle("SendingEvents", forState: UIControlState.Normal)
            answerOutlet3.setTitle("Laptop", forState: UIControlState.Normal)
            answerOutlet4.setTitle("fish", forState: UIControlState.Normal)
            
        }
        
        else if (questionLabel.text == "What else we can do with swift"){
            
            answerOutlet1.setTitle("fruit", forState: UIControlState.Normal)
            answerOutlet2.setTitle("SendingEvents", forState: UIControlState.Normal)
            answerOutlet3.setTitle("Laptop", forState: UIControlState.Normal)
            answerOutlet4.setTitle("tonsOfFun", forState: UIControlState.Normal)
            
        }
        
    }
    
    
  
    @IBAction func nextQuestion() {
        
        var testing = ["What is an Apple ?" , "Which one is Machine ?" , "What is this button do " , "What else we can do with swift"]
        
    
        
        var random = Int(arc4random_uniform(UInt32(testing.count)))
             questionLabel.text = testing[random]
        resetTheValue()
        
        //   println(random)
        
        //        var unsignVlaue  = UInt32(testing.count)
        //        var unsignRandomVlue = arc4random_uniform(unsignVlaue)
        //        var randomNumber = Int(unsignRandomVlue)
        
        //   println(randomNumber)


   
        
//        if(questionLabel.text == "ineene"){
//            
//            answer.text = "Wrong Answer"
//            
//        }
//        else if (questionLabel.text == "eeeee"){
//            
//            answer.text = "oops"
//            
//        }
//        else if (questionLabel.text == "eseased"){
//            answer.text = "you got it"
//        }
        
    }
    
    func resetTheValue(){
        answerOutlet1.enabled = true
        answerOutlet2.enabled = true
        answerOutlet3.enabled = true
        answerOutlet4.enabled = true
        
       answerOutlet1.backgroundColor = UIColor(red: 165.0/255, green: 211.0/255, blue: 255.0/255, alpha: 1.0)
               answerOutlet2.backgroundColor = UIColor(red: 165.0/255, green: 211.0/255, blue: 255.0/255, alpha: 1.0)
               answerOutlet3.backgroundColor = UIColor(red: 165.0/255, green: 211.0/255, blue: 255.0/255, alpha: 1.0)
               answerOutlet4.backgroundColor = UIColor(red: 165.0/255, green: 211.0/255, blue: 255.0/255, alpha: 1.0)
        
          titleChange()
        
    }
 

}



