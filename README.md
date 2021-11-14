# setup-puppet-agent
Setup script for a Puppet agent

# Running the setup script

Run the following command:

```
setup_puppet_agent.sh <Puppet server ip address>
```

For example:

```
chmod u+x setup_puppet_agent.sh
sudo ./setup_puppet_agent.sh https://my_puppet_server.my_domain.com
```

Then sign the agent's SSL certificate on the server using:

```
puppetserver ca sign --certname <Puppet agent's hostname>
```

Example:

```
sudo puppetserver ca sign --certname my_agent
```
