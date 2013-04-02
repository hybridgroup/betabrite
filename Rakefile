require 'hoe'

Hoe.plugins.delete :rubyforge
Hoe.plugins.delete :flog
Hoe.plugin :minitest
Hoe.plugin :gemspec # `gem install hoe-gemspec`
Hoe.plugin :git     # `gem install hoe-git`

Hoe.spec 'hybridgroup-betabrite' do |p|
  developer('Hybrid Group', 'betabrite@hybridgroup.com')

  self.extra_rdoc_files  = FileList['*.{rdoc,markdown}']
  self.history_file      = 'CHANGELOG.rdoc'
  self.readme_file       = 'README.rdoc'
end
