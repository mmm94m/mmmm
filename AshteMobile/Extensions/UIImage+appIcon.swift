//
//  UIImage+appIcon.swift
//  AshteMobile
//
//  Safe app icon loader. The old code force-unwrapped
//  UIImage(named: Bundle.main.iconFileName ?? "")! which returns nil
//  (single-size 1024 AppIcon has no loose icon files) and crashed the app
//  when opening Settings > About / Appearance.
//

import UIKit

extension UIImage {
	static var appIcon: UIImage {
		if let name = Bundle.main.iconFileName, let image = UIImage(named: name) {
			return image
		}
		if let image = UIImage(named: "AppIcon-Preview") {
			return image
		}
		if let image = UIImage(named: "App_Unknown") {
			return image
		}
		return UIImage()
	}
}
