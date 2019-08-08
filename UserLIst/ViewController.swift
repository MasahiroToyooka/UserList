//
//  ViewController.swift
//  UserLIst
//
//  Created by 豊岡正紘 on 2019/08/06.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    
    
    var tagNum: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // segue遷移前動作
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showDetail", let vc = segue.destination as? NextViewController else { return }
        
        vc.dataNum = tagNum
    }
    
    @IBAction func pushButton(_ sender: UIButton) {
        tagNum = sender.tag
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
}

