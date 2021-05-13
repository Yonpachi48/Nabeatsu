//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!
    @IBOutlet var primeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Bool {
        //3の倍数かどうか調べる
        if (number%3)==0 {
            return true
        }
        //3がつくかどうか調べる
        var checkNum: Int = number
        while checkNum != 0 {    //1の位が3の時
            if checkNum % 10 == 3{
                return true
            } else {        //1の位が3じゃない時
                checkNum = checkNum / 10
            }
        }
        return false
    }
    
    func PrimeNum() -> Bool {
        //素数かどうか調べる
        var checkNum: Int = number
        var i: Int = 2
        
        if checkNum == 1{       //1の時
            return false
        } else {                //1じゃない時
            while checkNum != i {       //素数の判定
                if checkNum % i == 0{   //素数じゃない時
                    return false
                } else {
                    i = i + 1
                }
            }
        }
        
        return true
    }
    
    //数えるが押された時
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)        //数を表示
        
        if isAho() == true {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"       //アホな時
        } else {
            faceLabel.text = "(゜o゜)"         //アホじゃない時
        }
        if PrimeNum() == true{                //素数の時
            primeLabel.isHidden = false
            primeLabel.text = "素数"
        } else {                              //素数じゃない時
            primeLabel.isHidden = true
        }
    }
    
    //clearが押された時
    @IBAction func clearButton(){
        number = 0
        countLabel.text = String(number)
        faceLabel.text = "(゜o゜)"
        primeLabel.isHidden = true
    }
}

