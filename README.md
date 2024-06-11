<a name="readme-top"></a>

<div align="center">
  <h1 align="center">𝐃𝐞𝐱𝟐𝐂</h1>




<!-- GETTING STARTED -->
# Installation

Python 3.8 or higher is required for running this tool. So, make sure your python is up-to-date.

1. Clone the repo.
   ```bash
   git clone https://github.com/TechnoIndian/dcc
   ```
2. Open the cloned directory.
   ```bash
   cd dcc
   ```
3. Download **Apktool** latest version from [bitbucket](https://bitbucket.org/iBotPeaches/apktool/downloads/) and save it in `tools` folder with the name `apktool.jar`
   ```bash
   wget -O tools/apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.9.3.jar
   ```
4. <a href="https://developer.android.com/ndk/downloads">Download</a> android NDK for your OS and extract it. Copy the folder path where `ndk-build` executable is located inside the extracted folder and configure `ndk_dir` in `dcc.cfg`

### Termux

![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)

One Step Installation: Run Below Command
   ```bash
pkg install wget -y && wget -O termux_install.sh https://github.com/TechnoIndian/dcc && chmod -R +x termux_install.sh && ./termux_install.sh
```
> NOTE: Some users have reported about installation errors with latest `clang` on termux. If you happen to face the same issue, then uncomment the lines stated in `termux_install.sh` and then proceed with the installation.


<!-- USAGE EXAMPLES -->
# Usage

### Filters

Add all your filters in `filter.txt` file - one rule for each line. Filters are made using regex patterns. There are two types of filters available in **Dex2c** - whitelist, and blacklist. You can use them whenever you need them.

#### WhiteList

- Protect just one method in a specific class.
```
com/some/class;some_method(some_parameters)return_type
```

- Protect all methods in a specific class.
```
com/some/class;.*
```

- Protect all methods in all classes under a package path.
```
com/some/package/.*;.*
```

- Protect a method with the name onCreate in all classes.
```
.*;onCreate\(.*
```

#### BlackList

Adding an exclamation `!` sign before a rule will mark that rule as a blacklist.

- Exclude one method in a specific class from being protected.
```
!com/some/class;some_method(some_parameters)return_type
```

- Exclude all methods in a specific class from being protected.
```
!com/some/class;.*
```

- Exclude all methods in all classes under a package path from being protected.
```
!com/some/package/.*;.*
```

- Exclude a method with the name onCreate in all classes from being protected.
```
!.*;onCreate\(.*
```


### Protect apps

- Copy your apk file to `dex2c` folder where `dcc.py` is located and run this command.

```bash
python3 dcc.py -a input.apk -o output.apk
```

- Run this command to know about all the other options available in dcc to find the best ones for your needs.

```bash
python3 dcc.py --help
```


<!-- CHANGE LIB NAME -->
# How to change lib name

Open `project/jni/Android.mk` file in the cloned directory. You will find a variable named `LOCAL_MODULE`, initially with the value `stub`. Please change it to your desired lib name. Keep in mind the following instructions to prevent possible errors.
- Don't use spaces in lib name, use hyphen `-` or underscore `_`
- Don't use any kind of symbols or punctuations in lib name other than underscores and hyphens
- Don't start the lib name with the text `lib` itself



<!-- ROADMAP -->
# Roadmap

- [x] Add custom lib loader
- [x] Add new apksigner
- [x] Add multi-dex support
- [x] Add app abi handler
- [x] Add signature configuration in `dcc.cfg`
- [x] Add new options
    - [x] --skip-synthetic
    - [x] --custom-loader
    - [x] --force-keep-libs
    - [x] --obfuscate

