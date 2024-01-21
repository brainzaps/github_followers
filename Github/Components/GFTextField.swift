//
//  GFTextField.swift
//  Github
//
//  Created by Konstantin Skrypak on 21.01.2024.
//

import UIKit

class GFTextField: UITextField {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    configure()
  }
  
  required init?(coder: NSCoder) {
    fatalError("disabled init")
  }
  
  private func configure() {
    translatesAutoresizingMaskIntoConstraints = false
    
    layer.cornerRadius = 10
    layer.borderWidth  = 2
    layer.borderColor = UIColor.systemGray4.cgColor
    
    
    textColor = .label
    tintColor = .label
    textAlignment = .center
    font = UIFont.preferredFont(forTextStyle: .title2)
    adjustsFontSizeToFitWidth = true
    minimumFontSize = 12
    backgroundColor = .tertiarySystemBackground
    autocorrectionType = .no
    returnKeyType = .go
    
    placeholder = "Enter a username"
  }
}
