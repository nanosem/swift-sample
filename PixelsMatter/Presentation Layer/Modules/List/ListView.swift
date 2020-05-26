//
//  ListView.swift
//  PixelsMatter
//
//  Created by Sem Vasiutin on 12.05.2020.
//  Copyright © 2020 nanosem. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    // MARK: - Variables
    var presenter: ListViewPresenter!

    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
}

// MARK: - ListView Functions
extension ListViewController: ListView {
    func setupView() {
        tableView.register(ListViewCell.self)
    }

    func reloadData() {
        tableView.reloadData()
    }
}

// MARK: - UITableViewDataSource
extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.tableView(tableView, numberOfRowsInSection: section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return presenter.tableView(tableView, cellForRowAt: indexPath)
    }
}
