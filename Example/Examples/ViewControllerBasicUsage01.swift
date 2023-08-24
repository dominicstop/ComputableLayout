//
//  ViewControllerBasicUsage01.swift
//  ComputableLayout_Example
//
//  Created by Dominic Go on 8/25/23.
//  Copyright © 2023 Dominic Go. All rights reserved.
//

import UIKit
import ComputableLayout


class ViewControllerBasicUsage01: UIViewController {

  var layoutConfig = ComputableLayout(
    horizontalAlignment: .center,
    verticalAlignment: .center,
    width: .constant(100),
    height: .constant(100)
  );
  
  var layoutContext: ComputableLayoutValueContext? {
    ComputableLayoutValueContext(fromTargetViewController: self);
  };
  
  var floatingView: UIView?;

  override func viewDidLoad() {
    self.view.backgroundColor = .white;
    
    let floatingView = UIView();
    self.floatingView = floatingView;
    
    floatingView.backgroundColor = UIColor(
      hue: 0/360,
      saturation: 50/100,
      brightness: 100/100,
      alpha: 1.0
    );
  
    self.view.addSubview(floatingView);
  };
  
  override func viewDidLayoutSubviews() {
    guard let floatingView = self.floatingView,
          let layoutContext = self.layoutContext
    else { return };
    
    let computedRect =
      layoutConfig.computeRect(usingLayoutValueContext: layoutContext);
    
    floatingView.frame = computedRect;
  };
};
