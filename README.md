### Denwa

日本国内の電話番号を受け取り、市外局番をを考慮して正しい位置にマイナスを付けた
番号を返します。総務省の電気通信番号指定状況を
[参照](http://www.soumu.go.jp/main_sosiki/joho_tsusin/top/tel_number/number_shitei.html)
しました。

```
Denwa.new('0120444444').formatted #=> '0120-444-444'
Denwa.new('0312345678').formatted #=> '03-1234-5678'
```

### 開発

```
% bundle install
% bundle exec yard
% bundle exec rspec
% bundle exec gem build denwa.gemspec
% bundle exec gem install denwa-0.1.0.gem
```
