import Cocoa
import FinderSync

class FinderSync: FIFinderSync {

    override init() {
        super.init()
        // Monitor all volumes so the extension works everywhere
        FIFinderSyncController.default().directoryURLs = [URL(fileURLWithPath: "/")]
    }

    // MARK: - Context Menu

    override func menu(for menuKind: FIMenuKind) -> NSMenu {
        let menu = NSMenu(title: "CopyPath")

        let copyPathItem = NSMenuItem(
            title: "Copy Path",
            action: #selector(copyPath(_:)),
            keyEquivalent: ""
        )
        copyPathItem.image = NSImage(systemSymbolName: "doc.on.clipboard", accessibilityDescription: "Copy Path")
        menu.addItem(copyPathItem)

        return menu
    }

    @objc func copyPath(_ sender: AnyObject?) {
        guard let items = FIFinderSyncController.default().selectedItemURLs(), !items.isEmpty else {
            return
        }

        let paths = items.map { $0.path }
        let joined = paths.joined(separator: "\n")

        NSPasteboard.general.clearContents()
        NSPasteboard.general.setString(joined, forType: .string)
    }
}
