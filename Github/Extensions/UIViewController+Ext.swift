//
//  UIViewController+Ext.swift
//  Github
//
//  Created by Konstantin Skrypak on 22.01.2024.
//

import UIKit

extension UIViewController {
	
	func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
		DispatchQueue.main.async {
			let alertController = GFAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
			alertController.modalPresentationStyle = .overFullScreen
			alertController.modalTransitionStyle = .crossDissolve
			self.present(alertController, animated: true)
		}
	}
}
