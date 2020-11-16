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

### UI
- No xml, all in code! Find a good arch pattern!
- Somewhat specialized for material design (made very easy)
- concept of styling similar to android
- Dark mode support baked into material design components

### DI
- Found one third party lib (last commit 15 months ago)
- So not really - Better luck next time

### Network
- Easy http client but nothing as fancy as retrofit
- Dart has no reflection so no gson like stuff - rely on code generation via annoation processors

### Firebase
- needs to be setup natively first (painful)
- then on flutter / dart side (super easy)
- support for firestore, crashlytics, analytics, auth, cloud functions, remote config, ml

### Push notifications
TODO probably a pain because it always is...

### Storage
- Sqlite support but no fancy help as with room or greendao
- Key Value storage
- File storage
- Realm DB support in dev by third party

### Native widgets // not tested
- Widget: TODO
- System access: TODO
- (apparently relatively straight forward)

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

## Flutter Web // not tested

## CI / CD
- since using flutter as sdk for build relatively straight forward (for jenkins)
- Github Actions / docker images available for flutter and they work!

## Noteworthy
- Possible to add flutter to existing Android or iOS app (flutter in native / native in flutter)

## Takeaway
- Use for small or medium sized apps
- Use for short time to market (super fast dev)
- Custom animations / design possible but requires (like all fields probably) a little more practice
- Very easy if you don't want to think about design too much since it comes with a lot of in-house material design / cupertino set up.
- Flutter web not evaluated (but not treated as first class citizen by the community)
