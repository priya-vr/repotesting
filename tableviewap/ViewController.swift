//
//  ViewController.swift
//  tableviewap
//
//  Created by Priya VR on 1/12/16.
//  Copyright © 2016 Priya VR. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
  var arrI : [String] = ["malu","malu1"]
  @IBOutlet var myatb: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
  //sshjhshshshjsssss
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    return arrI.count
  }
  
  // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
  // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
       let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell1
    cell.labelv.text = arrI[indexPath.row]
    return cell
  }
  



}

