//
//  ComputableLayoutValuePercentTarget+EnumCaseStringRepresentable.swift
//  
//
//  Created by Dominic Go on 12/18/23.
//

import Foundation
import DGSwiftUtilities

extension ComputableLayoutValuePercentTarget: 
  EnumCaseStringRepresentable, CustomStringConvertible {
  
  public var caseString: String {
    switch self {
      case .screenSize:
        return "screenSize";
        
      case .screenWidth:
        return "screenWidth";
        
      case .screenHeight:
        return "screenHeight";
        
      case .windowSize:
        return "windowSize";
        
      case .windowWidth:
        return "windowWidth";
        
      case .windowHeight:
        return "windowHeight";
        
      case .targetSize:
        return "targetSize";
        
      case .targetWidth:
        return "targetWidth";
        
      case .targetHeight:
        return "targetHeight";
        
      case .currentSize:
        return "currentSize";
        
      case .currentWidth:
        return "currentWidth";
        
      case .currentHeight:
        return "currentHeight";
    };
  };
};

