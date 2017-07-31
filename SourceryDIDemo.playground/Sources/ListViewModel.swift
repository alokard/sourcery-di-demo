//
//  ListViewModel.swift
//  SourceryDIDemo
//
//  Created by Eugene on 7/28/17.
//  Copyright © 2017 Eugene Tulusha. All rights reserved.
//

import Foundation

//sourcery: DI
class ListViewModel {

    let detailProvider: Provider<DetailsViewModel>

    //sourcery: inject
    init(apiService: APIService, detailProvider: @escaping Provider<DetailsViewModel> ) {
        self.detailProvider = detailProvider
    }
}
