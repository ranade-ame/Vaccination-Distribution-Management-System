--Create Database Team8_Summer2021;

Use Team8;

--Create Data Master Key
Create Master Key
Encryption By Password = 'NegiSensei'

-- Create certificate to protect DMK

Create Certificate Team8Certificate
With Subject = 'Team 8 Certificate',
Expiry_Date = '2026-10-31';

--Create Symmetric key to encrypt data
Create Symmetric Key Team8SymmetricKey
With Algorithm = AES_128
Encryption By Certificate Team8Certificate;

--Open Symmetric Key
Open Symmetric Key Team8SymmetricKey
Decryption By Certificate Team8Certificate;

Create Table RegisteredUser
(
	Username Varchar(100),
	EncryptedPassword Varbinary(250)
);

--Put first row in the table, convert plain data to varbinary
Insert Into RegisteredUser
(
	UserName,
	EncryptedPassword
)
Values
('User1', ENCRYPTBYKEY(Key_GUID(N'Team8SymmetricKey'), convert(varbinary, 'PassTS1')));

--Putsecond row in the table, no need to convert

Insert Into RegisteredUser
(
	UserName,
	EncryptedPassword
)
Values
('User 2', ENCRYPTBYKEY(Key_GUID(N'Team8SymmetricKey'), 'PassTS2'));

--See encrypted Data in the table
Select * From RegisteredUser;

--DecryptByKey to decrypt data and see whats in the table
select UserName, convert(varchar, DecryptByKey(EncryptedPassword))
from RegisteredUser;