describe 'define_singleton_method' do 
  it { expect(homero.hmmm! 'lo que sea').to eq 'hmmm lo que sea!'  }
  it { expect(homero.hmmm! 'rosquillas').to eq 'rosquillas'  }
end

