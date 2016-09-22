[![badge][apm]][package]
[![badge][chat]][#slack]

[Atom] Custom App icon
======================

Replace the [Atom] application icon. Changes persist across updates and restarts.

Install
-------
`apm install custom-app-icon` or search “app icon” under packages within Atom.

Setup
-----
Simply place your custom `.icns` file(s)<sup id="R1">[*](#F1)</sup> in your [`ATOM_HOME`] directory, or specify a file path in the package settings.

<a id="F1">[*](#R1)</a> You can also supply a `file.icns` which will apply to all files associated with Atom.

`Restore` the original icon/s from the command palette.

**NOTE** that this package is mac only for now; you couldn't pay me enough to use Windows… but pull requests are welcome.

License
-------
[MIT] © [Daniel Bayley]

[MIT]:              LICENSE.md
[Daniel Bayley]:    https://github.com/danielbayley
[atom]:             https://atom.io
[apm]:              https://img.shields.io/apm/v/custom-app-icon.svg?style=flat-square
[package]:          https://atom.io/packages/custom-app-icon
[chat]:             https://img.shields.io/badge/chat-atom.io%20slack-ff69b4.svg?style=flat-square
[#slack]:           https://atom-slack.herokuapp.co

[`ATOM_HOME`]:      http://flight-manual.atom.io/using-atom/sections/basic-customization/#custom-home-location-with-an-environment-variable
[sync-settings]:    http://atom.io/packages/sync-setting

[Tile]:             http://
