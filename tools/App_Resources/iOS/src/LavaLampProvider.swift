//
//  LavaLampProvider.swift
//  nativescript-lava-lamp
//
//  Created by NathanWalker on 2022/01/05
//

import SwiftUI

@objc
class LavaLampProvider: UIViewController, SwiftUIProvider {
    private var swiftUI: LavaLamp?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    required public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// Receive data from NativeScript
    func updateData(data: NSDictionary) {
        
        if (self.swiftUI == nil) {
            swiftUI = LavaLamp()
            setupSwiftUIView(content: swiftUI)
        }

        data.forEach { (k,v) in swiftUI!.data.props[k] = v }
    }
    
    /// Send data to NativeScript
    var onEvent: ((NSDictionary) -> ())?
}
