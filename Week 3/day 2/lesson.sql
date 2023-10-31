use bank;

select * from account;

select frequency, date
from account;

select distinct frequency 
from account; #3 unique values 

select avg(amount) as avg_amount
from loan; #agreggation function 

select account_id, amount 
from loan 
order by amount desc;

select amount_id, sum(amount)
from loan 
group by account_id;

#total number of clients by district 

select district_id, count(client_id) as number_of_clients 
from client 
group by district_id
order by number_of_clients desc
limit 10;

#average amount borrowed for each acount and each status 

select account_id, status, avg(amount) as avg_amount 
from loan 
group by account_id, status;


#retrieve the total number of cads per type of car, ordered alphabetically in ascending order 

select type, count(card_id) as number_of_cards
from card
group by type
order by type asc;




#where 

select * 
from client 
where district_id = 1;


select *
from loan
where amount > 100000
	and (status = 'A' or status = 'B');
	#and (status in ('A','B'));


#retrieve the average amount of loans for each account , for loans with status "a' and with an amount between 58 and 258

select account_id, avg(amount) as avg_amount
from loan   
where status = 'A'
	and amount between 50000 and 250000
group by account_id
having avg_amount > 100000;


#retrieve the loan_id and a column called "tier"
#that takes the value "High" when amount of loan is bigger than 100


select loan_id, amount
case
	when amount>10000 then 'High'
	when amount >= 50000 and amount <= 100000 then 'medium' 
	else 'low'
end as tier
from loan;


select distinct frequency 
from account
where frequency like " b%"; 






