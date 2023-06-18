//
//  CustomCell.swift
//  TableView
//
//  Created by leoncio on 6/18/23.
//

import UIKit

class CustomCell: UITableViewCell {

    static let identifier = "CustomCell"
    
    private let myImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(systemName: "questionmark")
        iv.tintColor = .label
        
        return iv
    }()
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.text = "Error"
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 24, weight: .bold)
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with image: UIImage, and label: String) {
        myImageView.image = image
        myLabel.text = label
    }
    
    private func setupUI() {
        
        contentView.addSubview(myImageView)
        contentView.addSubview(myLabel)
        
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            myImageView.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            myImageView.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor, constant: -200),
            myImageView.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor),
            myImageView.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
            myImageView.widthAnchor.constraint(equalToConstant: 90),
            myImageView.heightAnchor.constraint(equalToConstant: 90),
            
            myLabel.leadingAnchor.constraint(equalTo: myImageView.trailingAnchor),
            myLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            myLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            myLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
}
