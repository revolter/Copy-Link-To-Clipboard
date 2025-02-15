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
					let item = NSPasteboardItem()
					item.setString(url.absoluteString, forType: .URL)
					item.setString(url.absoluteString, forType: .string)

					let pasteboard = NSPasteboard.general
					pasteboard.clearContents()
					pasteboard.writeObjects([item])

					exit(0)
				})
		}
	}
}
