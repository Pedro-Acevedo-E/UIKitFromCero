//
//  ViewController.swift
//  UIKit_6_UITableView
//
//  Created by Pedro Acevedo on 14/04/23.
//

import UIKit

struct Device {
    let title: String
    let imageName: String
}

class ViewController: UIViewController {
    private var dataSource: SwiftBetaTableViewDataSource?
    private var delegate: SwiftBetaTableViewDelegate?
    
    override func loadView() {
        let tableView = UITableView()
        self.dataSource = SwiftBetaTableViewDataSource(dataSource: allMyDevices)
        self.delegate = SwiftBetaTableViewDelegate()
        tableView.dataSource = dataSource
        tableView.delegate = delegate
        tableView.register(SwiftBetaCustomCell.self, forCellReuseIdentifier: "SwiftBetaCustomCell")
        view = tableView
    }
}
