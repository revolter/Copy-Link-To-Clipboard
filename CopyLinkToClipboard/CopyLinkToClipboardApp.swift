//
//  CopyLinkToClipboardApp.swift
//  CopyLinkToClipboard
//
//  Created by Iulian Onofrei on 03.07.2021.
//

import SwiftUI

@main
struct CopyLinkToClipboardApp: App {
	var body: some Scene {
		WindowGroup {
			ZStack {
				EmptyView()
			}
				.hidden()
				.onOpenURL(perform: { url in
					NSPasteboard.general.declareTypes([.URL], owner: nil)
					NSPasteboard.general.setString(url.absoluteString, forType: .URL)

					exit(0)
				})
		}
	}
}
