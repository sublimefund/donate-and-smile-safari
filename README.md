# Donate and Smile for Safari

Donate and Smile is a Safari extension that automatically redirects to
AmazonSmile.

It is a [Safari app
extension](https://developer.apple.com/documentation/safariservices/safari_app_extensions)
and is not built on the legacy framework.

## Development

Xcode on a Mac is required for development.

Safari doesn't seem to reliably pick up on changes to the extension in
development. As a workaround, clean the build folder every time you make a
change that affects the Safari part of the extension.

### Testing

There doesn't seem to be a way to write a test suite for a Safari extension, so
tests must be done manually. Here are cases to try:

* [Amazon homepage](https://amazon.com)
    * logged in: user should land on the Smile version of the homepage
    * not logged in: user should land on the Smile version of the log in page
* [Amazon Germany homepage](https://www.amazon.de/)
    * same expected results as the U.S. page
* [Amazon U.K. homepage](https://www.amazon.co.uk/)
    * same expected results as the U.S. page
* [Amazon Canada homepage](https://www.amazon.ca/)
    * no redirect at all should occur
* [Amazon Music](https://music.amazon.com)
    * logged in: user should land on the non-Smile page
    * not logged in: user should land on the non-Smile page
* [details page for a product](https://www.amazon.com/Peoples-History-United-Perennial-Classics/dp/0061965596)
    * logged in: user should be land on the Smile version of the page
    * not logged in: user should land on the non-Smile page but with a Smile banner near the top
* Go to a non-Amazon page, then an Amazon page, and make sure back and forward as expected

## Publishing

* Update the version and build number as appropriate
    * "Targets > General > Identity"
    * Make sure to do it for both the app and the extension
    * The version shoudl roughly follow [semver](https://semver.org/)
    * The build number should be incremented
* In the Xcode menu bar, do "Product > Archive"
* Use "Distribute App" to upload the archive to Apple
    * To view archives, go to "Window > Organizer"
* Log in to [App Store Connect](https://appstoreconnect.apple.com/)
* Go to "My Apps", and find Donate and Smile
* Go to "App Store > MacOS App > Build", and select the new archive

## License

MIT
