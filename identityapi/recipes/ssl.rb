template "/etc/ssl/wildcardmsccert.crt" do
    mode 0600
    source 'ssl.key.erb'
    variables :key => node[:deploy]['identity_api'][:ssl_certificate]
    end

template "/etc/ssl/wildacrdmsckey.key" do
    mode 0600
    source 'ssl.key.erb'
    variables :key => node[:deploy]['identity_api'][:ssl_certificate_key]
    end

template "/etc/ssl/godaddywildcardmsccaauth.ca" do
    mode 0600
    source 'ssl.key.erb'
    variables :key => node[:deploy]['identity_api'][:ssl_certificate_ca]
    end
