--DNC data: 
select top 10 * from orion.dbo.DoNotCallLocal order by 4 desc
--sifans data
SELECT TOP 10  * FROM POLARIS..mkLeadImportStoredSif ORDER BY 1 DESC
-- doc imaging data
select top 10 * from orion..didocuments order by 1 desc
-- notes data
select top 10 * from orion.dbo.syNote order by 1 desc
-- tasks data
select top 10 * from dbo.syTask order by 1 desc

