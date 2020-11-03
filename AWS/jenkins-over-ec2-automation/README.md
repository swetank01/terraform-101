# EC2 automation 

* aws configure --profile profile-name

`aws configure --profile terraform`

### AWS Cli Tricks

- list all configured profile names
`cat ~/.aws/config | grep "\[profile " | sed -e 's/\[//g' -e 's/\]//g' -e 's/profile //g'`