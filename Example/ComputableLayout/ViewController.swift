//
//  ViewController.swift
//  ComputableLayout
//
//  Created by Dominic Go on 08/24/2023.
//  Copyright (c) 2023 Dominic Go. All rights reserved.
//

import UIKit;
import ComputableLayout;

enum ScreenSize {

  case iPhone8;
  
  var size: CGSize {
    switch self {
      case .iPhone8:
        return CGSize(width: 375, height: 667);
    };
  };
};


let boxSizeSmall: CGFloat = 125;


class ComputableLayoutTestViewController : UIViewController {
  
  lazy var layoutConfigs: [ComputableLayout] = [
  
    // MARK: Corners Test
    // ------------------
    
    // 0
    ComputableLayout(
      horizontalAlignment: .left,
      verticalAlignment: .top,
      width: .constant(125),
      height: .constant(125)
    ),
    
    // 1
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .top,
      width: .constant(125),
      height: .constant(125)
    ),
    
    // 2
    ComputableLayout(
      horizontalAlignment: .right,
      verticalAlignment: .top,
      width: .constant(125),
      height: .constant(125)
    ),
    
    // 3
    ComputableLayout(
      horizontalAlignment: .right,
      verticalAlignment: .center,
      width: .constant(125),
      height: .constant(125)
    ),
    
    // 4
    ComputableLayout(
      horizontalAlignment: .right,
      verticalAlignment: .bottom,
      width: .constant(125),
      height: .constant(125)
    ),
    
    // 5
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .bottom,
      width: .constant(125),
      height: .constant(125)
    ),
    
    // 6
    ComputableLayout(
      horizontalAlignment: .left,
      verticalAlignment: .bottom,
      width: .constant(125),
      height: .constant(125)
    ),
    
    // 7
    ComputableLayout(
      horizontalAlignment: .left,
      verticalAlignment: .center,
      width: .constant(125),
      height: .constant(125)
    ),
    
    // MARK: Corners + Safe Area Margin Test
    // -------------------------------------
    
    // 8
    ComputableLayout(
      horizontalAlignment: .left,
      verticalAlignment: .top,
      width: .constant(125),
      height: .constant(125),
      marginLeft: .safeAreaInsets(
        insetKey: \.left,
        minValue: .constant(10)
      ),
      marginTop: .safeAreaInsets(
        insetKey: \.top,
        minValue: .constant(10)
      )
    ),
    
    // 9
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .top,
      width: .constant(125),
      height: .constant(125),
      marginTop: .safeAreaInsets(
        insetKey: \.top,
        minValue: .constant(10)
      )
    ),
    
    // 10
    ComputableLayout(
      horizontalAlignment: .right,
      verticalAlignment: .top,
      width: .constant(125),
      height: .constant(125),
      marginRight: .safeAreaInsets(
        insetKey: \.right,
        minValue: .constant(10)
      ),
      marginTop: .safeAreaInsets(
        insetKey: \.top,
        minValue: .constant(10)
      )
    ),
    
    // 11
    ComputableLayout(
      horizontalAlignment: .right,
      verticalAlignment: .center,
      width: .constant(125),
      height: .constant(125),
      marginRight: .safeAreaInsets(
        insetKey: \.right,
        minValue: .constant(10)
      )
    ),
    
    // 12
    ComputableLayout(
      horizontalAlignment: .right,
      verticalAlignment: .bottom,
      width: .constant(125),
      height: .constant(125),
      marginRight: .safeAreaInsets(
        insetKey: \.right,
        minValue: .constant(10)
      ),
      marginBottom: .safeAreaInsets(
        insetKey: \.bottom,
        minValue: .constant(10)
      )
    ),
    
    // 13
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .bottom,
      width: .constant(125),
      height: .constant(125),
      marginBottom: .safeAreaInsets(
        insetKey: \.bottom,
        minValue: .constant(10)
      )
    ),
    
    // 14
    ComputableLayout(
      horizontalAlignment: .left,
      verticalAlignment: .bottom,
      width: .constant(125),
      height: .constant(125),
      marginLeft: .safeAreaInsets(
        insetKey: \.left,
        minValue: .constant(10)
      ),
      marginBottom: .safeAreaInsets(
        insetKey: \.bottom,
        minValue: .constant(10)
      )
    ),
    
    // 15
    ComputableLayout(
      horizontalAlignment: .left,
      verticalAlignment: .center,
      width: .constant(125),
      height: .constant(125),
      marginLeft: .safeAreaInsets(
        insetKey: \.left,
        minValue: .constant(10)
      )
    ),
    
    // MARK: Vertical Stretch Test
    // ---------------------------
    
    // 16
    ComputableLayout(
      horizontalAlignment: .left,
      verticalAlignment: .center,
      width: .percent(percentValue: 0.5),
      height: .stretch,
      marginLeft: .percent(
        relativeTo: .currentWidth,
        percentValue: -0.5
      )
    ),

    // 17
    ComputableLayout(
      horizontalAlignment: .left,
      verticalAlignment: .center,
      width: .percent(percentValue: 0.5),
      height: .stretch
    ),
    
    // 18
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .center,
      width: .percent(percentValue: 0.5),
      height: .stretch
    ),
    
    // 19
    ComputableLayout(
      horizontalAlignment: .right,
      verticalAlignment: .center,
      width: .percent(percentValue: 0.5),
      height: .stretch
    ),
    
    // 20
    ComputableLayout(
      horizontalAlignment: .right,
      verticalAlignment: .center,
      width: .percent(percentValue: 0.5),
      height: .stretch,
      marginRight: .percent(
        relativeTo: .currentWidth,
        percentValue: -0.5
      )
    ),
    
    // MARK: Vertical Stretch Test + Margin `multipleValues`
    // ----------------------------------------------------
    
    // 21
    ComputableLayout(
      horizontalAlignment: .left,
      verticalAlignment: .center,
      width: .percent(percentValue: 0.5),
      height: .stretch,
      marginLeft: .multipleValues([
        .safeAreaInsets(insetKey: \.left),
        .constant(15),
      ]),
      marginTop: .multipleValues([
        .safeAreaInsets(insetKey: \.top),
        .constant(15),
      ]),
      marginBottom: .multipleValues([
        .safeAreaInsets(insetKey: \.bottom),
        .constant(15),
      ])
    ),
    
    // 22
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .center,
      width: .percent(percentValue: 0.5),
      height: .stretch,
      marginTop: .multipleValues([
        .safeAreaInsets(insetKey: \.top),
        .constant(15),
      ]),
      marginBottom: .multipleValues([
        .safeAreaInsets(insetKey: \.bottom),
        .constant(15),
      ])
    ),
    
    // 23
    ComputableLayout(
      horizontalAlignment: .right,
      verticalAlignment: .center,
      width: .percent(percentValue: 0.5),
      height: .stretch,
      marginRight: .multipleValues([
        .safeAreaInsets(insetKey: \.right),
        .constant(15),
      ]),
      marginTop: .multipleValues([
        .safeAreaInsets(insetKey: \.top),
        .constant(15),
      ]),
      marginBottom: .multipleValues([
        .safeAreaInsets(insetKey: \.bottom),
        .constant(15),
      ])
    ),
    
    // MARK: Horizontal Stretch Test
    // -----------------------------
    
    // 24
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .bottom,
      width: .stretch,
      height: .percent(percentValue: 0.4),
      marginBottom: .percent(
        relativeTo: .currentHeight,
        percentValue: -0.5
      )
    ),

    // 25
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .bottom,
      width: .stretch,
      height: .percent(percentValue: 0.4)
    ),
    
    // 26
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .center,
      width: .stretch,
      height: .percent(percentValue: 0.4)
    ),
    
    // 27
    ComputableLayout(
      horizontalAlignment: .right,
      verticalAlignment: .top,
      width: .stretch,
      height: .percent(percentValue: 0.4)
    ),
    
    // 28
    ComputableLayout(
      horizontalAlignment: .right,
      verticalAlignment: .top,
      width: .stretch,
      height: .percent(percentValue: 0.4),
      marginTop: .percent(
        relativeTo: .currentHeight,
        percentValue: -0.5
      )
    ),
    
    // MARK: Horizontal/Vertical Center Test
    // -------------------------------------
    
    // 29
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .center,
      width: .constant(150),
      height: .constant(150),
      marginBottom: .constant(100)
    ),
    
    // MARK: Misc
    // ----------
    
    // 6 G
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .bottom,
      width: ComputableLayoutValue(
        mode: .stretch
      ),
      height: ComputableLayoutValue(
        mode: .percent(percentValue: 0.3)
      )
    ),
    // 7 H
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .top,
      width: ComputableLayoutValue(
        mode: .stretch
      ),
      height: ComputableLayoutValue(
        mode: .percent(percentValue: 0.3)
      )
    ),
    // 8 I
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .center,
      width: ComputableLayoutValue(
        mode: .percent(percentValue: 0.7),
        maxValue: .constant(ScreenSize.iPhone8.size.width)
      ),
      height: ComputableLayoutValue(
        mode: .percent(percentValue: 0.7),
        maxValue: .constant(ScreenSize.iPhone8.size.height)
      )
    ),
    // 9 J
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .top,
      width: ComputableLayoutValue(
        mode: .stretch
      ),
      height: ComputableLayoutValue(
        mode: .percent(percentValue: 0.3)
      ),
      marginLeft: .constant(20),
      marginRight: .constant(20)
    ),
    // 10 K
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .bottom,
      width: ComputableLayoutValue(
        mode: .stretch
      ),
      height: ComputableLayoutValue(
        mode: .percent(percentValue: 0.3)
      ),
      marginLeft: .constant(20),
      marginRight: .constant(20)
    ),
    // 11 L
    ComputableLayout(
      horizontalAlignment: .left,
      verticalAlignment: .center,
      width: ComputableLayoutValue(
        mode: .percent(percentValue: 0.5)
      ),
      height: ComputableLayoutValue(
        mode: .percent(percentValue: 0.6),
        maxValue: .constant(ScreenSize.iPhone8.size.height)
      )
    ),
    // 12 M
    ComputableLayout(
      horizontalAlignment: .right,
      verticalAlignment: .center,
      width: ComputableLayoutValue(
        mode: .percent(percentValue: 0.5)
      ),
      height: ComputableLayoutValue(
        mode: .percent(percentValue: 0.6),
        maxValue: .constant(ScreenSize.iPhone8.size.height)
      )
    ),
    // N
    // O = 13
    ComputableLayout(
      horizontalAlignment: .left,
      verticalAlignment: .center,
      width: ComputableLayoutValue(
        mode: .percent(percentValue: 0.4)
      ),
      height: ComputableLayoutValue(
        mode: .stretch,
        maxValue: .constant(ScreenSize.iPhone8.size.height)
      ),
      marginLeft: .constant(20),
      marginTop: .constant(20),
      marginBottom: .constant(20)
    ),
    // P
    ComputableLayout(
      horizontalAlignment: .right,
      verticalAlignment: .center,
      width: ComputableLayoutValue(
        mode: .percent(percentValue: 0.4)
      ),
      height: ComputableLayoutValue(
        mode: .stretch,
        maxValue: .constant(ScreenSize.iPhone8.size.height)
      ),
      marginRight: .constant(20),
      marginTop: .constant(20),
      marginBottom: .constant(20)
    ),
    // Q = 15
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .bottom,
      width: ComputableLayoutValue(
        mode: .stretch
      ),
      height: ComputableLayoutValue(
        mode: .percent(percentValue: 0.4)
      ),
      marginLeft: .constant(20),
      marginRight: .constant(20),
      marginBottom: .constant(15)
    ),
    // R - 16
    ComputableLayout(
      horizontalAlignment: .center,
      verticalAlignment: .top,
      width: ComputableLayoutValue(
        mode: .stretch
      ),
      height: ComputableLayoutValue(
        mode: .percent(percentValue: 0.4)
      ),
      marginLeft: .constant(20),
      marginRight: .constant(20),
      marginTop: .constant(20)
    )
  ];
  
  var layoutConfigCount = 0;
  
  var layoutConfigIndex: Int {
    self.layoutConfigCount % layoutConfigs.count;
  };
  
  var layoutConfig: ComputableLayout {
    return self.layoutConfigs[self.layoutConfigIndex];
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
    // self.applyRadiusMaskFor();
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
    //self.applyRadiusMaskFor();
  };
  
  @objc func onPressFloatingView(_ sender: UITapGestureRecognizer){
    self.layoutConfigCount += 1;
    self.updateFloatingView();
  };
  
  func applyRadiusMaskFor() {
    let path = UIBezierPath(
      shouldRoundRect  : self.floatingView.bounds,
      topLeftRadius    : 20,
      topRightRadius   : 20,
      bottomLeftRadius : 20,
      bottomRightRadius: 20
    );
    
    let shape = CAShapeLayer();
    shape.path = path.cgPath;
    
    self.floatingView.layer.mask = shape;
  };
};
