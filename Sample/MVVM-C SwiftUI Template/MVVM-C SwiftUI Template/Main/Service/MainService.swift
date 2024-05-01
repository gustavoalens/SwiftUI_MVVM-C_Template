import Foundation

final class MainService: MainServiceProtocol {
  func fetch(result: @escaping (_ result: Bool) -> Void) {
    // Fake Loading
    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
      result(true)
    }
  }
}

protocol MainServiceProtocol {
  func fetch(result: @escaping (_ result: Bool) -> Void)
}
