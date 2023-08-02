Select * from Dataset1;

Select * from Dataset2;

--selecting Literacy Rate greater than 80
Select * from Dataset1
Where Literacy > 80
Order by Literacy

--no of rows into dataset

Select Count(*) from Dataset1
Select Count(*) from Dataset2

-- dataset for Jharkhand And Bihar
Select * from Dataset1
Where State in('Jharkhand','Bihar')
Order by State;

-- population of india
Select Sum(Population) from Dataset2

-- average growth of india
Select State, AVG(Growth)*100 as 'Total Average Growth' from Dataset1
Group by State

-- top 3 states having highest growth ratio
Select Top 3 State, AVG(Growth)*100 as 'Total Average Growth' from Dataset1
Group by State
order by 'Total Average Growth' Desc

-- top 3 states having Lowest growth ratio
Select Top 3 State, AVG(Growth)*100 as 'Total Average Growth' from Dataset1
Group by State
order by 'Total Average Growth'


-- avg sex ratio
Select State,Round(AVG(Sex_Ratio),0) as 'Average Sex Ratio' from Dataset1
Group by State 
Order by 'Average Sex Ratio'

-- avg Literacy Rate
Select State, AVG(Literacy) as 'Avg Literacy' from Dataset1
Group by State
Order by 'Avg Literacy'

--top and bottom 3 states in Litracey Rate
select Top 3 State, AVG(Literacy) as 'Avg Literacy' from Dataset1
Group by State
Order by 'Avg Literacy' DESC

select Top 3 State, AVG(Literacy) as 'Avg Literacy' from Dataset1
Group by State
Order by 'Avg Literacy' 

-- select state name with letter a
Select Distinct(State) from Dataset1
Where State Like 'a%'

-- select state name with letter 'M' AND  end with letter 'h'
Select Distinct(State) from Dataset1
Where State like 'M%' and State like '%H'

-- joining both the tables
Select Dataset1.State, avg(dataset1.Sex_Ratio) as 'avg_sex_ratio', avg(Dataset2.Population) as 'avg_population'
from Dataset1
Join Dataset2 on Dataset1.District=Dataset2.District
Group by State


-- total numbers of males and females


-- top 10 district with most population 
Select top 10 District, population from Dataset2
Order by Population


-- top 10 Largest district
Select top 10 District, Area_km2 from Dataset2
Order by Area_km2


