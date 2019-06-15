use UMD_events;

create or replace view find_events_and_orgs as
select event_name, organization_name, date_format(event_date,"%Y/%d/%m")
from UMD_events.Events join Org_Events using(Event_id)
join UMD_events.Organization using(organization_id) where UMD_events.Events.Dresscode_Dress_code_id = 1;


create or replace view find_all_professionals_and_if_they_have_food as
select UMD_events.Organization.organization_name,UMD_events.Organization.Organization_description, UMD_events.Events.Food, COUNT(UMD_events.Organization.organization_name)
from  UMD_events.Events join  Org_Events using(Event_id) join UMD_events.Organization  using(Organization_id)join UMD_events.Organization Type using(OrganizationType_id)
where OrganizationType_id = 3 and Food=True group by UMD_events.Organization.organization_name;

create or replace view what_items_to_bring as
select UMD_events.Events.Event_name, UMD_events.Items_to_bring.Items
from Items_to_bring join UMD_events.Events on Items_to_bring.Events_id = UMD_events.Events.Event_id
 where is_items = True;


create or replace  view all_non_causal_events_and_what_to_wear as
select temp.event_name as Events, dresscode.Type_of_dress_code as "Dress Code", dresscode.Dress_code_description as Description
from (select event_name, Dresscode_Dress_code_id from events where Dresscode_Dress_code_id > 2) temp
left join dresscode on temp.Dresscode_Dress_code_id = dresscode.Dress_code_id
order by dresscode.Dress_code_description;

create view events_per_day as
select event_date as Date, count(event_id) as "# of Events"
from events
group by event_date
order by event_date;
