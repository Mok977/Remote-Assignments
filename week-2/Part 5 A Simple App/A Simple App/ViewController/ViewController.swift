//
//  ViewController.swift
//  A Simple App
//
//  Created by 莫舒涵 on 2023/9/9.
//

import UIKit

// 背景顏色和文字都隨機變化 7種
// RGB color
// Random number in Swift
class ViewController: UIViewController {
    
    @IBOutlet var BackgroundColor: UIView!
    @IBOutlet weak var ContentText: UILabel!
    @IBOutlet weak var ChangeButton: UIButton!
    
    let contentText: [String] = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cities of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."
    ]
    // UIColor
    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue,  .cyan, .purple]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // 當 Button 被按下時執行
    // 確認 Main 裡的 Button 有連接上 func
    @IBAction func ChangeTextAndColor (_ sender: UIButton){
        // value instance
        let randomText = Int.random(in: 0..<contentText.count)
        let randomColor = Int.random(in: 0..<colors.count)
        // call
        ContentText.text = contentText[randomText]
        BackgroundColor.backgroundColor = colors[randomColor]
    }
    
}

