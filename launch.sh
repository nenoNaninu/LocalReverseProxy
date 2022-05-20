# https用の鍵の作り方。
# 造ったら nginx/ssl/以下にnginx.keyみたいな名前で配置する事。

# その1

# 暗号化されてるのが吐き出される。
openssl genrsa -des3 -out server.key.encrypted 2048
# 暗号化を解く。
openssl rsa -in server.key.encrypted -out server.key
# CSR(証明書署名要求)の発行
openssl req -new -key server.key -out server.csr
# CRT(自己署名証明書)の作成
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt

# その2

openssl genrsa -out server.key 2048
# CSR(証明書署名要求)の発行
openssl req -new -key server.key -out server.csr
# CRT(自己署名証明書)の作成
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt