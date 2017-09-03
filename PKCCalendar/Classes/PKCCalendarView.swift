//
//  PKCCalendarView.swift
//  Pods
//
//  Created by Kim Guanho on 2017. 9. 2..
//
//

import UIKit

public class PKCCalendarView: UIView {
    private var containerView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInitialization()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInitialization()
    }
    
    private func commonInitialization(){
        self.containerView = Bundle(for: PKCCalendar.self).loadNibNamed("PKCCalendarView", owner: self, options: nil)?.first as! UIView
        self.containerView.frame = self.bounds
        self.addSubview(self.containerView)
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        self.initVars()
    }
    
    private func initVars(){
        self.backgroundColor = .clear
        self.containerView.backgroundColor = UIColor.clear
    }

}
