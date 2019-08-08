//
//  ViewController.swift
//  UserLIst
//
//  Created by 豊岡正紘 on 2019/08/06.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // ボタンのタグ番号
    var tagNum: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // segue遷移前動作
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showDetail", let vc = segue.destination as? NextViewController else { return }
        
        // NextViewControllerのdataNumに値を渡す
        vc.dataNum = tagNum
    }
    
    // ボタンのアクション
    @IBAction func pushButton(_ sender: UIButton) {
        // tagNumにボタンのタグをを入れる
        tagNum = sender.tag
        
        // segueの実行
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
}

