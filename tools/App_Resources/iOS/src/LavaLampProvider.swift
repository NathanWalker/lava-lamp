//
//  LavaLampProvider.swift
//  nativescript-lava-lamp
//
//  Created by NathanWalker on 2022/01/05
//

import SwiftUI

@objc
class LavaLampProvider: UIViewController, SwiftUIProvider {

  // MARK: INIT

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  required public init() {
    super.init(nibName: nil, bundle: nil)
  }

  public override func viewDidLoad() {
    super.viewDidLoad()
    setupSwiftUIView(content: swiftUIView)
  }

  // MARK: PRIVATE
  private var swiftUIView = LavaLamp()

  /// Receive data from NativeScript
  func updateData(data: NSDictionary) {
    data.forEach { (k,v) in swiftUIView.data.props[k] = v }
  }

  /// Allow sending of data to NativeScript
  var onEvent: ((NSDictionary) -> ())?
}
