# Secrets Vault 

## How to run vault

```
$ docker run -itd --name vault -p 8200:8200 vault server -dev
$ export VAULT_ADDR='http://127.0.0.1:8200'
$ vault status
$ vault operator unseal
```


