//
//  NetworkManager.swift
//  Github
//
//  Created by Konstantin Skrypak on 23.01.2024.
//

import Foundation

class NetworkManager {
	private let baseUrl = "https://api.github.com"
	
	static let shared = NetworkManager()
	
	private init() {}
	
	func getFollowers(for username: String, page: Int, completed: @escaping (Result<[Follower], GFError>) -> Void) {
		let endpoint = baseUrl + "/users/\(username)/followers?per_page=100&page\(page)"
		
		guard let url = URL(string: endpoint) else {
			completed(.failure(.invalidUsername))
			return
		}
		
		let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
			
			if let _ = error {
				completed(.failure(.unableToComplete))
				return
			}
			
			guard let _ = response as? HTTPURLResponse else {
				completed(.failure( .invalidResponse))
				return
			}
			
			guard let data = data else {
				completed(.failure( .invalidData))
				return
			}
			
			
			do {
				let decoder = JSONDecoder()
				decoder.keyDecodingStrategy = .convertFromSnakeCase
				let followers = try decoder.decode([Follower].self, from: data)
				completed(.success(followers))
			}
			catch {
				completed(.failure(.invalidData))
			}
			
		}
		
		task.resume()
	}
}
