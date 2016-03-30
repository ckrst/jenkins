directory '/root/jenkins_stuff/job_templates/hello_world' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

file '/root/jenkins_stuff/job_templates/hello_world/config.xml' do
  content '<?xml version=\'1.0\' encoding=\'UTF-8\'?>
<project>
  <actions/>
  <description>Job example</description>
  <keepDependencies>false</keepDependencies>
  <properties>
    <jenkins.model.BuildDiscarderProperty>
      <strategy class="hudson.tasks.LogRotator">
        <daysToKeep>3</daysToKeep>
        <numToKeep>10</numToKeep>
        <artifactDaysToKeep>-1</artifactDaysToKeep>
        <artifactNumToKeep>-1</artifactNumToKeep>
      </strategy>
    </jenkins.model.BuildDiscarderProperty>
  </properties>
  <scm class="hudson.scm.NullSCM"/>
  <canRoam>true</canRoam>
  <disabled>false</disabled>
  <blockBuildWhenDownstreamBuilding>false</blockBuildWhenDownstreamBuilding>
  <blockBuildWhenUpstreamBuilding>false</blockBuildWhenUpstreamBuilding>
  <triggers/>
  <concurrentBuild>false</concurrentBuild>
  <builders>
    <hudson.tasks.Shell>
      <command>echo &quot;Hello&quot;</command>
    </hudson.tasks.Shell>
  </builders>
  <publishers/>
  <buildWrappers/>
</project>'
  mode '0755'
  owner 'root'
  group 'root'
end

xml = File.join('/root/jenkins_stuff/job_templates/hello_world/config.xml')

jenkins_job 'Hello World' do
  config xml
end
