//
//  ExtendedSwitch.swift
//  SpamProtector
//
//  Created by Jinsu Gu on 2021/05/11.
//

import UIKit

@IBDesignable
class ExtendedSwitch : UIView, ClassName {
    
    @IBOutlet weak var tt: UILabel!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadView()
    }
    
    private func loadView() {
        
        
        let nib = UINib(nibName: "ExtendedSwitch", bundle: Bundle.main)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            return
        }
        
        view.frame = bounds
        addSubview(view)
        
        
        
        /*
        let view = Bundle.main.loadNibNamed("ExtendedSwitch", owner: self, options: nil)?.first as! UIView
        view.frame = bounds
        
        
        tt.text = ExtendedSwitch.className
        
        addSubview(view)
 */
    }
}
