Generate an encrypted private key
=================================

Always encrypt the private key:

    $ openssl genpkey -aes256 -algorithm ed25519 -out ed25519.pem
    $ openssl genpkey -aes256 -algorithm rsa -out rsa.pem

Print the private key:

    $ openssl ec  -noout -text -in ed25519.pem
    $ openssl rsa -noout -text -in rsa.pem

Print the public key:

    $ openssl ec  -pubout -in ed25519.pem
    $ openssl ec  -pubout -in ed25519.pem -out public.pem
    $ openssl rsa -pubout -in rsa.pem


Self-signed CA certificate
==========================

    $ openssl req -new -x509 -days 365  -key ed25519.pem -out ca.cert.pem
    $ openssl req -new -x509 -days 3650 -key ed25519.pem -out ca.cert.pem -config openssl.cnf

Where openssl.cnf:

    [ req ]
    x509_extensions     = v3_ca
    distinguished_name  = req_distinguished_name
    prompt = no

    [ req_distinguished_name ]
    C  = NZ
    ST = Canterbury
    L  = Christchurch
    O  = Tait Communications Ltd
    OU = Engineering
    CN = Douglas Royds
    emailAddress = douglas.royds@taitcommunications.com

    [ v3_ca ]
    basicConstraints = critical, CA:true
    keyUsage = critical, digitalSignature, cRLSign, keyCertSign

Examine it:

    $ openssl x509 -noout -text -in ca.cert.pem


Server certificate
==================

Create a Certificate Signing Request:

    $ openssl req -new -key ca.key -out server.csr
    $ openssl req -noout -text -in server.csr            # Print

Sign it with the root CA certificate:

    $ openssl x509 -req -days 365 -in server.csr -CA ca.cert.pem -CAkey ca.key -CAcreateserial -out server.crt
    $ openssl x509 -noout -text -in root.pem


Signing
=======

Generate a signature file, and verify the data against the signature:

    $ openssl dgst -sha256 -sign   ed25519.pem -out       data.txt.signature data.txt
    $ openssl dgst -sha256 -verify public.pem  -signature data.txt.signature data.txt


Examine a host
==============

openssl s_client -tls1_3 -connect hostname:443     Does the host support TLS 1.3?
                                                      -tls1_2
                                                      -tls1_1
                                                      -tls1
