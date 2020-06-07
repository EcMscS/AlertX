//
//  Window.swift
//  AlertX
//
//  Copyright © 2020 Neel Makhecha. All rights reserved.
//  https://github.com/neel-makhecha/AlertX
//

import SwiftUI

extension AlertX {
    
    struct Window: View {
        
        var windowColor: Color
        var windowColorOpacity: Double
        var cornerRadius: CGFloat
        
        public init(color: Color, cornerRadiusEnabled: Bool, transparencyEnabled: Bool) {
            self.windowColor = color
            self.windowColorOpacity = transparencyEnabled ? AlertX.defaultAlertOpacity : 1.0
            self.cornerRadius = cornerRadiusEnabled ? AlertX.defaultCornerRadius : 0
        }
        
        var body: some View {
            Rectangle()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                .foregroundColor(windowColor.opacity(windowColorOpacity))
                .cornerRadius(cornerRadius)
        }
        
    }
    
}
