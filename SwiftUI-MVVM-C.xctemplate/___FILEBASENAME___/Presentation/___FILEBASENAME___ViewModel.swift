import SwiftUI

final class ___VARIABLE_productName:identifier___ViewModel: ___VARIABLE_productName:identifier___ViewModelProtocol {
  // MARK: - Properties
  private let service: ___VARIABLE_productName:identifier___ServiceProtocol
  private let coordinator: any ___VARIABLE_productName:identifier___CoordinatorProtocol
  
  @Published var viewData: ___VARIABLE_productName:identifier___ViewData
  
  init(service: ___VARIABLE_productName:identifier___ServiceProtocol, coordinator: any ___VARIABLE_productName:identifier___CoordinatorProtocol) {
    self.service = service
    self.coordinator = coordinator
  }
  
  func <#goToFlow1#>() {
    coordinator.<#goToFlow1#>()
  }
  
  private func fetch() {
    service.fetch { [weak self] result in
      self?.fetchResultHandler(result: result)
    }
  }
  
  private func fetchResultHandler(result: <#Type#>) {
    viewData = <#result to data view#>
  }
}

protocol ___VARIABLE_productName:identifier___ViewModelProtocol: ObservableObject {
  var viewData: ___VARIABLE_productName:identifier___ViewData { get }
  
  func <#goToFlow1#>()
}
