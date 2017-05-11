//
//  ProfileView.swift
//  FantasticView
//
//  Created by Peter_st Huang_黃士丁 on 5/11/17.
//  Copyright © 2017 TutorMing. All rights reserved.
//

import UIKit
import PureLayout

class ProfileView: UIView {
    
    var shouldSetupContraints = true
    
    var banner: UIImageView!
    var profilePic: UIImageView!
    var segmentedControl: UISegmentedControl!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadView()
    }
    
    private func loadView() {
        
        banner = UIImageView(frame: .zero)
        banner.backgroundColor = UIColor.gray
        self.addSubview(banner)
        
        profilePic = UIImageView(frame: .zero)
        profilePic.backgroundColor = UIColor.gray
        profilePic.layer.borderColor = UIColor.white.cgColor
        profilePic.layer.borderWidth = 1.0
        profilePic.layer.cornerRadius = 5.0
        self.addSubview(profilePic)
        
        segmentedControl = UISegmentedControl(items: ["Tweets", "Media", "Likes"])
        self.addSubview(segmentedControl)
    }
    
    override func updateConstraints() {
        if shouldSetupContraints {
            
            let edgesInset: CGFloat = 10.0
            
            banner.autoPinEdgesToSuperviewEdges(with: .zero, excludingEdge: .bottom)
            banner.autoSetDimension(.height, toSize: 150)
            
            profilePic.autoPinEdge(toSuperviewEdge: .left, withInset: edgesInset)
            profilePic.autoSetDimensions(to: CGSize(width: 100, height: 100))
            profilePic.centerYAnchor.constraint(equalTo: banner.bottomAnchor).isActive = true
            
            segmentedControl.autoPinEdge(toSuperviewEdge: .bottom, withInset: edgesInset)
            segmentedControl.autoPinEdge(toSuperviewEdge: .left, withInset: edgesInset)
            segmentedControl.autoPinEdge(toSuperviewEdge: .right, withInset: edgesInset)
            
            shouldSetupContraints = false
        }
        super.updateConstraints()
    }
}
