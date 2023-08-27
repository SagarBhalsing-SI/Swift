//
//  ResponsesTableViewController.swift
//  PropertyListDemo
//
//  Created by Instructor on 17/08/23.
//

import UIKit

class ResponsesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    //MARK: - Variables
    var viewModel   : ResponsesTableViewControllerVM    = ResponsesTableViewControllerVM()
    let segueID     : String                            = "moreDetails"
    let cellID      : String                            = "CELL"
    
    //MARK: - Datasource methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.tableData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellID, for: indexPath)

        var content = cell.defaultContentConfiguration()
        
        let rowData : Info = self.viewModel.tableData[indexPath.row]
        content.text            = rowData.name
        content.secondaryText   = rowData.eventDate.description
        cell.contentConfiguration = content
        
        return cell
    }
    
    //MARK: - Delegate methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: self.segueID, sender: self.viewModel.tableData[indexPath.row])
    }

    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == self.segueID {
            let destination : DetailsViewController = segue.destination as! DetailsViewController
            
//            destination.viewModel.decimal   = "\((sender as! Info).decimal)"
            destination.viewModel.name          = (sender as! Info).name
            destination.viewModel.email         = (sender as! Info).email
            destination.viewModel.phone         = (sender as! Info).phone
            destination.viewModel.age           = (sender as! Info).age
            destination.viewModel.eventDate     = (sender as! Info).eventDate
            destination.viewModel.food          = (sender as! Info).food
            destination.viewModel.ambience      = (sender as! Info).ambience
            destination.viewModel.service       = (sender as! Info).service
            
        }
    }
}
