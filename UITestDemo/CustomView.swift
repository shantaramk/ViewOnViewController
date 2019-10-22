
//
//  CustomView.swift
//  UITestDemo
//
//  Created by Shantaram K on 20/09/19.
//  Copyright © 2019 Shantaram Kokate. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        self.backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
        self.backgroundColor = .red

    }
}

extension CustomView {
    
    func setupView() {
        let customView = loadNibFile()
        
        //set frame based on the current screen
        
        customView.frame = bounds
        
        customView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        addSubview(customView)
    }
    
    func loadNibFile() -> UIView {
        
        let bundle = Bundle(for: type(of: self))
        let nibFile = UINib(nibName: "CustomView", bundle: bundle)
        let viewFile = nibFile.instantiate(withOwner: self, options: nil)[0] as! UIView
        return viewFile
    }
}

 
