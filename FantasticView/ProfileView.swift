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
            shouldSetupContraints = false
        }
        super.updateConstraints()
    }
}
