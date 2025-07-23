# /etc/gitlab/gitlab.rb

external_url 'https://your_url'
nginx['enable'] = true
nginx['redirect_http_to_https'] = true  
nginx['http2_enabled'] = false
nginx['ssl_certificate'] = "/etc/letsencrypt/live/your_domain/fullchain.pem"
nginx['ssl_certificate_key'] = "/etc/letsencrypt/live/your_domain/privkey.pem"
nginx['listen_https'] = true
gitlab_kas['enable'] = true
nginx['proxy_set_header'] = 'Upgrade $http_upgrade'
nginx['proxy_set_header'] = 'Connection "upgrade"'
gitlab_kas['external_url'] = 'wss://your_domain/-/kubernetes-agent/'
