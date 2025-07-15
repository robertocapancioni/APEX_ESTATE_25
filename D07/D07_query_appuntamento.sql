    select a.ID,
           a.DATA_INIZIO,
           a.DATA_FINE,
           a.DESCRIZIONE,
           a.TIPO_APPUNTAMENTO_ID,
          ta.TIPO_APPUNTAMENTO, 
           a.NOME_ID,
           n.NOME
      from D07_APPUNTAMENTO a
 left join D07_TIPO_APPUNTAMENTO ta on a.TIPO_APPUNTAMENTO_ID = ta.TIPO_APPUNTAMENTO_ID
 left join D07_NOME               n on a.NOME_ID              =  n.NOME_ID