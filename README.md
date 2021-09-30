# dnsstats-list-tester-ruby
## Prerequisites
- IPv4, IPv6 Dualstack
- dig (for test TCP connection)
- Full service resolver with DNSSEC validation enabled.
- (Recommend) Full resolver is running on same host.

## 利用方法
```
 $ gem install bundle
 $ bundle install --path=vendor/bundle
 # mkdir list caches results
 $ LIST_DIR=list CACHE_DIR=caches RESULTS_DIR=results make
```
