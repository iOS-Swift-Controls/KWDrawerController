//
//  RightOptionViewController.swift
//  KWDrawerController
//
//  Created by Kawoou on 2017. 2. 11..
//  Copyright © 2017년 Kawoou. All rights reserved.
//

import UIKit

class RightOptionViewController: UIViewController {

    @IBOutlet weak var absolute: UISwitch!
    @IBOutlet weak var shadow: UISwitch!
    @IBOutlet weak var fadeScreen: UISwitch!
    @IBOutlet weak var blurScreen: UISwitch!
    @IBOutlet weak var overflowAnimation: UISwitch!
    @IBOutlet weak var gesture: UISwitch!
    @IBOutlet weak var tapToClose: UISwitch!
    @IBOutlet weak var bringToFront: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.absolute.addTarget(self, action: #selector(absoluteDidTouched(_:)), for: .valueChanged)
        self.shadow.addTarget(self, action: #selector(shadowDidTouched(_:)), for: .valueChanged)
        self.fadeScreen.addTarget(self, action: #selector(fadeScreenDidTouched(_:)), for: .valueChanged)
        self.blurScreen.addTarget(self, action: #selector(blurScreenDidTouched(_:)), for: .valueChanged)
        self.overflowAnimation.addTarget(self, action: #selector(overflowAnimationDidTouched(_:)), for: .valueChanged)
        self.gesture.addTarget(self, action: #selector(gestureDidTouched(_:)), for: .valueChanged)
        self.tapToClose.addTarget(self, action: #selector(tapToCloseDidTouched(_:)), for: .valueChanged)
        self.bringToFront.addTarget(self, action: #selector(bringToFrontDidTouched(_:)), for: .valueChanged)
        
        self.absolute.isOn = self.drawerController?.getAbsolute(for: .right) ?? false
        self.shadow.isOn = self.drawerController?.getSideOption(for: .right)?.isShadow ?? false
        self.fadeScreen.isOn = self.drawerController?.getSideOption(for: .right)?.isFadeScreen ?? false
        self.blurScreen.isOn = self.drawerController?.getSideOption(for: .right)?.isBlur ?? false
        self.overflowAnimation.isOn = self.drawerController?.getSideOption(for: .right)?.isOverflowAnimation ?? false
        self.gesture.isOn = self.drawerController?.getSideOption(for: .right)?.isGesture ?? false
        self.tapToClose.isOn = self.drawerController?.getSideOption(for: .right)?.isTapToClose ?? false
        self.bringToFront.isOn = self.drawerController?.getBringToFront(for: .right) ?? false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func absoluteDidTouched(_ sender: UISwitch) {
        self.drawerController?.setAbsolute(sender.isOn, for: .right)
    }
    @objc func shadowDidTouched(_ sender: UISwitch) {
        self.drawerController?.getSideOption(for: .right)?.isShadow = sender.isOn
    }
    @objc func fadeScreenDidTouched(_ sender: UISwitch) {
        self.drawerController?.getSideOption(for: .right)?.isFadeScreen = sender.isOn
    }
    @objc func blurScreenDidTouched(_ sender: UISwitch) {
        self.drawerController?.getSideOption(for: .right)?.isBlur = sender.isOn
    }
    @objc func overflowAnimationDidTouched(_ sender: UISwitch) {
        self.drawerController?.getSideOption(for: .right)?.isOverflowAnimation = sender.isOn
    }
    @objc func gestureDidTouched(_ sender: UISwitch) {
        self.drawerController?.getSideOption(for: .right)?.isGesture = sender.isOn
    }
    @objc func tapToCloseDidTouched(_ sender: UISwitch) {
        self.drawerController?.getSideOption(for: .right)?.isTapToClose = sender.isOn
    }
    @objc func bringToFrontDidTouched(_ sender: UISwitch) {
        self.drawerController?.setBringToFront(sender.isOn, for: .right)
    }

}
