//
//  ViewController.swift
//  FantasticView
//
//  Created by Peter_st Huang_黃士丁 on 5/11/17.
//  Copyright © 2017 TutorMing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fantasticView = TMFantasticView(frame: .zero)
        view.addSubview(fantasticView)
        fantasticView.autoPinEdgesToSuperviewEdges(with: .zero)
        
        let profileView = ProfileView(frame: .zero)
        view.addSubview(profileView)
        profileView.autoPinEdgesToSuperviewEdges(with: .zero)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

