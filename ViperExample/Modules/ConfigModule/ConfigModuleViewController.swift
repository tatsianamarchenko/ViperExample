//
//  ConfigModuleViewController.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 21.04.22.
//  
//

import UIKit

class ConfigModuleViewController: UITabBarController {
    
    var presenter: ViewToPresenterConfigModuleProtocol?

	func display(_ viewControllers: [UIViewController]) {
		self.viewControllers = viewControllers
		tabBar.backgroundColor = .systemGray5
	}
    
}

extension ConfigModuleViewController: PresenterToViewConfigModuleProtocol{
    // TODO: Implement View Output Methods
}
