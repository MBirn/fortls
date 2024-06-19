c Invalid loop label error:
      subroutine a()
        integer i
        do 10 i=1,2
   10   enddo
      end
      subroutine b()
        integer i
        do 10 i=1,2
   10   continue
        if(.false.) then
        endif
      end
      subroutine c()
      end

c      Empty line continuation:
      subroutine foo
      call bar(
     &
     &)
      end
      subroutine bar
      end