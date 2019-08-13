//
//  NextViewController.swift
//  UserLIst
//
//  Created by 豊岡正紘 on 2019/08/06.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import Foundation
import UIKit

class NextViewController: UIViewController {

    // 名前を表示するラベル
    @IBOutlet weak var nameLabel: UILabel!
    
    // 趣味を表示するラベル
    @IBOutlet weak var hobbyLabel: UILabel!
   
    // 遷移源から辞書型のデータを入れる変数
    var userData = [String: String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // nameLabelに受け取った辞書データのnameを代入
        nameLabel.text  = userData["name"]
        
        // hobbytextViewに受け取った辞書データのhobbyを代入
        hobbyLabel.text = userData["hobby"] 
    }
}
