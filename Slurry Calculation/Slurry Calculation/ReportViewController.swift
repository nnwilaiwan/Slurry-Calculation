//
//  ReportViewController.swift
//  Slurry Calculation
//
//  Created by BBS Developer on 27/11/2561 BE.
//  Copyright © 2561 Wilaiwan. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var weight = [ReportWeight]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        if save_weight.fetchObject() != nil {
            weight = save_weight.fetchObject()!
            tableView.reloadData()
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weight.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = weight[indexPath.row].weight! + "  Kg."
        cell.detailTextLabel?.text = weight[indexPath.row].name
        return cell
    }

}
