//
//  SearchScreenView.swift
//  GitHub
//
//  Created by unicred on 01/02/23.
//

import UIKit

class TableScreenView: BaseView {
    let cellId = "cellId"
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: bounds)
        tableView.register(ListPhoneTableViewCell.self, forCellReuseIdentifier: cellId)
        return tableView
    }()
    
    override func addSubviews() {
        addSubview(tableView)
    }
    
    override func setConstraints() {
        tableView.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: bounds.width, height: bounds.height))
    }
}
