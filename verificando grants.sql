--SELECT VERIFICA GRANST --
select * from (
				select 'GRANT '||privilege||' TO '||grantee||';' 
				  from dba_sys_privs
				 where grantee in ('USUARIO1','USUARIO2')
	union all
				select 'grant '||privilege||' on '||grantor||'.'||table_name||' to '||grantee||';' 
				  from dba_tab_privs
				 where grantee in ('USUARIO1','USUARIO2')
	union all
				select 'GRANT '||GRANTED_ROLE||' TO '||grantee||';' 
				  from dba_role_privs
				 where grantee in ('USUARIO1','USUARIO2')
			   );