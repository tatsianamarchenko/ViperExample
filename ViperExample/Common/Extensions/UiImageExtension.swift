//
//  UiImageExtension.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 20.04.22.
//

import Foundation
import UIKit

extension UIImageView {

	func downloadedFrom(url: String) {
		guard let url = URL(string: url) else { return }
		URLSession.shared.dataTask(with: url, completionHandler: { (data, _, error) in
			guard let data = data, error == nil, let image = UIImage(data: data) else { return }
			DispatchQueue.main.async { () -> Void in
				self.image = image
			}
		}).resume()
	}
}
