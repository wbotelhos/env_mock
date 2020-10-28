# frozen_string_literal: true

RSpec.describe EnvMock, '.mock' do
  it 'mocks env inside the block' do
    ENV['KEY'] = 'original'

    described_class.mock('KEY' => 'fake') do
      expect(ENV['KEY']).to eq 'fake'
    end

    expect(ENV['KEY']).to eq 'original'
  end

  it 'mocks key as symbol' do
    ENV['KEY'] = 'original'

    described_class.mock(KEY: 'fake') do
      expect(ENV['KEY']).to eq 'fake'
    end

    expect(ENV['KEY']).to eq 'original'
  end

  it 'mocks key downcased' do
    ENV['KEY'] = 'original'

    described_class.mock('key' => 'fake') do
      expect(ENV['KEY']).to eq 'fake'
    end

    expect(ENV['KEY']).to eq 'original'
  end

  it 'mocks key as symbol and downcased' do
    ENV['KEY'] = 'original'

    described_class.mock(key: 'fake') do
      expect(ENV['KEY']).to eq 'fake'
    end

    expect(ENV['KEY']).to eq 'original'
  end

  it 'mocks more than one key at the same time' do
    ENV['KEY']  = 'original'
    ENV['DATA'] = 'first'

    described_class.mock(data: 'data', key: 'fake') do
      expect(ENV['DATA']).to eq 'data'
      expect(ENV['KEY']).to  eq 'fake'
    end

    expect(ENV['DATA']).to eq 'first'
    expect(ENV['KEY']).to  eq 'original'
  end
end
