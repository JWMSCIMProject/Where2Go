//
//  homepageViewController.swift
//  Where2Go
//
//  Created by 王晶crystal on 2016/11/2.
//  Copyright © 2016年 Jing Wang. All rights reserved.
//

import UIKit

class homepageViewController: UIViewController {
    @IBOutlet weak var scroll1: UIScrollView!

    
  
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
scroll1.contentSize = CGSize(width: view.frame.width*3, height: 81)
        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
