import UIKit

// 背景顏色和文字都隨機變化 7種
// RGB color
// Random number in Swift
class ViewController: UIViewController {
    
    @IBOutlet var backgroundColor: UIView!
    @IBOutlet weak var contentText: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    
    let contentTextView: [String] = [
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
    @IBAction func changeTextAndColor (_ sender: UIButton){
        // value instance
        let randomText = Int.random(in: 0..<contentTextView.count)
        let randomColor = Int.random(in: 0..<colors.count)
        // call
        contentText.text = contentTextView[randomText]
        backgroundColor.backgroundColor = colors[randomColor]
    }
    
}

