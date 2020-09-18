# Mortalityday

A demo Flutter application.

## Key Capabilities

### Dart Language
- object oriented
- class based
- strongly typed but annotations optional -> inferred types via var but
still has dynamic as for Any / Object
- supports generics
- built in async support
- (mobile) client optimized
- use underscore to make (library) private, no other visibility

### DI
- Found one third party lib (last commit 15 months ago)
- Better luck next time

### UI
- No xml, all in code!
- Somewhat specialized for material design
- concept of styling / themeing similar
- Dark mode support

### Network
- Easy http client
- Dart has no reflection so no gson like stuff - rely on code generation via annoation processors

### Firebase
TODO?

### Push notifications
TODO?

### Storage
- Sqlite but no fancy help as with greendao or room
- Key Value storage
- File storage
- Realm DB support in dev by third party

### Native widgets
Widget: TODO
System access: TODO

### i18n
- No automatic resource management as in Android world
- Possible use of 3rd party libs or just implement yourself
- Ok once set up but beautiful is something different

### Accessibility // not tested
- supports large fonts
- supports screen readers

### Tests
- Widget tests fast
- Unit tests support mockito inspired lib for mocking, stubbing
- UI Tests support with flutter driver (Espresso (Android) or Earl Gray (iOS)) // not tested

Flutter Web
- TODO

## CI / CD
- works via fastlane

## Noteworthy
- Possible to add to existing Android or iOS app
- Runtime permissions?

## Takeaway
- Use for own small or medium sized apps
- Super fancy animations / design possible but requires (like all fields probably) a little more practice
- Very easy if you don't want to think about design too much since it comes with a lot of in-house material design / cupertino set up.
- Flutter Web not evaluated
