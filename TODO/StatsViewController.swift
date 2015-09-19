//
//  StatsViewController.swift
//  TODO
//
//  Created by Da Y Mun on 9/18/15.
//  Copyright © 2015 danamun. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "Stats"
        numberLabel.text = "\(tasks.getNumberOfCompleted())"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
