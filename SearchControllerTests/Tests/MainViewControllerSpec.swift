//
//  MainViewControllerSpec.swift
//  SearchController
//
//  Created by Ben Chatelain on 5/10/16.
//  Copyright © 2016 Ben Chatelain. All rights reserved.
//

@testable import SearchController
import Quick
import Nimble
import Outlets

typealias ViewOutletAssertion = String -> UIView?
typealias LabelOutletAssertion = String -> UILabel?

class MainViewControllerSpec: QuickSpec {
    override func spec() {
        // Outlets setup
        setupFailHandler { message in
            if let message = message {
                fail(message)
            } else {
                fail()
            }
        }
        var hasViewOutlet: ViewOutletAssertion!
        var hasLabelOutlet: LabelOutletAssertion!

        describe("main view controller") {
            var viewController: UIViewController!
            beforeEach {
                viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("MainViewController")
                viewController.loadView()
                expect(viewController.view).toNot(beNil())

                hasViewOutlet = outlet(viewController)
                hasLabelOutlet = outlet(viewController)
            }

            it("has a searchBarContainerView outlet") {
                hasViewOutlet("searchBarContainerView")
            }
            it("has a emptyResultsView outlet") {
                hasViewOutlet("emptyResultsView")
            }
            it("has a keywordLabel outlet") {
                hasLabelOutlet("keywordLabel")
            }
        }
    }
}
