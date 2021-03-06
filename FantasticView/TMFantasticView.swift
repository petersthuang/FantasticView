//
//  FantasticView.swift
//  FantasticView
//
//  Created by Peter_st Huang_黃士丁 on 5/11/17.
//  Copyright © 2017 TutorMing. All rights reserved.
//

import UIKit

public class TMFantasticView: UIView {

    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var colorCounter = 0
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
        let timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) {
            (timer) in
            UIView.animate(withDuration: 2.0) {
                self.layer.backgroundColor = self.colors[self.colorCounter%6].cgColor
                self.colorCounter+=1
            }
        }
        timer.fire()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
