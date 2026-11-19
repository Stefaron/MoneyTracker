//
//  Tokens.swift
//  MoneyTrackerKit
//
//  Created by evan on 19/11/26.
//

import SwiftUI

public enum Spacing {
    public static let xs: CGFloat = 4
    public static let sm: CGFloat = 8
    public static let md: CGFloat = 16
    public static let lg: CGFloat = 24
    public static let xl: CGFloat = 32
}

public enum Radius {
    public static let sm: CGFloat = 8
    public static let md: CGFloat = 12
    public static let lg: CGFloat = 20
}

public enum AppColor {
    public static let background = Color(uiColor: .systemBackground)
    public static let cardBackground = Color(uiColor: .secondarySystemBackground)
    public static let primaryText = Color(uiColor: .label)
    public static let secondaryText = Color(uiColor: .secondaryLabel)
    public static let income = Color.green
    public static let expense = Color.red
}
