//
//  ViewController.swift
//  ComputableLayout
//
//  Created by Dominic Go on 08/24/2023.
//  Copyright (c) 2023 Dominic Go. All rights reserved.
//

import UIKit;
import ComputableLayout;


class ComputableLayoutTestViewController : UIViewController {
  
  var layoutConfigCount = 0;
  
  var layoutConfigIndex: Int {
    self.layoutConfigCount % ComputableLayoutTestPresets.count;
  };
  
  var layoutConfig: ComputableLayout {
    return ComputableLayoutTestPresets[self.layoutConfigIndex];
  };
  
  var layoutValueContext: ComputableLayoutValueContext? {
    .init(fromTargetViewController: self)
  };
  
  lazy var floatingViewLabel: UILabel = {
    let label = UILabel();
    
    label.text = "\(self.layoutConfigIndex)";
    label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5);
    label.font = .boldSystemFont(ofSize: 22);
    
    return label;
  }();
  
  lazy var floatingView: UIView = {
    let view = UIView();
    
    view.backgroundColor = UIColor(
      hue: 0/360,
      saturation: 50/100,
      brightness: 100/100,
      alpha: 1.0
    );
    
    view.addGestureRecognizer(
      UITapGestureRecognizer(
        target: self,
        action: #selector(self.onPressFloatingView(_:))
      )
    );
    
    let floatingViewLabel = self.floatingViewLabel;
    view.addSubview(floatingViewLabel);
    
    floatingViewLabel.translatesAutoresizingMaskIntoConstraints = false;
    
    NSLayoutConstraint.activate([
      floatingViewLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      floatingViewLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
    ]);
    
    return view;
  }();

  override func viewDidLoad() {
    self.view.backgroundColor = .white;
    
    let floatingView = self.floatingView;
    self.view.addSubview(floatingView);
    
    self.view = view;
  };
  
  override func viewDidLayoutSubviews() {
    self.updateFloatingView();
  };
  
  func updateFloatingView(){
    guard let layoutValueContext = self.layoutValueContext else { return };
    
    let layoutConfig = self.layoutConfig;
    
    let computedRect = layoutConfig.computeRect(
      usingLayoutValueContext: layoutValueContext
    );
    
    let floatingView = self.floatingView;
    floatingView.frame = computedRect;
    
    self.floatingViewLabel.text = "\(self.layoutConfigIndex)";
  };
  
  @objc func onPressFloatingView(_ sender: UITapGestureRecognizer){
    self.layoutConfigCount += 1;
    self.updateFloatingView();
  };
};
