//
//  CategoryModuleViewController.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import UIKit
import SnapKit

class CategoryModuleViewController: UIViewController {

	private lazy var table: UITableView = {
		let table = UITableView(frame: .zero, style: .insetGrouped)
		table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
		return table
	}()
	var products = [String]()
	// MARK: - Lifecycle Methods
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .systemBackground

		view.addSubview(table)
		table.delegate = self
		table.dataSource = self

		table.snp.makeConstraints { make in
			make.top.bottom.leading.trailing.equalTo(view)
		}
	}

	override func viewWillAppear(_ animated: Bool) {
		presenter?.getCategories()
	}

	// MARK: - Properties
	var presenter: ViewToPresenterCategoryModuleProtocol?

}

extension CategoryModuleViewController: PresenterToViewCategoryModuleProtocol{
	// TODO: Implement View Output Methods
	func fillCategoriesTitlesArray(array: [String]) {
		products = array
		table.reloadData()
	}
}


extension CategoryModuleViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return products.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
		cell.textLabel?.text = products[indexPath.row]
		return cell
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		presenter?.openSubcategory(category: products[indexPath.row], view: self)
	}
}
