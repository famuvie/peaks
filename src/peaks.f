C Output from Public domain Ratfor, version 1.0
      subroutine peaks(x,span, n, ans)
      integer n,span, ans(n)
      double precision x(n)
      ispan2= (span-1)/2
      do23000 i=1, ispan2
      ans(i)=0
23000 continue
23001 continue
      do23002 i=n-ispan2+1, n
      ans(i)=0
23002 continue
23003 continue
      i=ispan2+1
23004 if(i.le. n-ispan2)then
      ans(i)=1
      j=i-ispan2
23006 if((ans(i).eq.1).and.(j.le.(i+ispan2)))then
      if(x(j).ge.x(i))then
      if(x(j).gt.x(i))then
      ans(i)=0      
      endif
      if(j.gt.i)then
      ans(i)=0
      endif
      endif
      j=j+1
      if(j.eq.i)then
      j=j+1
      endif
      goto 23006
      endif
23007 continue
      if(ans(i).eq.0)then
      i=i+1
      endif
      if(ans(i).eq.1)then
      i=i+ispan2-1
      endif
      goto 23004
      endif
23005 continue
      return
      end
