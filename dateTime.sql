-- All of these can be added into the string variable

-- Date and time can be stored in int, but now will be out of bound

-- Only date
UPDATE character
SET date1 = current_date();

-- Only time -> not UNIX time stamp, but the local time of the machine
-- eg: 13:17:21
UPDATE character
SET date1 = current_time();

-- Both date and time
UPDATE character
SET date1 = now();