//
//  CatalogModuleViewController.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import UIKit
import SnapKit

class CatalogModuleViewController: UIViewController {

	private lazy var search: UISearchBar = {
		var search = UISearchBar()
		search.placeholder = "Find what you want"
		search.translatesAutoresizingMaskIntoConstraints = false
		return search
	}()

	private lazy var itemsCollection : UICollectionView = {
		let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
		layout.scrollDirection = .vertical
		var collection = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
		collection.register(ShopCollectionViewCell.self, forCellWithReuseIdentifier: ShopCollectionViewCell.identifier)
		collection.translatesAutoresizingMaskIntoConstraints = false
		collection.showsVerticalScrollIndicator = false
		collection.backgroundColor = .systemBackground
		collection.clipsToBounds = true
		return collection
	}()

	// MARK: - Lifecycle Methods
	override func viewDidLoad() {
		view.backgroundColor = .systemBackground
		super.viewDidLoad()
		view.addSubview(itemsCollection)
		view.addSubview(search)
		itemsCollection.dataSource = self
		itemsCollection.delegate = self
		search.delegate = self

		search.snp.makeConstraints { make in
			make.top.equalTo(view.snp_topMargin)
			make.leading.equalTo(view.snp_leadingMargin)
			make.trailing.equalTo(view.snp_trailingMargin)
		}

		itemsCollection.snp.makeConstraints { make in
			make.top.equalTo(search.snp_bottomMargin).inset(-20)
			make.bottom.equalTo(view.snp_bottomMargin)
			make.leading.equalTo(view.snp_leadingMargin).inset(-20)
			make.trailing.equalTo(view.snp_trailingMargin).inset(-20)
		}
	}

	override func viewWillAppear(_ animated: Bool) {
		presenter?.update()
	}

	func showCategoryProducts() {
		print("lol")
	}

	// MARK: - Properties
	var presenter: ViewToPresenterCatalogModuleProtocol?

}

extension CatalogModuleViewController: PresenterToViewCatalogModuleProtocol{
	// TODO: Implement View Output Methods
}



extension CatalogModuleViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
			return 10
	}

	func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 1
	}

	func collectionView(_ collectionView: UICollectionView,
						cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier:
																ShopCollectionViewCell.identifier, for: indexPath)
				as? ShopCollectionViewCell else {
					return UICollectionViewCell()
				}

		cell.layer.cornerRadius = 20
		cell.layer.borderWidth = 0
		cell.layer.shadowColor = UIColor.systemGray.cgColor
		cell.layer.shadowOffset = CGSize(width: 0, height: 0)
		cell.layer.shadowRadius = 8
		cell.layer.shadowOpacity = 0.5
		cell.layer.masksToBounds = false
		return cell
	}

	func collectionView(_ collectionView: UICollectionView,
						layout collectionViewLayout: UICollectionViewLayout,
						sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: view.frame.width-20, height: view.frame.height/5-20)
	}

	func collectionView(_ collectionView: UICollectionView,
						layout collectionViewLayout: UICollectionViewLayout,
						minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
		return 1
	}
	func collectionView(_ collectionView: UICollectionView,
						layout collectionViewLayout: UICollectionViewLayout,
						minimumLineSpacingForSectionAt section: Int) -> CGFloat {
		return 30
	}

	func collectionView(_ collectionView: UICollectionView,
						layout collectionViewLayout: UICollectionViewLayout,
						insetForSectionAt section: Int) -> UIEdgeInsets {
		return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
	}

	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

	}
}

extension CatalogModuleViewController: UISearchBarDelegate {

	func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
		self.search.showsCancelButton = true
		self.itemsCollection.reloadData()
	}

	func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
		self.search.text = ""
		self.search.showsCancelButton = false
		self.search.endEditing(true)
		self.itemsCollection.reloadData()
	}

	func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

	}
}
