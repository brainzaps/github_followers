//
//  GFAvatarView.swift
//  Github
//
//  Created by Konstantin Skrypak on 24.01.2024.
//

import UIKit

class GFAvatarView: UIImageView {
	
	let placeholderImage = UIImage(named: "avatar-placeholder")

	override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}
	
	required init?(coder: NSCoder) {
		fatalError()
	}
	
	func configure() {
		layer.cornerRadius = 10
		clipsToBounds = true
		image = placeholderImage
		translatesAutoresizingMaskIntoConstraints = false 
	}

}
