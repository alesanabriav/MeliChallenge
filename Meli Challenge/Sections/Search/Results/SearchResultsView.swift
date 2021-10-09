//
//  ResultsView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//
import UIKit

class SearchResultsView : UIView {

	private var _viewModel: SearchViewModel

	init(frame: CGRect, viewModel: SearchViewModel) {

		_viewModel = viewModel

		super.init(frame: frame)

		setLayout()

	}


	private func setLayout() {

	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}


}

