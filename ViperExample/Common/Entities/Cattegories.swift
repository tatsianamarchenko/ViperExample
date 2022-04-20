//
//  Cattegories.swift
//  DigitalVisionBoard
//
//  Created by Tatsiana Marchanka on 20.04.22.
//

import Foundation

struct Categories {
	var categories: [Category]
}
enum CategoryTitle: String {
	case electronic = "Электроника"
	case computersAndNetwork = "Компьютеры и сети"
	case appliances = "Бытовая техника"
	case constructionAndRepair = "Стройка и ремонт"
	case houseAndGarden = "Дом и сад"
	case autoAndMoto = "Авто и мото"
	case beautyAndSport = "Красота и спорт"
	case kidsAndMoms = "Детям и мамам"
	case workAndOffice = "Работа и офис"
	case food = "Еда"
}

struct Category {
	var categoryTitle: String
	var subcategories: [finalCategory]
}

struct finalCategory {
	var subcategorieTitle: String
	var finalSubcateggoryPath: [FinalSubcateggoryPath]
}

struct FinalSubcateggoryPath {
	var pathUrl: String
	var title: String
}

class CategorySource {
	let categories = Categories(categories: [Category(categoryTitle: CategoryTitle.electronic.rawValue, subcategories: [
		finalCategory(subcategorieTitle: "Мобильные телефоны и аксессуары", finalSubcateggoryPath: [
			   FinalSubcateggoryPath(pathUrl: "mobile", title: "Смартфоны"),
			   FinalSubcateggoryPath(pathUrl: "smartwatch", title: "Умные часы"),
			   FinalSubcateggoryPath(pathUrl: "headphones", title: "Наушники")]),
		   finalCategory(subcategorieTitle: "Телевидение и видео", finalSubcateggoryPath: [
			   FinalSubcateggoryPath(pathUrl: "tv", title: "Телевизоры"),
			   FinalSubcateggoryPath(pathUrl: "projectors", title: "Проекторы"),
			   FinalSubcateggoryPath(pathUrl: "projectorscreen", title: "Проекционные рекламы")]),
		   finalCategory(subcategorieTitle: "Планшеты и электронные книги", finalSubcateggoryPath: [
			   FinalSubcateggoryPath(pathUrl: "tabletpc", title: "Планшеты"),
			   FinalSubcateggoryPath(pathUrl: "ebook", title: "Электронные книги"),
			   FinalSubcateggoryPath(pathUrl: "portablecharger", title: "Портативные зарядные устройства")])]),

												Category(categoryTitle: CategoryTitle.computersAndNetwork.rawValue, subcategories: [
												   finalCategory(subcategorieTitle: "Ноутбуки, компютеры, мониторы", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "notebook", title: "Ноутбуки"),
													   FinalSubcateggoryPath(pathUrl: "desktoppc", title: "Компютеры"),
													   FinalSubcateggoryPath(pathUrl: "monoblock", title: "Моноблоки")]),
												   finalCategory(subcategorieTitle: "Техника для печати и дизайна", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "printers", title: "Принтеры и МФУ"),
													   FinalSubcateggoryPath(pathUrl: "scanner", title: "Сканеры"),
													   FinalSubcateggoryPath(pathUrl: "cartridges", title: "Катриджи")]),
												   finalCategory(subcategorieTitle: "Игры и ПО", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "pcgames", title: "Игры для ПК"),
													   FinalSubcateggoryPath(pathUrl: "games", title: "Игры для консолей"),
													   FinalSubcateggoryPath(pathUrl: "paymentcard", title: "Карты оплаты и подписки")])]),

												Category(categoryTitle: CategoryTitle.appliances.rawValue, subcategories: [
												   finalCategory(subcategorieTitle: "Крупногабаритная техника", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "refrigerator", title: "Холодильники"),
													   FinalSubcateggoryPath(pathUrl: "washingmachine", title: "Стиральные машины"),
													   FinalSubcateggoryPath(pathUrl: "wine_cabinets", title: "Винные шкафы")]),
												   finalCategory(subcategorieTitle: "Встраиваемая техника", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "dishwasher", title: "Посудомоечные машины"),
													   FinalSubcateggoryPath(pathUrl: "oven_cooker", title: "Духовые шкафы"),
													   FinalSubcateggoryPath(pathUrl: "hob_cooker", title: "Варочные панели")]),
												   finalCategory(subcategorieTitle: "Уход за волосами и телом", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "hairdryer", title: "Фены"),
													   FinalSubcateggoryPath(pathUrl: "scales", title: "Напольные весы"),
													   FinalSubcateggoryPath(pathUrl: "toothbrush", title: "Электрические зубные щетки и ирригаторы")])]),

												Category(categoryTitle: CategoryTitle.constructionAndRepair.rawValue, subcategories: [
												   finalCategory(subcategorieTitle: "Сантехника", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "bathtub", title: "Ванны"),
													   FinalSubcateggoryPath(pathUrl: "showerbox", title: "Душевые кабины"),
													   FinalSubcateggoryPath(pathUrl: "faucet", title: "Смесители")]),
												   finalCategory(subcategorieTitle: "Электроснабжение", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "wall_socket", title: "Розетки, выключатели"),
													   FinalSubcateggoryPath(pathUrl: "lightbulb", title: "Лампочки"),
													   FinalSubcateggoryPath(pathUrl: "voltageregulator", title: "Удлинители")]),
												   finalCategory(subcategorieTitle: "Водоснабжение", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "waterheater", title: "Водонагреватели"),
													   FinalSubcateggoryPath(pathUrl: "exhaustfan", title: "Вытяжная и приточная вентиляция"),
													   FinalSubcateggoryPath(pathUrl: "ventil_grates", title: "Вентиляционные решетки")])]),

												Category(categoryTitle: CategoryTitle.houseAndGarden.rawValue, subcategories: [
												   finalCategory(subcategorieTitle: "Умный дом и безопасность", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "smart_home", title: "Умный дом"),
													   FinalSubcateggoryPath(pathUrl: "ipcamera", title: "IP-камеры")]),

												   finalCategory(subcategorieTitle: "Мебель для дома", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "divan", title: "Диваны"),
													   FinalSubcateggoryPath(pathUrl: "office_chair", title: "Офисные кресла и стулья"),
													   FinalSubcateggoryPath(pathUrl: "chair", title: "Стулья для кухни и бара")])]),

												Category(categoryTitle: CategoryTitle.autoAndMoto.rawValue, subcategories: [

												   finalCategory(subcategorieTitle: "Шины и диски", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "tires", title: "Автомобильные шины"),
													   FinalSubcateggoryPath(pathUrl: "wheel", title: "Автомобильные диски"),
													   FinalSubcateggoryPath(pathUrl: "moto_tires", title: "Мотоциклетные шины")])]),

												Category(categoryTitle: CategoryTitle.beautyAndSport.rawValue, subcategories: [
												   finalCategory(subcategorieTitle: "Велосипеды и аксессуары", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "bike", title: "Велосипеды"),
													   FinalSubcateggoryPath(pathUrl: "electrobike", title: "Электровелосипеды"),
													   FinalSubcateggoryPath(pathUrl: "actioncamera", title: "Экшен-Камеры")]),
												   finalCategory(subcategorieTitle: "Электротранспорт", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "electric_scooter", title: "Электросамокаты и электроскутеры"),
													   FinalSubcateggoryPath(pathUrl: "segway", title: "Гироциклы")])]),

												Category(categoryTitle: CategoryTitle.kidsAndMoms.rawValue, subcategories: [
												   finalCategory(subcategorieTitle: "Игрушки и игры", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "robots", title: "Роботы, трансформеры, фигурки"),
													   FinalSubcateggoryPath(pathUrl: "pool", title: "Бассейны"),
													   FinalSubcateggoryPath(pathUrl: "kidwallbars", title: "Детские уличные комплексы и горки")]),
												   finalCategory(subcategorieTitle: "Детский транспорт", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "electricrideon", title: "Детские электромобили"),
													   FinalSubcateggoryPath(pathUrl: "sled", title: "Санки"),
													   FinalSubcateggoryPath(pathUrl: "kidsbike", title: "Детские велосипеды")])]),

												Category(categoryTitle: CategoryTitle.workAndOffice.rawValue, subcategories: [
												   finalCategory(subcategorieTitle: "Торговля и финансы", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "cashregister", title: "Кассовые аппараты и платежные терминалы"),
													   FinalSubcateggoryPath(pathUrl: "barcode", title: "Сканеры штрих-кодов"),
													   FinalSubcateggoryPath(pathUrl: "counters", title: "Счетчики банкнот и монет")]),
												   finalCategory(subcategorieTitle: "Гигиена и питание", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "dispenser", title: "Аксессуары для ванной и туалета"),
													   FinalSubcateggoryPath(pathUrl: "handsdryer", title: "Сушилки для рук, волос"),
													   FinalSubcateggoryPath(pathUrl: "water_cooler", title: "Кулеры для воды")])]),

												Category(categoryTitle: CategoryTitle.food.rawValue, subcategories: [
												   finalCategory(subcategorieTitle: "Пицца, суши, мясо", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "dominos", title: "Пицца"),
													   FinalSubcateggoryPath(pathUrl: "greenery", title: "Бакалея"),
													   FinalSubcateggoryPath(pathUrl: "kamhatka", title: "Камчатка")]),
												   finalCategory(subcategorieTitle: "Десерты", finalSubcateggoryPath: [
													   FinalSubcateggoryPath(pathUrl: "sweetmarket", title: "Sweetmarket"),
													   FinalSubcateggoryPath(pathUrl: "stolle", title: "Штолле"),
													   FinalSubcateggoryPath(pathUrl: "saladdrive", title: "Salad Drive")])])])

}
