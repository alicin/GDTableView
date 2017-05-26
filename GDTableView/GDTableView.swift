//
//  GDTableView.swift
//  GDTableView
//
//  Created by Ali Can Bardakci on 25/05/2017.
//  Copyright © 2017 Tavsanlar AS. All rights reserved.
//

import Cocoa

@objc protocol GDTableViewDelegate: NSTableViewDelegate {
    @objc optional func bottomDidReached()
}

class GDTableView: NSTableView {
    
    var triggerHeight: CGFloat = 10.0
    var locked: Bool = false
    
    private var subDelegate: GDTableViewDelegate?
    override var delegate: NSTableViewDelegate? {
        get { return self.subDelegate }
        set { self.subDelegate = newValue as! GDTableViewDelegate? }
    }
    
    func didScroll(sender: Any) {
        if locked { return }
        
        let contentHeight = self.frame.height - 50
        let currentPosition = self.enclosingScrollView!.visibleRect.maxY
        
        if (currentPosition > contentHeight - 2.0) {
            self.subDelegate?.bottomDidReached!()
        }
    }
    
}
