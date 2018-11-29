### Learning terraform with digitalocean (provider)
##### DO_TOKEN: digital ocean acccess key
##### SSH_FINGERPRINT: from gidital ocean after adding unencrypted ssh key

##### if any variable is not initialized below will be asked for value after exicuting this command.
### step: 1
```bash
terraform plan \
-var "do_token=${DO_TOKEN}" \
-var "pub_key=$HOME/.ssh/dokey.pub" \
-var "pvt_key=$HOME/.ssh/dokey" \
-var "ssh_fingerprint=$SSH_FINGERPRINT"
```

### step: 2 -- will ask for confirmation (type yes)
```bash
terraform apply \
-var "do_token=${DO_TOKEN}" \
-var "pub_key=$HOME/.ssh/dokey.pub" \
-var "pvt_key=$HOME/.ssh/dokey" \
-var "ssh_fingerprint=$SSH_FINGERPRINT"
```
