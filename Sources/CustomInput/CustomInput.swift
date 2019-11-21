//
//  CustomInput.swift
//  CustomInput
//
//  Created by Дмитрий Лисин on 20.11.2019.
//  Copyright © 2019 Дмитрий Лисин. All rights reserved.
//

import SwiftUI

@available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
public struct InputModifier : ViewModifier {
    
    
    public func body(content: Content) -> some View {
        content
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 1)
                .foregroundColor(Color.gray.opacity(0.4)))
    }
}

@available(iOS 13.0, tvOS 13.0, macOS 10.15, *)
public struct CustomInput : View {
        
    @Binding var text: String
    var name: String
    
    public init(text: Binding <String>, name: String) {
        _text = text
        self.name = name
    }
    
    public var body: some View {
        TextField(name, text: $text)
            .modifier(InputModifier())
    }
}
