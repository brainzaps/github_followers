//
//  FollowerViewController.swift
//  Github
//
//  Created by Konstantin Skrypak on 22.01.2024.
//

import UIKit

class FollowerViewController: UIViewController {
	
	var username: String?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = .systemBackground
		navigationController?.isNavigationBarHidden = false
		navigationController?.navigationBar.prefersLargeTitles = true
		
		
		NetworkManager.shared.getFollowers(for: username ?? "", page: 0) { result  in
			
			switch result {
			case .success(let followers):
				
				print(followers)
			case .failure(let error):
				self.presentGFAlertOnMainThread(title: "Error", message: error.rawValue, buttonTitle: "Ok")
			}
		}
	}
}
