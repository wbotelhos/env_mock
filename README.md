# EnvMock

[![CI](https://github.com/wbotelhos/env_mock/workflows/CI/badge.svg)](https://github.com/wbotelhos/env_mock/actions)
[![Gem Version](https://badge.fury.io/rb/env_mock.svg)](https://badge.fury.io/rb/env_mock)
[![Maintainability](https://api.codeclimate.com/v1/badges/f312587b4f126bb13e85/maintainability)](https://codeclimate.com/github/wbotelhos/env_mock/maintainability)
[![codecov](https://codecov.io/gh/wbotelhos/blogy/branch/master/graph/badge.svg?token=VX93Oihxpz)](https://codecov.io/gh/wbotelhos/env_mock)
[![Patreon](https://img.shields.io/badge/donate-%3C3-brightgreen.svg)](https://www.patreon.com/wbotelhos)

Mock your ENVs.

## Install

Add the following code on your `Gemfile` and run `bundle install`:

```ruby
gem 'env_mock'
```

## Usage

```ruby
ENV['DATABASE_USERNAME'] = 'root'

ENV['DATABASE_USERNAME']
=> 'root'

ENV['TAX_CENTS']
=> nil

ENV['UDP']
=> nil

EnvMock.mock(DATABASE_USERNAME: 'wbotelhos', TAX_CENTS: 700, 'udp' => true) do
  ENV['DATABASE_USERNAME'] # .to_sym is called for all keys
  => 'wbotelhos'

  ENV['TAX_CENTS']
  => '700' # `.to_s` is called for all values

  ENV['UDP'] # .upcase is called for all keys
  => 'true'
end

ENV['DATABASE_USERNAME']
=> 'root'

ENV['TAX_CENTS']
=> nil

ENV['UDP']
=> nil
```
