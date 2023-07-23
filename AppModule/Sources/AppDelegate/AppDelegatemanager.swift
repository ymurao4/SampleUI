import Foundation
import SwiftUI

@Observable
public class AppEnvironment {
    var homePath: [Route] = []
}

public enum Route: Hashable {
    case detail
    case user(id: String)
    case web(url: URL)
}
