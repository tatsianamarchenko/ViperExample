//
//  SavedModuleViewController.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import UIKit

class SavedModuleViewController: UIViewController {

	private lazy var table: UITableView = {
		let table = UITableView(frame: .zero, style: .insetGrouped)
		table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
		return table
	}()

var savedProducts = [SavedObject]()

	// MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = .systemBackground
		title = "Saved"
		view.addSubview(table)
		table.delegate = self
		table.dataSource = self

		table.snp.makeConstraints { make in
			make.top.bottom.leading.trailing.equalTo(view)
		}
    }

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		presenter?.getSavedProducts()
	}

    // MARK: - Properties
    var presenter: ViewToPresenterSavedModuleProtocol?
    
}

extension SavedModuleViewController: PresenterToViewSavedModuleProtocol{
	func showSavedObjects(products: [SavedObject]) {
		savedProducts = products
		table.reloadData()
	}

    // TODO: Implement View Output Methods
}


extension SavedModuleViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return savedProducts.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

		var content = cell.defaultContentConfiguration()
		content.text = savedProducts[indexPath.row].title
		content.secondaryText = savedProducts[indexPath.row].productDescription
		cell.contentConfiguration = content
		return cell
	}

	func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
		let action = UIContextualAction(style: .destructive, title: "delite") { action, view, complitionHandler in
			self.presenter?.passToDelete(product: self.savedProducts[indexPath.row])
		}
		let actionSent = UIContextualAction(style: .normal, title: "sent") { action, view, complitionHandler in
			self.showUrl(url: self.savedProducts[indexPath.row].url, title: "\(self.savedProducts[indexPath.row].title!)")
		}
		return UISwipeActionsConfiguration(actions: [action, actionSent])
	}

	func showUrl(url: String?, title: String) {
		let alert = UIAlertController(
			   title: title,
			   message: nil,
			   preferredStyle: .actionSheet)
		   alert.addAction(UIAlertAction(title: NSLocalizedString("share", comment: ""),
										 style: .default,
										 handler: { [self] _ in
			   let url = url
			   let activityViewController =
			   UIActivityViewController(activityItems: [url],
										applicationActivities: nil)
			   DispatchQueue.main.async {
				   present(activityViewController, animated: true)
			   }
		   }))

		   alert.addAction(UIAlertAction(title: NSLocalizedString("cancel", comment: ""), style: .cancel, handler: nil))
		   self.present(alert, animated: true, completion: nil)
	}
}
