//
//  GFButton.swift
//  Github
//
//  Created by Konstantin Skrypak on 21.01.2024.
//

import UIKit

class GFButton: UIButton {
  
  
  required init?(coder: NSCoder) {
    fatalError("disabled init")
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    configure()
  }
  
  init(backgroundColor: UIColor, title: String) {
    super.init(frame: .zero)
    self.backgroundColor = backgroundColor
    self.setTitle(title, for: .normal)
    configure()
  }
  
  private func configure() {
    layer.cornerRadius = 10
    titleLabel?.textColor = .white
    titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
    translatesAutoresizingMaskIntoConstraints = false
  }
}
