//
//  ListPresenter.swift
//  PixelsMatter
//
//  Created by Sem Vasiutin on 12.05.2020.
//  Copyright © 2020 nanosem. All rights reserved.
//

import UIKit

protocol ListViewPresenter {
    func viewDidLoad()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
}

protocol ListView: class {
    func setupView()
    func reloadData()
}

class ListPresenter: ListViewPresenter {
    weak var view: ListView?

    var dataSource = [Event]()

    // MARK: - Functions
    func viewDidLoad() {
        view?.setupView()

        updateDataSource { [weak self] in
            self?.view?.reloadData()
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ListViewCell = tableView.dequeueReusableCell(for: indexPath)
        cell.selectionStyle = .none

        let item = dataSource[indexPath.row]
        cell.nameLabel.text = item.name
        cell.idLabel.text = "\(item.id)"

        return cell
    }

    // MARK: - Private Functions
    private func updateDataSource(completion: @escaping () -> Void) {
        DataManager.updateDataSource { [weak self] in
            self?.dataSource = DataManager.dataSource.filter({ $0.active })
            completion()
        }
    }
}
