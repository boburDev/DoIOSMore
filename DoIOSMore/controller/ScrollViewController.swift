//
//  ScrollViewController.swift
//  DoIOSMore
//
//  Created by Boburmirzo on 2/13/21.
//

import UIKit

class ScrollViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initView()
        // Do any additional setup after loading the view.
    }


    // MARK: - Method

    func initView() {
        settingNavigation()
    }
    
    func settingNavigation() {
        let back = UIImage(named: "ic_back")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: back, style: .plain, target: self, action: #selector(leftTapped))
        
        title = "Scroll View"
    }
    
    // MARK: - Action
    
    @objc func leftTapped(){
        navigationController?.popViewController(animated: true)
    }
    

}
