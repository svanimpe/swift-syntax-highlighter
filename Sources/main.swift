import SwiftParser
import SwiftSyntax

var text = "var x = 0"
let source = Parser.parse(source: text)
for token in source.tokens(viewMode: .sourceAccurate) {
    print(token.toHTML(), terminator: "")
}
print()
