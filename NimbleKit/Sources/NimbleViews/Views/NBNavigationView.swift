//
//  NavigationViewWrapper.swift
//  Stars
//
//  Created by samara on 7.04.2025.
//

import SwiftUI

public struct NBNavigationView<Content>: View where Content: View {
	private var _title: String
	private var _content: Content
	
	public init(
		_ title: String,
		@ViewBuilder content: () -> Content
	) {
		self._title = title
		self._content = content()
	}
	
	public var body: some View {
		NavigationStack {
			_content
				.navigationTitle(_title)
				.navigationBarTitleDisplayMode(.large)
		}
	}
}
