//
//  MockService.swift
//  VIPER best practices
//
//  Created by Tibor Bödecs on 2019. 03. 05..
//  Copyright © 2019. Tibor Bödecs. All rights reserved.
//

import Foundation

class ApiService {

	enum Error: LocalizedError {
		case invalidStatusCode
		case emptyData
		case requestError
	}


	func fetch<T: Decodable> (urlString: String,
							  completion: @escaping((Result<T, Error>) -> Void)) {

		guard let url = URL(string: urlString) else {
			print("Error: Invalid URL.")
			return
		}
		let configuration = URLSessionConfiguration.default
		configuration.timeoutIntervalForRequest = 30
		let session = URLSession(configuration: configuration)
		session.dataTask(with: url) { (data, _, error) in
			if error != nil {
				completion(.failure(.requestError))
				return
			}
			guard let data = data else {
				completion(.failure(.emptyData))
				return
			}
			let decoder = JSONDecoder()
			do {
				let decodedData = try decoder.decode(T.self, from: data)
				completion(.success(decodedData))

			} catch {
				print("Error: \(error.localizedDescription)")
			}
		}.resume()
	}
}

