# RacoonEncrypt

某実習11回提出課題のために作成された、たぬき暗号の生成、たぬき暗号の復号を行うクラスを提供するRubyGemです。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'racoon_encrypt'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install racoon_encrypt

## Usage examples

###定番
```ruby
rc_encrypt = RacoonEncrypt.new
enc_str = "たなべにたされたるのはかんたべんですた"
rc_encrypt.decrypt(enc_str) #=>"なべにされるのはかんべんです"
```
###貯蓄。お金をたくわえる
```ruby
rc_encrypt = RacoonEncrypt.new("た")
plane_str = "おかね"
rc_encrypt.encrypt(plane_str) #example=>"おたかね"
```

###にぬき(※関西方言でゆでたまご)
```ruby
rc_encrypt = RacoonEncrypt.new("に")
enc_str = "ゆにでたにまご"
rc_encrypt.decrypt(enc_str) #=>"ゆでたまご"
```

###脱毛
```ruby
rc_encrypt = RacoonEncrypt.new("け")
enc_str = "つけるつけるのけはけだ"
rc_encrypt.decrypt(enc_str)#=>"つるつるのはだ"
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
