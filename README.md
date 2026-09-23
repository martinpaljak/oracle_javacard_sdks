# Sun/Oracle JavaCard SDK binaries
- As found from https://www.oracle.com/java/technologies/javacard-sdk-downloads.html
- All content is &copy;&reg;&trade; by Oracle. For example, see this file: [jc304_kit/legal/Distribution_ReadME.txt](./jc304_kit/legal/Distribution_ReadME.txt)
- Only necessary binary content (no samples or API documentation), usable with [ant-javacard](https://github.com/martinpaljak/ant-javacard)
- Easily usable with platforms other than Windows
- Intended to be included as a Git submodule

## Usage
    git submodule add https://github.com/martinpaljak/oracle_javacard_sdks sdks

## Maven usage
Addressable Maven dependencies via [mvn.javacard.pro](https://mvn.javacard.pro/) as artefacts in [/vendors](https://mvn.javacard.pro/vendors/vnd/oracle) tree. See [javacard-maven-plugin](https://github.com/martinpaljak/javacard-maven-plugin).

## NOTES:
- JavaCard API version is not always the same as the SDK version! For example SDK 3.0.3 includes JavaCard API 3.0.1.
- 3.0.5 updates are stored for educational purposes. Always use the latest!
