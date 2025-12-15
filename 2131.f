C FORTRAN 66: ГЕНЕРАТОР СЛУЧАЙНОГО БРЕДА
      PROGRAM RANDOMBS
      DIMENSION WORDS(5)
      DATA WORDS /'ХУЙНЯ', 'ДРЕБЕДЕНЬ', 'АХИНЕЯ', 
     *            'БЕЛИБЕРДА', 'ЧУШЬ'/
      
      CALL SRAND(12345) ! Фиксированный сид для воспроизводимости
      
      DO 10 I = 1, 100
          J = MOD(IRAND(), 5) + 1
          PRINT *, WORDS(J), ' ГЕНЕРИРУЕТСЯ...'
10    CONTINUE
      STOP
      END