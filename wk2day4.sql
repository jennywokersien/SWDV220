--Wk2Day4
--1.
USE MyGuitarShop;

CREATE ROLE OrderEntry;

GRANT INSERT, UPDATE
  ON Orders
  TO OrderEntry;

GRANT UPDATE, INSERT
  ON OrderItems
  TO OrderEntry;

ALTER ROLE db_datareader ADD MEMBER OrderEntry;

--2.
use master;
CREATE LOGIN RobertHalliday WITH PASSWORD = 'HelloBob123!',
    DEFAULT_DATABASE = MyGuitarShop;

use MyGuitarShop;
create user RobertHalliday for login RobertHalliday;

alter role OrderEntry add member RobertHalliday;