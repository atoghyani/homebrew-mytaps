class Myvsinstall < Formula
  version '8.3.8.8'
  sha256 '0a3cd5a850a387fb115fd51e45c4df6b966da815ec20ad454327ee2e34ed1807'
  url "https://dl.xamarin.com/VsMac/VisualStudioForMac-#{version}.dmg"
  name 'Visual Studio for Mac'
  homepage 'https://www.visualstudio.com/vs/visual-studio-mac/'
  
  bottle :unneeded

  auto_updates true
  depends_on macos: '>= :sierra'
  depends_on cask: 'mono-mdk'
  depends_on cask: 'xamarin-android'
  depends_on cask: 'xamarin-ios'
  depends_on cask: 'homebrew/cask-versions/adoptopenjdk8'
  depends_on cask: 'android-sdk'
  depends_on cask: 'android-ndk'

  app 'Visual Studio.app'

  zap trash: [
               '/Applications/Xamarin Workbooks.app',
               '/Applications/Xamarin Profiler.app',
               '~/Library/Application Support/VisualStudio',
               '~/Library/Application Support/CrashReporter/VisualStudio*',
               '~/Library/Caches/VisualStudio',
               '~/Library/Logs/VisualStudio',
               '~/Library/Preferences/Visual*Studio',
               '~/Library/Preferences/Xamarin',
               '~/Library/Developer/Xamarin',
               '~/Library/VisualStudio',
             ]
end
