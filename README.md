[Atom] Custom App icon
======================

Replace the [Atom] application icon. Changes persist across updates and restarts.

Install
-------
`apm install custom-app-icon` or search “app icon” under packages within Atom.

Setup
-----
Simply place your custom `.icns` file(s)<sup id="R1">[*](#F1)</sup> in your `ATOM_HOME` directory, or specify a file path in the package settings.

<a id="F1">[*](#R1)</a> You can also supply a `file.icns` which will apply to all files associated with Atom.

Deactivate or remove this package to restore original icon/s.

Your icons will be automatically added to the list of extra backup files if the [sync-settings] package is installed.

**NOTE** that this package is mac only for now; you couldn't pay me enough to use Windows… but pull requests are welcome.

License
-------
[MIT] © [Daniel Bayley]

[MIT]:						LICENSE.md
[Daniel Bayley]:	https://github.com/danielbayley
[atom]:						https://atom.io
[sync-settings]:	https://atom.io/packages/sync-settings
