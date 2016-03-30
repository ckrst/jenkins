require 'chefspec'

describe 'myjenkins::default' do
  let (:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs jenkins plugin analysis-core' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('analysis-core')
  end

  it 'installs jenkins plugin ant' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('ant')
  end

  it 'installs jenkins plugin build-monitor-plugin' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('build-monitor-plugin')
  end

  it 'installs jenkins plugin cloverphp' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('cloverphp')
  end

  it 'installs jenkins plugin credentials' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('credentials')
  end

  it 'installs jenkins plugin credentials-binding' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('credentials-binding')
  end

  it 'installs jenkins plugin cvs' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('cvs')
  end

  it 'installs jenkins plugin database' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('database')
  end

  it 'installs jenkins plugin database-mysql' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('database-mysql')
  end

  it 'installs jenkins plugin docker-build-step' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('docker-build-step')
  end

  it 'installs jenkins plugin envinject' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('envinject')
  end

  it 'installs jenkins plugin gcm-notification' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('gcm-notification')
  end

  it 'installs jenkins plugin git' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('git')
  end

  it 'installs jenkins plugin git-client' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('git-client')
  end

  it 'installs jenkins plugin github' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('github')
  end

  it 'installs jenkins plugin github-api' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('github-api')
  end

  it 'installs jenkins plugin github-oauth' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('github-oauth')
  end

  it 'installs jenkins plugin git-parameter' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('git-parameter')
  end

  it 'installs jenkins plugin gravatar' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('gravatar')
  end

  it 'installs jenkins plugin http-post' do
    chef_run.converge(described_recipe)
    expect(chef_run).to install_jenkins_plugin('http-post')
  end

end
