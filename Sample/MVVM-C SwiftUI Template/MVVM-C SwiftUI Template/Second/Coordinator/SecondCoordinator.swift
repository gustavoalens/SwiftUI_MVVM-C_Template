import SwiftUI

final class SecondCoordinator: SecondCoordinatorProtocol {
  // MARK: - Properties
  var path: PathControlProtocol
  var isRoot: Bool {
    path.isRoot()
  }
  
  // MARK: - Init
  init(path: PathControlProtocol?) {
    self.path = PathControl()
    setupPath(path)
  }
  
  // MARK: - Methods
  func pop() {
    path.popLast()
  }
  
  func stackSecondAgain() {
    path.append(SecondFlow.second.getFlow())
  }
  
  private func setupPath(_ initPath: PathControlProtocol?) {
    defer {
      if path.isRoot() {
        path.setRootCoordinator(objectWillChange: objectWillChange)
      }
    }
    
    guard let initPath else { return }
    path = initPath
  }
}

protocol SecondCoordinatorProtocol: BaseCoordinatorProtocol {
  func pop()
  func stackSecondAgain()
}

