create database mydatabase;
use mydatabase;
select * from customer;

select gender,sum(Purchase_Amount_usd) as revenue
from customer
group by gender;
 
select customer_id,purchase_Amount_usd
from customer
where discount_applied='yes' and purchase_amount_usd >= (select avg(purchase_amount_usd) from customer);

select top 5 item_purchased,round(avg(review_rating),2) as 'average product rating'
from customer
group by item_purchased
order by avg(review_rating) desc;

select shipping_type, round(avg(purchase_amount_usd),2) as average
from customer
where shipping_type in ('Standard','Express')
group by shipping_type

select subscription_status,customer_id from customer where subscription_status='No';

select subscription_status, round(avg(purchase_amount_usd),2) as average_spend,
round(sum(purchase_amount_usd),2) as total_revenue,
count(customer_id) as total_customers
from customer
group by subscription_status
order by total_revenue,average_spend desc;

select top 5 item_purchased,round(100 * avg(purchase_amount_usd)/count(*),2) as discount_rate
from customer
where discount_applied='yes'
group by item_purchased
order by discount_rate desc;

select top 5 item_purchased,round(100 * sum(case when discount_applied='Yes' then 1 else 0 end)/count(*),2) as discount_rate
from customer
group by item_purchased
order by discount_rate desc;

with customer_type as(
select customer_id,previous_purchases,
case
   when previous_purchases = 1 then 'new'
   when previous_purchases between 2 and 10 then 'returning'
   else 'loyal'
   end as customer_segment
from customer
)
select customer_segment,count(*) as number_customers
from customer_type
group by customer_segment

select top 3 category,item_purchased,count(customer_id) as total_orders
from customer
group by category,item_purchased

with item_counts as(
select category,item_purchased,
count(customer_id) as total_orders,
row_number() over (partition by category order by count(customer_id) desc) as item_rank
from customer
group by category,item_purchased
)
select item_rank,category,item_purchased,total_orders
from item_counts
where item_rank <= 3

select subscription_status,count(customer_id) as repeat_buyers
from customer 
where previous_purchases > 5
group by subscription_status

select age,sum(purchase_amount_usd) as total_revenue
from customer
group by age
order by age,total_revenue desc;

