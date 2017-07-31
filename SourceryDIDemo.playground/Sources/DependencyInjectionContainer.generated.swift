// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Dispatch

public typealias Provider<E> = () -> E

class Container {

    private let apiServiceQueue = DispatchQueue(label: "singleton:apiService")
    private var __apiService: APIService?

    public func apiService() -> APIService {
    	return apiServiceQueue.sync {
    		let res = __apiService ?? _apiService()
    		self.__apiService = res
    		return res
    	}
    }

    private func _apiService() -> APIService {
    	return APIService(
    	)
    }

    public func detailsFormatter() -> DetailsFormatter {
    	return _detailsFormatter()
    }

    private func _detailsFormatter() -> DetailsFormatter {
    	return DetailsFormatter(
    	)
    }

    public func detailsViewModel() -> DetailsViewModel {
    	return _detailsViewModel()
    }

    private func _detailsViewModel() -> DetailsViewModel {
    	return DetailsViewModel(
    	)
    }

    public func listViewModel() -> ListViewModel {
    	return _listViewModel()
    }

    private func _listViewModel() -> ListViewModel {
    	return ListViewModel(
    			apiService: apiService(),
				detailProvider: detailsViewModel
    	)
    }

}
