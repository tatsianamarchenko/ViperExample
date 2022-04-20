//
//  Objects.swift
//  MuseumOnline
//
//  Created by Tatsiana Marchanka on 16.04.22.
//

import Foundation

// MARK: - Welcome
struct Objects: Codable {
	let products: [Product]
}

// MARK: - Product
struct Product: Codable {
	let id: Int
	let key, name, fullName: String
	let namePrefix: String
	let extendedName: String
	let status: Status
	let images: Images
	let imageSize: [String]
	let productDescription, microDescription: String
	let htmlURL: String
	let reviews: Reviews
	let reviewURL: String?
	let colorCode: String?
	let prices: Prices
//	let maxInstallmentTerms: MaxInstallmentTerms?
//	let maxCobrandCashback: MaxCobrandCashback?
//	let sale: Sale
//	let second: Second
//	let forum: Forum
//	let url: String
//	let advertise: String?
	//let stickers: [String]?
	let primeInfo: PrimeInfo

	enum CodingKeys: String, CodingKey {
		case id, key, name
		case fullName = "full_name"
		case namePrefix = "name_prefix"
		case extendedName = "extended_name"
		case status, images
		case imageSize = "image_size"
		case productDescription = "description"
		case microDescription = "micro_description"
		case htmlURL = "html_url"
		case reviews
		case reviewURL = "review_url"
		case colorCode = "color_code"
		case prices
//		case maxInstallmentTerms = "max_installment_terms"
//		case maxCobrandCashback = "max_cobrand_cashback"
//		case sale, second, forum, url, advertise, stickers
		case primeInfo = "prime_info"
	}
}

// MARK: - Forum
struct Forum: Codable {
	let topicID: Int?
	let topicURL: String?
	let postURL: String
	let repliesCount: Int?

	enum CodingKeys: String, CodingKey {
		case topicID = "topic_id"
		case topicURL = "topic_url"
		case postURL = "post_url"
		case repliesCount = "replies_count"
	}
}

// MARK: - Images
struct Images: Codable {
	let header: String
	let icon: String?
}

// MARK: - MaxCobrandCashback
struct MaxCobrandCashback: Codable {
	let percentage: Int
	let label: String
}


// MARK: - MaxInstallmentTerms
struct MaxInstallmentTerms: Codable {
	let all: All
}

// MARK: - All
struct All: Codable {
	let term: Int
	let label: String
}

// MARK: - Prices
struct Prices: Codable {
	let min: String?
	let priceMin: PriceM
	let max: String?
	let priceMax: PriceM
	let currencySign: String?
	let offers: Offers
	let htmlURL, url: String

	enum CodingKeys: String, CodingKey {
		case min
		case priceMin = "price_min"
		case max
		case priceMax = "price_max"
		case currencySign = "currency_sign"
		case offers
		case htmlURL = "html_url"
		case url
	}
}

// MARK: - Offers
struct Offers: Codable {
	let count: Int
}

// MARK: - PriceM
struct PriceM: Codable {
	let amount: String
	let currency: Currency
	let converted: Converted
}

// MARK: - Converted
struct Converted: Codable {
	let byn, byr: MinPricesMedian

	enum CodingKeys: String, CodingKey {
		case byn = "BYN"
		case byr = "BYR"
	}
}

// MARK: - MinPricesMedian
struct MinPricesMedian: Codable {
	let amount: String
	let currency: Currency
}

enum Currency: String, Codable {
	case byn = "BYN"
	case byr = "BYR"
}

// MARK: - PrimeInfo
struct PrimeInfo: Codable {
	let available: Bool
}

// MARK: - Reviews
struct Reviews: Codable {
	let rating, count: Int
	let htmlURL, url: String

	enum CodingKeys: String, CodingKey {
		case rating, count
		case htmlURL = "html_url"
		case url
	}
}

// MARK: - Sale
struct Sale: Codable {
	let isOnSale: Bool
	let discount: Int
	let minPricesMedian: MinPricesMedian

	enum CodingKeys: String, CodingKey {
		case isOnSale = "is_on_sale"
		case discount
		case minPricesMedian = "min_prices_median"
	}
}

// MARK: - Second
struct Second: Codable {
	let offersCount: Int
	let minPrice: MinPricesMedian?

	enum CodingKeys: String, CodingKey {
		case offersCount = "offers_count"
		case minPrice = "min_price"
	}
}

enum Status: String, Codable {
	case active = "active"
}

// MARK: - Sticker
struct Sticker: Codable {
	let type, label, text, color: String
	let bgColor: String
	let htmlURL: String?

	enum CodingKeys: String, CodingKey {
		case type, label, text, color
		case bgColor = "bg_color"
		case htmlURL = "html_url"
	}
}

