//
//  VariableCellTableViewController.swift
//  AllUI
//
//  Created by Ravi Tripathi on 21/02/18.
//  Copyright © 2018 Ravi Tripathi. All rights reserved.
//

import UIKit

class VariableCellTableViewController: UITableViewController {

    var itemArray : [String]  = ["Long long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long textLong long text","Long long text","Long long text","Long long text","Long long text","Long long text","Long long text","Long long text","Long long text","Long long text","Long long text","Long long text","Long long text","Long long text","Long long text",]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    //MARK: - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomItemCell
        let item = itemArray[indexPath.row]
        cell.cellLabel.text = item
        cell.cellLabel.textColor = UIColor(white: 114/255, alpha: 1)
        return cell
    }
    
    //MARK: -  TableView Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//    }
//
//    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//
//    }
//
//    override func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
//
//    }
//
//    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//
//    }
}
