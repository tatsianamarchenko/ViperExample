//
//  SavedModuleViewController.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//  
//

import UIKit

class SavedModuleViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Properties
    var presenter: ViewToPresenterSavedModuleProtocol?
    
}

extension SavedModuleViewController: PresenterToViewSavedModuleProtocol{
    // TODO: Implement View Output Methods
}
