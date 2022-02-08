# dnsstats-list-tester-ruby
## 前提条件
- ruby 3.0.x
- IPv4, IPv6 Dualstack
- digがインストール済み
- DNSSEC検証が有効なフルリゾルバ
- (推奨) DNSSEC検証が有効なフルリゾルバをローカルで動かすこと

## 利用方法
```
 $ gem install bundle
 $ bundle install --path=vendor/bundle
 # mkdir list caches results
 // nameserverを指定しない場合はresolv.confを見る
 $ LIST_DIR=list CACHE_DIR=caches RESULTS_DIR=results make
 // nameserverを指定する場合
 $ LIST_DIR=list CACHE_DIR=caches RESULTS_DIR=results NAME_SERVERS="127.0.0.1:53" make
```
