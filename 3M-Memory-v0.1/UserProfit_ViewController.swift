//
//  UserProfit_ViewController.swift
//  3M-Memory-v0.1
//
//  Created by Wong kim kwok on 7/9/2016.
//  Copyright © 2016 CPA. All rights reserved.
//

import UIKit

class UserProfit_ViewController: UIViewController {

    @IBOutlet weak var User_name: UILabel!
    @IBOutlet weak var Change_user: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func Change_Sally(sender: AnyObject) {
        
        User_name.text="Sally Chan"
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
