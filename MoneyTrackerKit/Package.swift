// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "MoneyTrackerKit",
    platforms: [.iOS(.v18)],
    products: [
        .library(
            name: "MoneyTrackerKit",
            targets: [
                "MoneyTrackerDomain",
                "MoneyTrackerData",
                "MoneyTrackerDesignSystem",
                "MoneyTrackerAppSupport",
                "FeaturesTransactions",
                "FeaturesBudgets",
                "FeaturesReports",
                "FeaturesSettings",
            ]
        ),
    ],
    targets: [
        .target(
            name: "MoneyTrackerDomain",
            path: "Sources/Domain"
        ),
        .target(
            name: "MoneyTrackerData",
            dependencies: ["MoneyTrackerDomain"],
            path: "Sources/Data"
        ),
        .target(
            name: "MoneyTrackerDesignSystem",
            dependencies: ["MoneyTrackerDomain"],
            path: "Sources/DesignSystem"
        ),
        .target(
            name: "MoneyTrackerAppSupport",
            dependencies: ["MoneyTrackerDomain"],
            path: "Sources/AppSupport"
        ),
        .target(
            name: "FeaturesTransactions",
            dependencies: ["MoneyTrackerDomain", "MoneyTrackerDesignSystem"],
            path: "Sources/Features/Transactions"
        ),
        .target(
            name: "FeaturesBudgets",
            dependencies: ["MoneyTrackerDomain", "MoneyTrackerDesignSystem"],
            path: "Sources/Features/Budgets"
        ),
        .target(
            name: "FeaturesReports",
            dependencies: ["MoneyTrackerDomain", "MoneyTrackerDesignSystem"],
            path: "Sources/Features/Reports"
        ),
        .target(
            name: "FeaturesSettings",
            dependencies: ["MoneyTrackerDomain", "MoneyTrackerDesignSystem"],
            path: "Sources/Features/Settings"
        ),
        .testTarget(
            name: "DomainTests",
            dependencies: ["MoneyTrackerDomain"],
            path: "Tests/DomainTests"
        ),
        .testTarget(
            name: "DataTests",
            dependencies: ["MoneyTrackerData"],
            path: "Tests/DataTests"
        ),
    ],
    swiftLanguageModes: [.v6]
)
