require 'chefspec'

describe 'myjenkins::hello_world' do
  let (:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '14.04', log_level: :fatal).converge(described_recipe) }

  it 'creates jenkins stuff directory' do
    chef_run.converge(described_recipe)
    expect(chef_run).to create_directory('/root/jenkins_stuff/job_templates/hello_world')
  end

  it 'creates jenkins job example xml' do
    chef_run.converge(described_recipe)
    expect(chef_run).to create_file('/root/jenkins_stuff/job_templates/hello_world/config.xml')
  end

  it 'creates jenkins job' do
    chef_run.converge(described_recipe)
    expect(chef_run).to create_jenkins_job('Hello World')
  end

end
