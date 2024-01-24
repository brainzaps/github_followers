//
//  FollowerCell.swift
//  Github
//
//  Created by Konstantin Skrypak on 24.01.2024.
//

import UIKit

class FollowerCell: UICollectionViewCell {
	static let reuseID = "FollowerCell"
	
	let avatarImageView = GFAvatarView(frame: .zero)
	let usernameView =  GFTitleLabel(textAlignment: .center, fontSize: 16)
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}
	
	required init?(coder: NSCoder) {
		fatalError()
	}
	
	func set(follower: Follower) {
		usernameView.text = follower.login
	}
	
	func configure() {
		addSubview(avatarImageView)
		addSubview(usernameView)
		
		NSLayoutConstraint.activate([
			avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
			avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
			avatarImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
			avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
			
			usernameView.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 12),
			usernameView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
			usernameView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
			usernameView.heightAnchor.constraint(equalToConstant: 20)
		])
	}
	
}
