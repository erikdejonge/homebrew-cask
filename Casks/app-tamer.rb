cask 'app-tamer' do
  version '2.4.6'
  sha256 'e2b7c5da22be199ec4e54aa2242721fdfe86d781646358f61b758f3a7030d9a6'

  url "https://www.stclairsoft.com/download/AppTamer-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT'
  name 'AppTamer'
  homepage 'https://www.stclairsoft.com/AppTamer/'

  app 'App Tamer.app'

  zap trash: [
               '/Library/LaunchDaemons/com.stclairsoft.AppTamerAgent.plist',
               '/Library/PrivilegedHelperTools/com.stclairsoft.AppTamerAgent',
               '~/Library/Caches/com.stclairsoft.AppTamer',
               '~/Library/Preferences/com.stclairsoft.AppTamer.plist',
             ]
end
