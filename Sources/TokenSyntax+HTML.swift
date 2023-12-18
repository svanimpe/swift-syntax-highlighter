import SwiftSyntax

extension TokenSyntax {

    var styleClass: String? {
        switch tokenKind {
        case .keyword(_):
            return "keyword"
        case .integerLiteral(_), .floatLiteral(_):
            return "number"
        default:
            return nil
        }
    }

    func toHTML() -> String {
        if let styleClass {
            return #"\#(leadingTrivia)<span class="\#(styleClass)">\#(text)</span>\#(trailingTrivia)"#
        } else {
            return "\(leadingTrivia)\(text)\(trailingTrivia)"
        }
    }
}
