//
//  FollowerViewController.swift
//  Github
//
//  Created by Konstantin Skrypak on 22.01.2024.
//

import UIKit

class FollowerViewController: UIViewController {
	
	var username: String?
	var collectionView: UICollectionView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		configureViewController()
		configureCollectionView()
		
		NetworkManager.shared.getFollowers(for: username ?? "", page: 0) { result  in
			
			switch result {
			case .success(let followers):
				
				print(followers)
			case .failure(let error):
				self.presentGFAlertOnMainThread(title: "Error", message: error.rawValue, buttonTitle: "Ok")
			}
		}
	}
	
	func createTreeColumnFlowLayout() -> UICollectionViewFlowLayout {
		let width = view.bounds.width
		let padding: CGFloat = 12
		let minimumItemSpacing: CGFloat = 10
		
		let availableWidth = width - ( padding * 2) - (minimumItemSpacing * 2 )
		let itemWidth = availableWidth / 3
		
		let flowLayout = UICollectionViewFlowLayout()
		flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
		flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
		
		return flowLayout
	}
	
	func configureViewController() {
		
		view.backgroundColor = .systemBackground
		navigationController?.isNavigationBarHidden = false
		navigationController?.navigationBar.prefersLargeTitles = true
		
	}
	
	func configureCollectionView() {
		collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createTreeColumnFlowLayout())
		
		view.addSubview(collectionView)
		
		collectionView.backgroundColor = .systemBackground
		collectionView.register(FollowerCell.self, forCellWithReuseIdentifier: FollowerCell.reuseID)
	}
}
