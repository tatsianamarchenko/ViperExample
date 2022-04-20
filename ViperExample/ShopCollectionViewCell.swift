//
//  ShopCollectionViewCell.swift
//  OnlineShop
//
//  Created by Tatsiana Marchanka on 5.04.22.
//

import UIKit
import UIKit

class ShopCollectionViewCell: UICollectionViewCell {

	static let identifier = "ShopCollectionViewCell"

	private lazy var nameLabel: UILabel = {
		var lable = UILabel()
		lable.textColor = .darkGray
		lable.font = .systemFont(ofSize: 20, weight: .medium)
		lable.backgroundColor = .systemBackground
		lable.lineBreakMode = .byWordWrapping
		lable.lineBreakStrategy = .pushOut
		lable.numberOfLines = 3
		return lable
	}()

	private lazy var typeLable : UILabel = {
		var lable = UILabel()
		lable.font = .systemFont(ofSize: 15, weight: .regular)
		lable.numberOfLines = 3
		lable.lineBreakMode = .byWordWrapping
		lable.lineBreakStrategy = .pushOut
		lable.textColor = .darkGray
		return lable
	}()

	private lazy var priceLable : UILabel = {
		var lable = UILabel()
		lable.font = .systemFont(ofSize: 20, weight: .medium)
		lable.numberOfLines = 3
		lable.lineBreakMode = .byWordWrapping
		lable.lineBreakStrategy = .pushOut
		lable.textColor = .darkGray
		lable.textAlignment = .right
		return lable
	}()

	private lazy var descriptionLable : UILabel = {
		var lable = UILabel()
		lable.numberOfLines = 3
		lable.lineBreakMode = .byWordWrapping
		lable.lineBreakStrategy = .pushOut
		lable.font = .systemFont(ofSize: 15)
		return lable
	}()

	private lazy var photoOfProduct: UIImageView = {
		var image = UIImageView()
		image.contentMode = .scaleAspectFit
		return image
	}()

	override init(frame: CGRect) {
		 super.init(frame: frame)
		 contentView.backgroundColor = .systemBackground
		 contentView.clipsToBounds = true
		 contentView.layer.cornerRadius = 10
		 addSubview(nameLabel)
		 addSubview(photoOfProduct)
		 addSubview(descriptionLable)
		 addSubview(typeLable)
		 addSubview(priceLable)
		 makeConstants()
	 }

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	override func prepareForReuse() {
		super.prepareForReuse()
		nameLabel.text = nil
	}

	override func layoutSubviews() {
		 super.layoutSubviews()
		 photoOfProduct.layer.cornerRadius = 10
		 photoOfProduct.clipsToBounds = true
	 }

	private func makeConstants() {
		photoOfProduct.snp.makeConstraints { make in
			make.width.equalTo(contentView.frame.width/3-20)
			make.height.equalTo(contentView.frame.height-20)
			make.leading.equalTo(contentView.snp_leadingMargin).inset(10)
			make.top.equalTo(contentView.snp_topMargin).inset(10)
			make.bottom.equalTo(contentView.snp_bottomMargin).inset(10)
		}

		nameLabel.snp.makeConstraints { make in
			make.leading.equalTo(photoOfProduct.snp_trailingMargin).inset(-20)
			make.width.equalTo(contentView.frame.width/1.5-20)
			make.top.equalTo(contentView.snp_topMargin).inset(10)
		}

		typeLable.snp.makeConstraints { make in
			make.leading.equalTo(photoOfProduct.snp_trailingMargin).inset(-20)
			make.width.equalTo(contentView.frame.width/1.5-20)
			make.top.equalTo(nameLabel.snp_bottomMargin).inset(-10)
		}

		descriptionLable.snp.makeConstraints { make in
			make.leading.equalTo(photoOfProduct.snp_trailingMargin).inset(-20)
			make.width.equalTo(contentView.frame.width/1.5-20)
			make.top.equalTo(typeLable.snp_bottomMargin).inset(-10)
		}

		priceLable.snp.makeConstraints { make in
			make.leading.equalTo(photoOfProduct.snp_trailingMargin)
			make.width.equalTo(contentView.frame.width/1.5-20)
			make.trailing.equalTo(contentView.snp_trailingMargin)
			make.bottom.equalTo(contentView.snp_bottomMargin).inset(10)
		}
	 }

	func config(model: Product) {
		nameLabel.text = model.name
		descriptionLable.text = model.microDescription
		typeLable.text = model.productDescription
		priceLable.text = "\(model.prices.priceMin.amount) - \(model.prices.priceMax.amount) \(model.prices.priceMax.currency.rawValue)"
		photoOfProduct.downloadedFrom(url: "https:\(model.images.header)")
	}
 }
