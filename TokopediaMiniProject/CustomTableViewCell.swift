//
//  CustomeTableViewCell.swift
//  TokopediaMiniProject
//
//  Created by William Yulio on 12/06/23.
//

import UIKit

class CustomeTableViewCell: UITableViewCell {
    
    static let identifier = "CustomCell"
    
    let categoryName: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        return label
    }()
    
    let totalChildren: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.textColor = .gray
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func setupUI(){
        self.contentView.addSubview(categoryName)
        self.contentView.addSubview(totalChildren)
        
        categoryName.translatesAutoresizingMaskIntoConstraints = false
        totalChildren.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            categoryName.topAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.topAnchor),
            categoryName.bottomAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.bottomAnchor),
            categoryName.leadingAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.leadingAnchor),
            
            totalChildren.topAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.topAnchor),
            totalChildren.bottomAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.bottomAnchor),
            totalChildren.leadingAnchor.constraint(equalTo: categoryName.trailingAnchor, constant: 16),
            totalChildren.trailingAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.trailingAnchor, constant: -12),
        ])
        
    }
    
    func configure(with category : String, and total : Int){
        self.categoryName.text = category
        if total == 0{
            self.totalChildren.text = ""
        }else{
            self.totalChildren.text = "\(total) Children"
        }
    }

}
