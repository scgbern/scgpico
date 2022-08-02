---
Title: How to do SSH without Password
---
#How to do SSH without Password
SSH supports authentification with Public/Private keys. 
If you create a key with no passphrase, ssh can be used as convenient rsh replacement with many advantages.

#Creating a key pair
```
ssh-keygen -t rsa
```

Do *not* create a dsa key &mdash; these are deprecated!

This will create a folder .ssh containing a private key id_rsa and a public one id_rsa.pub.

#Authorizing the key
to authorize a key, put its *public* part in the file authorized_keys in the .ssh directory.

To authorize the key that you just created:
```
cd ~/.ssh
cat id_rsa.pub >> authorized_keys
chmod 644 authorized_keys
```

<B>Important:</B> The directory ~/.ssh must not be a symbolic link, or none of this will work!

#Tarpits

-  Keep your private key SAFE. (check the file permissions)
-  The home and .ssh directory must not be writable by group and other users.
