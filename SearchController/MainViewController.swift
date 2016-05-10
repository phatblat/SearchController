//
//  MainViewController.swift
//  SearchController
//
//  Created by Ben Chatelain on 5/9/16.
//  Copyright © 2016 Ben Chatelain. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet private var searchBar: UISearchBar!
}

// MARK: - UISearchBarDelegate
extension MainViewController: UISearchBarDelegate {
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {}
    func searchBar(searchBar: UISearchBar, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool { return true }
    func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool { return true }
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {}
    func searchBarShouldEndEditing(searchBar: UISearchBar) -> Bool { return true }
    func searchBarTextDidEndEditing(searchBar: UISearchBar) {}

    func searchBarBookmarkButtonClicked(searchBar: UISearchBar) {}
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {}
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {}
    func searchBarResultsListButtonClicked(searchBar: UISearchBar) {}

    func searchBar(searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {}
}

// MARK: - UISearchControllerDelegate
extension MainViewController: UISearchControllerDelegate {
    func presentSearchController(searchController: UISearchController) {}
    func willPresentSearchController(searchController: UISearchController) {}
    func didPresentSearchController(searchController: UISearchController) {}
    func willDismissSearchController(searchController: UISearchController) {}
    func didDismissSearchController(searchController: UISearchController) {}
}
