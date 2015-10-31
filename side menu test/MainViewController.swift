//
//  MainViewController.swift
//  side menu test
//
//  Created by Johnny Chau on 10/30/15.
//  Copyright © 2015 Chowfun. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
  @IBOutlet weak var menuButton: UIBarButtonItem!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let revealViewController = self.revealViewController() {
      menuButton.target = revealViewController
      menuButton.action = Selector("revealToggle:")
      view.addGestureRecognizer(revealViewController.panGestureRecognizer())
    }
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
