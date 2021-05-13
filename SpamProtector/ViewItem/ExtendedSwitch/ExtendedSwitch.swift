//
//  ExtendedSwitch.swift
//  SpamProtector
//
//  Created by Jinsu Gu on 2021/05/11.
//

import UIKit

@IBDesignable
class ExtendedSwitch : UIView, ClassName {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var optionSwitch: UISwitch!
    @IBOutlet weak var contentLabel: UILabel!
    
    @IBInspectable var titleText:String = "" {
        didSet {
            titleLabel.text = titleText
        }
    }
    
    @IBInspectable var contentText:String = "" {
        didSet {
            contentLabel.text = contentText
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadView()
    }
    
    private func loadView() {
        
        let bundle = Bundle(for: Self.self)
        guard let view = bundle.loadNibNamed(self.className, owner: self, options: nil)?.first as? UIView else {
            return
        }
        
        view.frame = bounds
        addSubview(view)
    }
}

//for only preview in interface builder
extension ExtendedSwitch {
    
    override func prepareForInterfaceBuilder() {
        loadView()
        updateText()
    }
    
    private func updateText() {
        titleLabel.text = titleText
        contentLabel.text = contentText
    }
    
}
