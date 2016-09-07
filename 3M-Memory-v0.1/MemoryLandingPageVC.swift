//
//  ViewController.swift
//  3M-Memory-v0.1
//
//  Created by user on 6/9/2016.
//  Copyright © 2016 CPA. All rights reserved.
//

import UIKit

class MemoryLandingPageVC: UIViewController {
    
    @IBOutlet weak var map_container: UIView!
    @IBOutlet weak var flight_list_container: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        map_container.hidden=false
        flight_list_container.hidden=true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BackButton(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion:nil)
    }

    // Toggle segmeted control
    @IBOutlet weak var map_list_toggle: UISegmentedControl!
    
    @IBAction func map_view_change(sender: AnyObject) {
        switch map_list_toggle.selectedSegmentIndex {
        case 0:
            map_container.hidden=false
            flight_list_container.hidden=true
        case 1:
            map_container.hidden=true
            flight_list_container.hidden=false
        default:
            break;
        }
    }
    

}
