# frozen_string_literal: true

module EnvMock
  module_function

  def mock(hash)
    backup = {}

    hash.each do |key, value|
      name         = key.to_s.upcase
      backup[name] = ENV[name]
      ENV[name]    = value.to_s
    end

    yield
  ensure
    backup.each { |key, value| ENV[key] = value }
  end
end
