//
//  ResultViewController.swift
//  Gacha
//
//  Created by 工藤彩名 on 2022/05/08.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImagView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 0~9までのランダムな数（乱数）を発生させる
        number = Int.random(in: 0...20)
        if number == 20 {
            monsterImagView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold")
        } else if number > 18 {
            monsterImagView.image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named: "bg_red")
        } else if number > 15 {
            monsterImagView.image = UIImage(named: "monster001")
            backgroundImageView.image = UIImage(named: "bg_red")
        } else if number > 9 {
            monsterImagView.image = UIImage(named: "monster004")
            backgroundImageView.image = UIImage(named: "bg_blue")
        } else {
            monsterImagView.image = UIImage(named: "monster003")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }

    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }
    


}
