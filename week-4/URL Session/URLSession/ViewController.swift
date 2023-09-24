import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var stationIDLabel: UILabel!
    @IBOutlet var stationNameLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchDataFromURL()
    }
    
    func fetchDataFromURL() {
        // 使用提供的 URL 來發送 GET 請求，獲取數據
        if let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station") {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    // 讀取 JSON 數據
                    do {
                        let json = try JSONSerialization.jsonObject(with: data, options: [])
                        if let dataDict = json as? [String: String] {
                            DispatchQueue.main.async {
                                // 更新 UI 元素
                                self.stationIDLabel.text = dataDict["stationID"]
                                self.stationNameLabel.text = dataDict["stationName"]
                                self.addressLabel.text = dataDict["stationAddress"]
                            }
                        }
                    } catch {
                        print("JSON解析失敗：", error)
                    }
                }
            }.resume() // 啟動數據請求
        }
    }
}

