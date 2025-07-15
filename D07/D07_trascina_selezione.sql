begin
    update d07_appuntamento
       set data_inizio = to_date(:APEX$NEW_START_DATE, 'YYYYMMDDHH24MISS'),
           data_fine = to_date(:APEX$NEW_END_DATE, 'YYYYMMDDHH24MISS')
     where id = :APEX$PK_VALUE;
end;