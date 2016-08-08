require 'chefspec'

at_exit { ChefSpec::Coverage.report! }

describe 'myjenkins::default' do
  let (:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '14.04', log_level: :fatal).converge(described_recipe) }


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

  it 'installs jenkins plugin junit' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('junit')
  end

  it 'installs jenkins plugin mailer' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('mailer')
  end

  it 'installs jenkins plugin matrix-auth' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('matrix-auth')
  end

  it 'installs jenkins plugin maven-plugin' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('maven-plugin')
  end

  it 'installs jenkins plugin matrix-project' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('matrix-project')
  end

  it 'installs jenkins plugin nodejs' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('nodejs')
  end

  it 'installs jenkins plugin packer' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('packer')
  end

  it 'installs jenkins plugin php' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('php')
  end

  it 'installs jenkins plugin plain-credentials' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('plain-credentials')
  end

  it 'installs jenkins plugin postbuildscript' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('postbuildscript')
  end

  it 'installs jenkins plugin script-security' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('script-security')
  end

  it 'installs jenkins plugin slack' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('slack')
  end

  it 'installs jenkins plugin ssh' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('ssh')
  end

  it 'installs jenkins plugin ssh-agent' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('ssh-agent')
  end

  it 'installs jenkins plugin ssh-credentials' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('ssh-credentials')
  end

  it 'installs jenkins plugin ssh-slaves' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('ssh-slaves')
  end

  it 'installs jenkins plugin subversion' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('subversion')
  end

  it 'installs jenkins plugin vagrant' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('vagrant')
  end

  it 'installs jenkins plugin workflow-step-api' do
      chef_run.converge(described_recipe)
      expect(chef_run).to install_jenkins_plugin('workflow-step-api')
  end

  it 'reloads jenkins configuration' do
      chef_run.converge(described_recipe)
      expect(chef_run).to execute_jenkins_command('reload-configuration')
  end

end
