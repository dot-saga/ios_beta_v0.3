//
//  MeshtasticLogo.swift
//  Meshtastic
//
//  Copyright(c) Garth Vander Houwen 10/6/22.
//
import SwiftUI

struct MeshtasticLogo: View {

	@Environment(\.colorScheme) var colorScheme

	var body: some View {
		#if targetEnvironment(macCatalyst)
			if #available(iOS 26.0, macOS 26.0, *) {
				Image(colorScheme == .dark ? "logo-white" : "logo-black")
					.resizable()
					.foregroundColor(.accentColor)
					.scaledToFit()
					.frame(maxWidth: .infinity, alignment: .leading)
			} else {
				Image("logo-white")
					.resizable()
					.foregroundColor(.accentColor)
					.scaledToFit()
					.frame(maxWidth: .infinity, alignment: .leading)
			}
		#else
		if #available(iOS 26.0, macOS 26.0, *) {
			Image(colorScheme == .dark ? "logo-white" : "logo-black")
				.resizable()
				.scaledToFit()
				.frame(maxWidth: .infinity, alignment: .leading)
		} else {
			Image(colorScheme == .dark ? "logo-white" : "logo-black")
				.resizable()
				.scaledToFit()
				.frame(maxWidth: .infinity, alignment: .leading)
		}
		#endif
	}
}
