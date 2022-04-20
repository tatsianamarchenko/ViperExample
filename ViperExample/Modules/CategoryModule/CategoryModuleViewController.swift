//
//  CategoryModuleViewController.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import UIKit

class CategoryModuleViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Properties
    var presenter: ViewToPresenterCategoryModuleProtocol?
    
}

extension CategoryModuleViewController: PresenterToViewCategoryModuleProtocol{
    // TODO: Implement View Output Methods
}
