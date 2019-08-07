//
//  ViewController.swift
//  UserLIst
//
//  Created by 豊岡正紘 on 2019/08/06.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var buttonCollection: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButton()
    }
    
    // segue遷移前動作
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showDetail", let vc = segue.destination as? NextViewController else { return }
        
//        vc.dataNum = buttonCollection[1].tag
    }
    
    
    func setupButton() {
        for i in 0..<buttonCollection.count {
            let button = buttonCollection[i]
            
            button.addTarget(self, action: #selector(pushAction(_:)), for: .touchUpInside)
        }
    }
    
    @objc func pushAction(_ sender: UIButton) {
        performSegue(withIdentifier: "showDetail", sender: nil)
        print(sender.tag)
    }
}

