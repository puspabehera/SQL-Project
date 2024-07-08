IF OBJECT_ID('tempdb..#A') IS NOT NULL
    DROP TABLE #A;
	IF OBJECT_ID('tempdb..#B') IS NOT NULL
    DROP TABLE #B;
create table #A 
(
id int 
)
GO
create table #B
(
id int 
)
GO
insert into #a select 1
insert into #a select 1
insert into #a select 1
insert into #a select 0
insert into #a select 0
insert into #a select NULL
insert into #a select NULL
GO
insert into #B select 1
insert into #B select 1
insert into #B select 0
insert into #B select 0
insert into #B select NULL
GO
SELECT #a.id FROM #A inner join #B on #a.id=#b.id  --10
SELECT #a.id FROM #A left join #B on #a.id=#b.id  --10+2 =12
SELECT #a.id FROM #A right join #B on #a.id=#b.id  --10+ 1=11
SELECT #a.id FROM #A full join #B on #a.id=#b.id --10+ 2+ 1 =13
SELECT * FROM #A , #B  --cross join --10+ 2+ 1 =13
select * from #A
select * from #B