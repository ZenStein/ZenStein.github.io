



##One to One##
![O to O](https://github.com/ZenStein/ZenStein.github.io/blob/master/phase-0/8-week-8/imgs/one-to-one.png)
##Many to Many##
![M to M](https://github.com/ZenStein/ZenStein.github.io/blob/master/phase-0/8-week-8/imgs/many-to-many.png)

#Reflecttion

##What is a one-to-one database?##
    An example would be a customers table.  A column of customers could be address.  Instead of inlining the address,
    i.e. A string that looks like '2344 Waba st. San Fran, CA 29384', You can reference it to an address id. The
    address would refer to one customer, and one cutomer would have one address.
##When would you use a one-to-one database? (Think generally, not in terms of the example you created).##
    Whenever you have one thing that has one other thing.
##What is a many-to-many database?##
    Say you have two tables tables, items and orders. Orders can have many items, and many items can go to many orders.
    This would be a good time to create a third table, items_orders that links the many to many.
##When would you use a many-to-many database? (Think generally, not in terms of the example you created).##
    Whenever a thing has many other things, and that other thing, has many things.
##What is confusing about database schemas? What makes sense?##
    I am unclear why it is important to understand the relationships between things. I have used simple DB's
    for various projects, and so far, defining the relationships hasn't dawned on me. I am assuming that as
    things get more complex, this is necessary to understand.