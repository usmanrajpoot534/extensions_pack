# Flutter Extensions Pack

A comprehensive Dart extensions package designed to simplify and enhance Flutter development. This package introduces utilities for padding, spacing, border radius, date-time operations, string manipulation, and much more.

## Features

- **Spacing**: Easily add horizontal and vertical space.
- **Padding**: Simplify the creation of `EdgeInsets`.
- **Border Radius**: Quickly define border radius.
- **Date-Time Utilities**: Manipulate and format dates.
- **String Manipulation**: Reverse strings, capitalize text, and validate emails.
- **Screen Utilities**: Get screen dimensions.
- **Map and List Extensions**: Safely access elements, sort lists, and remove duplicates.
- **Navigation Helpers**: Simplify page navigation.
- **Styling**: Predefined text styles.
- **Snackbars**: Access Snackbars of each category (simple, success, error)

## Installation

Add the following line to your `pubspec.yaml` under `dependencies`:

```yaml
dependencies:
  extensions_pack: ^1.0.0
```

Run `flutter pub get` to fetch the package.

## Usage

### 1. Spacing Extensions

Easily add spacing with `spaceX` and `spaceY`.

```dart
10.spaceX; // Horizontal space
20.spaceY; // Vertical space
```

### 2. Padding Extensions

Simplify creating paddings with extensions like `padAll`, `padX`, `padY`, etc.

```dart
Container(
  padding: 16.padAll, // Padding for all sides
  child: Text('Hello, World!'),
);

Container(
  padding: 8.padX, // Horizontal padding
  child: Text('Flutter'),
);
```

### 3. Border Radius Extensions

Quickly define border radii for widgets.

```dart
Container(
  decoration: BoxDecoration(
    borderRadius: 10.circularRadius, // Circular radius
  ),
);

Container(
  decoration: BoxDecoration(
    borderRadius: 15.horizontalRadius, // Horizontal radius
  ),
);
```

### 4. Date-Time Utilities

Manipulate and format `DateTime` objects with ease.

```dart
DateTime now = DateTime.now();
DateTime startOfDay = now.startOfDay;
DateTime endOfDay = now.endOfDay;

// Format date
String formatted = now.format("yyyy-MM-dd");

// Add business days
DateTime future = now.addBusinessDays(5);
```

### 5. String Manipulation

Perform common string operations effortlessly.

```dart
"flutter".toCapitalized; // "Flutter"
"hello world".toTitleCase; // "Hello World"

"example@gmail.com".validateEmail; // true
"Hello".reverse(); // "olleH"
```

### 6. Navigation Helpers

Simplify navigation between screens.

```dart
context.push(NextPage());
context.pushReplacement(AnotherPage());
context.pushAndRemoveUntil(HomePage());
```

### 7. Map and List Utilities

Safely access elements, sort, or remove duplicates.

```dart
Map<String, String> data = {"key": "value"};
String value = data.getOrDefault("key", "default");

List<int> numbers = [3, 1, 2, 2];
numbers.unique; // [3, 1, 2]
```

### 8. Screen Size Utilities

Get screen dimensions directly.

```dart
final screenWidth = context.kWidth;
final screenHeight = context.kHeight;
```

### 9. Styling Utilities

Use predefined text styles.

```dart
Text(
  'Hello',
  style: context.style24W700,
);
```

## Example Project

Check out the [example project](https://github.com/usmanrajpoot534/extensions_pack/tree/master/example) to see these extensions in action.

## Contribution

Contributions are welcome! If you have ideas for new extensions or improvements, feel free to open an issue or submit a pull request.

## License

This package is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

Apache License

&#x20;                          Version 2.0, January 2004

&#x20;                       http\://www\.apache.org/licenses/



&#x20;  TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION



&#x20;  1\. Definitions.



&#x20;     "License" shall mean the terms and conditions for use, reproduction,

&#x20;     and distribution as defined by Sections 1 through 9 of this document.



&#x20;     "Licensor" shall mean the copyright owner or entity authorized by

&#x20;     the copyright owner that is granting the License.



&#x20;     "Legal Entity" shall mean the union of the acting entity and all

&#x20;     other entities that control, are controlled by, or are under common

&#x20;     control with that entity. For the purposes of this definition,

&#x20;     "control" means (i) the power, direct or indirect, to cause the

&#x20;     direction or management of such entity, whether by contract or

&#x20;     otherwise, or (ii) ownership of fifty percent (50%) or more of the

&#x20;     outstanding shares, or (iii) beneficial ownership of such entity.



&#x20;     "You" (or "Your") shall mean an individual or Legal Entity

&#x20;     exercising permissions granted by this License.



&#x20;     "Source" form shall mean the preferred form for making modifications,

&#x20;     including but not limited to software source code, documentation

&#x20;     source, and configuration files.



&#x20;     "Object" form shall mean any form resulting from mechanical

&#x20;     transformation or translation of a Source form, including but

&#x20;     not limited to compiled object code, generated documentation,

&#x20;     and conversions to other media types.



&#x20;     "Work" shall mean the work of authorship, whether in Source or

&#x20;     Object form, made available under the License, as indicated by a

&#x20;     copyright notice that is included in or attached to the work

&#x20;     (an example is provided in the Appendix below).



&#x20;     "Derivative Works" shall mean any work, whether in Source or Object

&#x20;     form, that is based on (or derived from) the Work and for which the

&#x20;     editorial revisions, annotations, elaborations, or other modifications

&#x20;     represent, as a whole, an original work of authorship. For the purposes

&#x20;     of this License, Derivative Works shall not include works that remain

&#x20;     separable from, or merely link (or bind by name) to the interfaces of,

&#x20;     the Work and Derivative Works thereof.



&#x20;     "Contribution" shall mean any work of authorship, including

&#x20;     the original version of the Work and any modifications or additions

&#x20;     to that Work or Derivative Works thereof, that is intentionally

&#x20;     submitted to Licensor for inclusion in the Work by the copyright owner

&#x20;     or by an individual or Legal Entity authorized to submit on behalf of

&#x20;     the copyright owner. For the purposes of this definition, "submitted"

&#x20;     means any form of electronic, verbal, or written communication sent

&#x20;     to the Licensor or its representatives, including but not limited to

&#x20;     communication on electronic mailing lists, source code control systems,

&#x20;     and issue tracking systems that are managed by, or on behalf of, the

&#x20;     Licensor for the purpose of discussing and improving the Work, but

&#x20;     excluding communication that is conspicuously marked or otherwise

&#x20;     designated in writing by the copyright owner as "Not a Contribution."



&#x20;     "Contributor" shall mean Licensor and any individual or Legal Entity

&#x20;     on behalf of whom a Contribution has been received by Licensor and

&#x20;     subsequently incorporated within the Work.



&#x20;  2\. Grant of Copyright License. Subject to the terms and conditions of

&#x20;     this License, each Contributor hereby grants to You a perpetual,

&#x20;     worldwide, non-exclusive, no-charge, royalty-free, irrevocable

&#x20;     copyright license to reproduce, prepare Derivative Works of,

&#x20;     publicly display, publicly perform, sublicense, and distribute the

&#x20;     Work and such Derivative Works in Source or Object form.



&#x20;  3\. Grant of Patent License. Subject to the terms and conditions of

&#x20;     this License, each Contributor hereby grants to You a perpetual,

&#x20;     worldwide, non-exclusive, no-charge, royalty-free, irrevocable

&#x20;     (except as stated in this section) patent license to make, have made,

&#x20;     use, offer to sell, sell, import, and otherwise transfer the Work,

&#x20;     where such license applies only to those patent claims licensable

&#x20;     by such Contributor that are necessarily infringed by their

&#x20;     Contribution(s) alone or by combination of their Contribution(s)

&#x20;     with the Work to which such Contribution(s) was submitted. If You

&#x20;     institute patent litigation against any entity (including a

&#x20;     cross-claim or counterclaim in a lawsuit) alleging that the Work

&#x20;     or a Contribution incorporated within the Work constitutes direct

&#x20;     or contributory patent infringement, then any patent licenses

&#x20;     granted to You under this License for that Work shall terminate

&#x20;     as of the date such litigation is filed.



&#x20;  4\. Redistribution. You may reproduce and distribute copies of the

&#x20;     Work or Derivative Works thereof in any medium, with or without

&#x20;     modifications, and in Source or Object form, provided that You

&#x20;     meet the following conditions:



&#x20;     (a) You must give any other recipients of the Work or

&#x20;         Derivative Works a copy of this License; and



&#x20;     (b) You must cause any modified files to carry prominent notices

&#x20;         stating that You changed the files; and



&#x20;     (c) You must retain, in the Source form of any Derivative Works

&#x20;         that You distribute, all copyright, patent, trademark, and

&#x20;         attribution notices from the Source form of the Work,

&#x20;         excluding those notices that do not pertain to any part of

&#x20;         the Derivative Works; and



&#x20;     (d) If the Work includes a "NOTICE" text file as part of its

&#x20;         distribution, then any Derivative Works that You distribute must

&#x20;         include a readable copy of the attribution notices contained

&#x20;         within such NOTICE file, excluding those notices that do not

&#x20;         pertain to any part of the Derivative Works, in at least one

&#x20;         of the following places: within a NOTICE text file distributed

&#x20;         as part of the Derivative Works; within the Source form or

&#x20;         documentation, if provided along with the Derivative Works; or,

&#x20;         within a display generated by the Derivative Works, if and

&#x20;         wherever such third-party notices normally appear. The contents

&#x20;         of the NOTICE file are for informational purposes only and

&#x20;         do not modify the License. You may add Your own attribution

&#x20;         notices within Derivative Works that You distribute, alongside

&#x20;         or as an addendum to the NOTICE text from the Work, provided

&#x20;         that such additional attribution notices cannot be construed

&#x20;         as modifying the License.



&#x20;     You may add Your own copyright statement to Your modifications and

&#x20;     may provide additional or different license terms and conditions

&#x20;     for use, reproduction, or distribution of Your modifications, or

&#x20;     for any such Derivative Works as a whole, provided Your use,

&#x20;     reproduction, and distribution of the Work otherwise complies with

&#x20;     the conditions stated in this License.



&#x20;  5\. Submission of Contributions. Unless You explicitly state otherwise,

&#x20;     any Contribution intentionally submitted for inclusion in the Work

&#x20;     by You to the Licensor shall be under the terms and conditions of

&#x20;     this License, without any additional terms or conditions.

&#x20;     Notwithstanding the above, nothing herein shall supersede or modify

&#x20;     the terms of any separate license agreement you may have executed

&#x20;     with Licensor regarding such Contributions.



&#x20;  6\. Trademarks. This License does not grant permission to use the trade

&#x20;     names, trademarks, service marks, or product names of the Licensor,

&#x20;     except as required for reasonable and customary use in describing the

&#x20;     origin of the Work and reproducing the content of the NOTICE file.



&#x20;  7\. Disclaimer of Warranty. Unless required by applicable law or

&#x20;     agreed to in writing, Licensor provides the Work (and each

&#x20;     Contributor provides its Contributions) on an "AS IS" BASIS,

&#x20;     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or

&#x20;     implied, including, without limitation, any warranties or conditions

&#x20;     of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A

&#x20;     PARTICULAR PURPOSE. You are solely responsible for determining the

&#x20;     appropriateness of using or redistributing the Work and assume any

&#x20;     risks associated with Your exercise of permissions under this License.



&#x20;  8\. Limitation of Liability. In no event and under no legal theory,

&#x20;     whether in tort (including negligence), contract, or otherwise,

&#x20;     unless required by applicable law (such as deliberate and grossly

&#x20;     negligent acts) or agreed to in writing, shall any Contributor be

&#x20;     liable to You for damages, including any direct, indirect, special,

&#x20;     incidental, or consequential damages of any character arising as a

&#x20;     result of this License or out of the use or inability to use the

&#x20;     Work (including but not limited to damages for loss of goodwill,

&#x20;     work stoppage, computer failure or malfunction, or any and all

&#x20;     other commercial damages or losses), even if such Contributor

&#x20;     has been advised of the possibility of such damages.



&#x20;  9\. Accepting Warranty or Additional Liability. While redistributing

&#x20;     the Work or Derivative Works thereof, You may choose to offer,

&#x20;     and charge a fee for, acceptance of support, warranty, indemnity,

&#x20;     or other liability obligations and/or rights consistent with this

&#x20;     License. However, in accepting such obligations, You may act only

&#x20;     on Your own behalf and on Your sole responsibility, not on behalf

&#x20;     of any other Contributor, and only if You agree to indemnify,

&#x20;     defend, and hold each Contributor harmless for any liability

&#x20;     incurred by, or claims asserted against, such Contributor by reason

&#x20;     of your accepting any such warranty or additional liability.

