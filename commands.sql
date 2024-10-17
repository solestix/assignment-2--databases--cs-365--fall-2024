-- Create a New Entry into the Database (for the password Table)
INSERT INTO password (user_id, site_id, username, password, time_created, comment)
VALUES (1, 3, 'jhard94', AES_ENCRYPT('newSecurePass!', @key_str, @init_vector), NOW(), 'No comment');

-- Get the Password Associated with the URL of One of the Existing Entries
SELECT username, AES_DECRYPT(password, @key_str, @init_vector) AS decrypted_password
FROM password
JOIN website ON password.site_id = website.site_id
WHERE website.domain = 'https://twitter.com';

-- Get All Password-Related Data for URLs that Contain "https" (for Two Entries)
SELECT password.user_id, password.site_id, username, AES_DECRYPT(password.password, @key_str, @init_vector) AS decrypted_password,
       password.time_created, password.comment, website.domain
FROM password
JOIN website ON password.site_id = website.site_id
WHERE website.domain LIKE 'https%' AND password.site_id IN (2, 3);

-- Change a URL Associated with One of the Passwords
UPDATE website
SET domain = 'https://new-url.com'
WHERE site_id = 1;

-- Change Any Password
UPDATE password
SET password = AES_ENCRYPT('updatedPass123!', @key_str, @init_vector)
WHERE user_id = 1 AND site_id = 1;

-- Remove a Tuple Based on a URL
DELETE password
FROM password
JOIN website ON password.site_id = website.site_id
WHERE website.domain = 'https://twitter.com';

-- Remove a Tuple Based on a Password
DELETE FROM password
WHERE user_id = 1 AND site_id = 1;
