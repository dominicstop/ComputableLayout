//
//  ComputableLayoutTestPresets.swift
//  ComputableLayout_Example
//
//  Created by Dominic Go on 8/25/23.
//  Copyright © 2023 Dominic Go. All rights reserved.
//

import UIKit
import ComputableLayout

enum ScreenSize {

  case iPhone8;
  
  var size: CGSize {
    switch self {
      case .iPhone8:
        return CGSize(width: 375, height: 667);
    };
  };
};

let ComputableLayoutTestPresets: [ComputableLayout] = [
  
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
  
  // 30 - 6 G
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
  
  // 31 - 7 H
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
  
  // 32 - 8 I
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
  
  // 33 - 9 J
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
  
  // 34 -  10 K
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
  
  // 35 - 11 L
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
  
  // 36 - 12 M
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
  
  // 37 - O = 13
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
  
  // 38 - P
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
  
  // 39 - Q = 15
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
  
  // 40 - 16
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
  ),
  
  // MARK: Stretch + Safe Area
  // -------------------------
  
  // 41 - Stretch + Safe Area
  ComputableLayout(
    horizontalAlignment: .center,
    verticalAlignment: .center,
    width: .stretch,
    height: .stretch,
    marginLeft: .safeAreaInsets(insetKey: \.left),
    marginRight: .safeAreaInsets(insetKey: \.right),
    marginTop: .safeAreaInsets(insetKey: \.top),
    marginBottom: .safeAreaInsets(insetKey: \.bottom)
  ),
  
  // 42 - Stretch + Safe Area + Constant Margins
  ComputableLayout(
    horizontalAlignment: .center,
    verticalAlignment: .center,
    width: .stretch,
    height: .stretch,
    marginLeft: .multipleValues([
      .safeAreaInsets(insetKey: \.left),
      .constant(10),
    ]),
    marginRight: .multipleValues([
      .safeAreaInsets(insetKey: \.right),
      .constant(10),
    ]),
    marginTop: .multipleValues([
      .safeAreaInsets(insetKey: \.top),
      .constant(10),
    ]),
    marginBottom: .multipleValues([
      .safeAreaInsets(insetKey: \.bottom),
      .constant(10),
    ])
  ),
  
  // 43 - Stretch + Safe Area + Constant Percent
  ComputableLayout(
    horizontalAlignment: .center,
    verticalAlignment: .center,
    width: .stretch,
    height: .stretch,
    marginLeft: .multipleValues([
      .safeAreaInsets(insetKey: \.left),
      .percent(percentValue: 0.1),
    ]),
    marginRight: .multipleValues([
      .safeAreaInsets(insetKey: \.right),
      .percent(percentValue: 0.1),
    ]),
    marginTop: .multipleValues([
      .safeAreaInsets(insetKey: \.top),
      .percent(percentValue: 0.1),
    ]),
    marginBottom: .multipleValues([
      .safeAreaInsets(insetKey: \.bottom),
      .percent(percentValue: 0.1),
    ])
  ),
  
  // MARK: Percent Margins
  // ---------------------
  
  // 44
  ComputableLayout(
    horizontalAlignment: .left,
    verticalAlignment: .top,
    width: .constant(125),
    height: .constant(125),
    marginLeft: .percent(percentValue: 0.1),
    marginTop: .percent(percentValue: 0.1)
  ),
  
  // 45
  ComputableLayout(
    horizontalAlignment: .left,
    verticalAlignment: .top,
    width: .constant(125),
    height: .constant(125),
    marginLeft: .multipleValues([
      .safeAreaInsets(insetKey: \.left),
      .percent(percentValue: 0.25),
    ]),
    marginTop: .multipleValues([
      .safeAreaInsets(insetKey: \.top),
      .percent(percentValue: 0.25),
    ])
  ),
  
  // 46
  ComputableLayout(
    horizontalAlignment: .left,
    verticalAlignment: .top,
    width: .constant(125),
    height: .constant(125),
    marginLeft: .multipleValues([
      .safeAreaInsets(insetKey: \.left),
      .percent(percentValue: 0.5),
    ]),
    marginTop: .multipleValues([
      .safeAreaInsets(insetKey: \.top),
      .percent(percentValue: 0.5),
    ])
  ),
  
  // 47
  ComputableLayout(
    horizontalAlignment: .left,
    verticalAlignment: .top,
    width: .constant(125),
    height: .constant(125),
    marginLeft: .multipleValues([
      .safeAreaInsets(insetKey: \.left),
      .percent(percentValue: 0.75),
    ]),
    marginTop: .multipleValues([
      .safeAreaInsets(insetKey: \.top),
      .percent(percentValue: 0.75),
    ])
  ),
  
  // 48
  ComputableLayout(
    horizontalAlignment: .left,
    verticalAlignment: .top,
    width: .constant(125),
    height: .constant(125),
    marginLeft: .percent(percentValue: 0.9),
    marginTop: .percent(percentValue: 0.9)
  ),
];
