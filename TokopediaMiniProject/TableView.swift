//
//  FirstTableView.swift
//  TokopediaMiniProject
//
//  Created by William Yulio on 13/06/23.
//

import UIKit

class FirstTableView: UITableView {
    
    override var intrinsicContentSize: CGSize {
        self.layoutIfNeeded()
        return self.contentSize
    }
    
    override var contentSize: CGSize {
        didSet{
            self.invalidateIntrinsicContentSize()
        }
    }
}
