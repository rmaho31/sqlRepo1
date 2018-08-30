SELECT AVG(Rushing_Yards) as YardsPerGame, NAME from runningbacksbygame group by NAME order by YardsPerGame desc;

SELECT AVG(Rushing_Yards) as YardsPerGame, NAME, Year from runningbacksbygame group by NAME, Year order by YardsPerGame desc;

SELECT Max(Rushing_Yards) as RushingYards, NAME, Year, Opponent from runningbacksbygame group by NAME, Year order by RushingYards desc;

SELECT SUM(Rushing_TDs) as RushingTDs, NAME, Year from runningbacksbygame group by NAME, Year order by RushingTDs desc;

SELECT SUM(Rushing_TDs) + SUM(Receiving_TDs) as TDs, NAME, Year from runningbacksbygame group by NAME, Year order by TDs desc;

SELECT (SUM(Rushing_TDs) + SUM(Receiving_TDs))/(SUM(Games_Played)) as TDspergame, NAME, Year from runningbacksbygame group by NAME, Year order by TDspergame desc;

SELECT (AVG(Rushing_TDs) + AVG(Receiving_TDs)) * 6 + AVG(Rushing_Yards) * .1 + AVG(Receiving_Yards) *.1 
		+ AVG(Receptions) - AVG(Fumbles_Lost)  as FPPspergame, NAME, Year from runningbacksbygame WHERE Games_Played = 1
        group by NAME, Year  order by FPPspergame desc;
        
SELECT * FROM runningbacksbygame where name = 'Bell, Le''Veon' and Games_Played = 1;