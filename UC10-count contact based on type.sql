------ UC 8: Ability to retrieve entries sorted alphabetically ------

select *
from Address_Book_Table
where City='Bangalore'
order by(FirstName)

------ UC 9: Identify each Address Book with name andType ------

alter table Address_Book_Table
add AddressBookName varchar(100),
Type varchar(100)

--Update values for Type=Friends--
update Address_Book_Table
set AddressBookName='FriendName',Type='Friends'
where FirstName='Harsha' or FirstName='Aarchna'

--Update values for Type=Family--
update Address_Book_Table
set AddressBookName='Mom',Type='Family'
where FirstName='Pramela'

--Update values for Type=Profession--
update Address_Book_Table
set AddressBookName='Manager',Type='Profession'
where FirstName='Meena'

------ UC 10: Ability to get number of contact persons by Type------
select Count(*) as NumberOfContacts,Type
from Address_Book_Table
Group by Type

--Update values for Type=Family--
update Address_Book_Table
set AddressBookName='Mom',Type='Family'
where FirstName='Pramela'

--Update values for Type=Profession--
update Address_Book_Table
set AddressBookName='Manager',Type='Profession'
where FirstName='Meena'
