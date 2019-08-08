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
    
   
    
    // 遷移源から押されたボタンのタグ番号を入れる変数
    var userData: UserModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // nameLabelに受け取ったUserModel型のデータのnameを代入
        nameLabel.text  = userData?.name
        
        // hobbytextViewに受け取ったUserModel型のデータのhobbyを代入
        hobbyLabel.text = userData?.hobby
    }
}
