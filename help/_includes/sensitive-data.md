# Sensitive data

Adobe Commerce use your encryption key to encrypt the following:

*  Credit card information
*  Usernames and passwords specified in the Admin configuration (for example, logins to payment gateways)
*  CAPTCHA values sent over the network

Adobe Commerce do *not* encrypt:

*  Administrative and customer usernames and passwords (these passwords are hashed)
*  Address
*  Phone number
*  Other types of personally identifiable information except for credit card numbers
