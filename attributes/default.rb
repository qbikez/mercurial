default['hg']['install_method'] = 'chocolatey'
case node['platform']
when "windows"
  case  node['kernel']['machine']
  when "x86_64"
    default['hg']['windows_arch'] = "x64"
  when /i[3-6]86/
    default['hg']['windows_arch'] = "x86"
  end
  default['hg']['version'] = ''
  default['hg']['windows_url'] = "http://www.mercurial-scm.org/release/windows/mercurial-#{node['hg']['version']}-#{node['hg']['windows_arch']}.msi"
end
