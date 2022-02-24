//
//  ListViewController.swift
//  SnapkitExample
//
//  Created by coolishbee on 2022/02/24.
//

import UIKit
import SnapKit

class ListViewController: UITableViewController {

    let kCellIdentifier = "CellIdentifier"
    let demos = ["Simple Layout", "Basic UIScrollView", "SimpleTextView"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "SnapKit iOS Demos"
        
        self.tableView?.register(UITableViewCell.self, forCellReuseIdentifier: kCellIdentifier)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return demos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kCellIdentifier)! as UITableViewCell
        
        cell.textLabel?.text = demos[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let viewController = SimpleLayoutViewController()
            navigationController?.pushViewController(viewController, animated: true)
        } else if indexPath.row == 1 {
            let viewController = BasicUIScrollViewController()
            navigationController?.pushViewController(viewController, animated: true)
        } else if indexPath.row == 2 {
            let textVC = SimpleTextViewController()
            navigationController?.pushViewController(textVC, animated: true)
        }
    }
}
