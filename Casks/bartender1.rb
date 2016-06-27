cask 'bartender1' do
  version '1.3.3'
  sha256 '2dc739873d6a186a14f611c624ea9ba81f36a7934b93e5ab497082d6d235302c'

  url 'https://www.macbartender.com/updates/latest/Bartender.zip',
      referer: 'http://www.macbartender.com'
  appcast 'http://www.macbartender.com/updates/Appcast.xml',
          checkpoint: 'cc370554f347224410d0dcff4dbd48424dfa6805585d4949f6927f9e2511c61c'
  name 'Bartender'
  homepage 'http://www.macbartender.com/'
  license :commercial

  app 'Bartender.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '/Library/ScriptingAdditions/BartenderHelper.osax',
                '~/Library/Preferences/com.surteesstudios.Bartender.plist',
              ]
end
