//
//  ProductModuleViewController.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import UIKit
import SnapKit

class ProductModuleViewController: UIViewController {

	private lazy var photoOfProduct: UIImageView = {
		var image = UIImageView()
		image.layer.cornerRadius = 10
		image.clipsToBounds = true
		image.contentMode = .scaleAspectFit
		return image
	}()

	private lazy var scrollView: UIScrollView = {
		var scrollView = UIScrollView(frame:.zero)
		scrollView.translatesAutoresizingMaskIntoConstraints = false
		scrollView.showsVerticalScrollIndicator = false
		scrollView.showsHorizontalScrollIndicator = false
		scrollView.layer.cornerRadius = 20
		return scrollView
	}()

	private lazy var descriptionLable : UILabel = {
		var lable = UILabel()
		lable.font = .systemFont(ofSize: 20, weight: .regular)
		lable.numberOfLines = 0
		lable.lineBreakMode = .byWordWrapping
		lable.lineBreakStrategy = .pushOut
		lable.textColor = .darkGray
		return lable
	}()

	private lazy var microDescriptionLable : UILabel = {
		var lable = UILabel()
		lable.font = .systemFont(ofSize: 15, weight: .regular)
		lable.numberOfLines = 0
		lable.lineBreakMode = .byWordWrapping
		lable.lineBreakStrategy = .pushOut
		lable.textColor = .darkGray
		return lable
	}()

	private lazy var linkLable : UIButton = {
		var button = UIButton()
		button.backgroundColor = .blue
		button.setTitle("open in browser", for: .normal)
		button.addTarget(self, action: #selector(openInBrowser), for: .touchUpInside)
		button.layer.cornerRadius = 10
		return button
	}()


    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = .systemBackground
		view.addSubview(photoOfProduct)
		view.addSubview(scrollView)
		scrollView.addSubview(descriptionLable)
		scrollView.addSubview(microDescriptionLable)
		scrollView.addSubview(linkLable)

		photoOfProduct.snp.makeConstraints { make in
			make.width.equalTo(view.frame.width-30)
			make.height.equalTo(view.frame.height/3)
			make.centerX.equalTo(view)
			make.top.equalTo(view.snp_topMargin).inset(10)
		}

		scrollView.snp.makeConstraints { make in
			make.trailing.equalTo(view.snp_trailingMargin)
			make.leading.equalTo(view.snp_leadingMargin)
			make.top.equalTo(photoOfProduct.snp_bottomMargin).inset(-30)
			make.bottom.equalTo(view.snp_bottomMargin)
		}

		descriptionLable.snp.makeConstraints { make in
			make.trailing.equalTo(scrollView.snp_trailingMargin)
			make.leading.equalTo(scrollView.snp_leadingMargin)
			make.width.equalTo(scrollView)
			make.top.equalTo(scrollView.snp_topMargin).inset(10)
		}

		microDescriptionLable.snp.makeConstraints { make in
			make.trailing.equalTo(scrollView.snp_trailingMargin)
			make.leading.equalTo(scrollView.snp_leadingMargin)
			make.width.equalTo(scrollView)
			make.top.equalTo(descriptionLable.snp_bottomMargin).inset(-20)
		}

		linkLable.snp.makeConstraints { make in
			make.height.equalTo(30)
			make.width.equalTo(scrollView)
			make.top.equalTo(microDescriptionLable.snp_bottomMargin).inset(-20)

		}

    }

	override func viewWillAppear(_ animated: Bool) {
		presenter?.getProduct()
		
	}

    // MARK: - Properties
    var presenter: ViewToPresenterProductModuleProtocol?
    
}

extension ProductModuleViewController: PresenterToViewProductModuleProtocol{
	func showProduct(product: Product) {

		title = product.name
		descriptionLable.text = product.productDescription
		microDescriptionLable.text = product.microDescription
		photoOfProduct.downloadedFrom(url: "https:\(product.images.header)")
	}

	@objc func openInBrowser() {
		presenter?.openInBrowser()
	}

	func clicked(url: String) {
		if let url = URL(string: url) {
			UIApplication.shared.open(url)
		}
	}
}
