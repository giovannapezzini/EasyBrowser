//
//  TableViewController.swift
//  EasyBrowser
//
//  Created by Giovanna Pezzini on 07/01/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    var websites = ["apple.com", "github.com", "hackingwithswift.com"]

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "List of Websites"        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Link")
        tableView.tableFooterView = UIView()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Link", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = ViewController()
        viewController.websiteToLoad = websites[indexPath.row]
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
