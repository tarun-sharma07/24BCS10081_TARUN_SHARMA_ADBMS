select name as Customers from customers where id NOT in(Select customerId from Orders);

