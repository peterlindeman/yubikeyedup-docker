# yubikeyedup-docker
dockerized YubiKey OTP Validation Server ready to serve.

### prepare

Follow @scumjr [original readme](https://github.com/scumjr/yubikeyedup/blob/master/README.rst)

```bash
mkdir /opt/yubikeyedup

#use tools from the original repo:
./tools/dbcreate.py /opt/yubikeys.sqlite3

#prepare keys
./tools/flash.py gbush /opt/yubikeys.sqlite3

#and API
./tools/dbconf.py -aa developers /opt/yubikeys.sqlite3
```


### run

```bash
./run.sh
```
