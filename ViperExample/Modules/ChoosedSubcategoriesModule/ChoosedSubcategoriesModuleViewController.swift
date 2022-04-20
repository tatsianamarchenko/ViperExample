//
//  ChoosedSubcategoriesModuleViewController.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import UIKit
import SnapKit

class ChoosedSubcategoriesModuleViewController: UIViewController {


	private lazy var table: UITableView = {
		let table = UITableView(frame: .zero, style: .insetGrouped)
		table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
		return table
	}()
var subcategories = [finalCategory]()
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
		presenter?.getSubcategories()
	}

	// MARK: - Properties
	var presenter: ViewToPresenterChoosedSubcategoriesModuleProtocol?

}

extension ChoosedSubcategoriesModuleViewController: PresenterToViewChoosedSubcategoriesModuleProtocol{
	func showSubcategories(subcategories: [finalCategory]) {
		self.subcategories = subcategories
	}

	// TODO: Implement View Output Methods
}



extension ChoosedSubcategoriesModuleViewController: UITableViewDelegate, UITableViewDataSource {

	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		subcategories[section].subcategorieTitle
	}

	func numberOfSections(in tableView: UITableView) -> Int {
		return subcategories.count
	}
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return subcategories[section].finalSubcateggoryPath.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
		cell.textLabel?.text = subcategories[indexPath.section].finalSubcateggoryPath[indexPath.row].title
		return cell
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		presenter?.transitionToCatalog(subcategory: subcategories[indexPath.section].finalSubcateggoryPath[indexPath.row].pathUrl, viewController: self)
	}
}
