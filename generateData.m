function randomDataForLine = generateData(m,c,size)
  %Should generate positive y values only
  if m == 0
    x1 = 0;
  else
    x1 = -c/m;
  end
  disp(x1);
  
  if m>=0
    x2 = x1+200;
    x = (x2-x1).*rand(1,size)+x1;
    maxY = m.*x2+c;
  else
    x2 = x1-200;
    x = (x1-x2).*rand(1,size)+x2;
    maxY = m.*x2+c;
  end
  disp(x2);
  %disp(x);

  %x = (maxX-0).*rand(1,size);
  
  maxError = maxY*(10/100);
  er = (maxError-0).*rand(1,size);
  bool = randi(2,1,size)-1;
  bool(bool==0)=-1;
  targetY = m.*x+c;
  a=er.*bool;
  realY = targetY+a;
  realY=max(realY,0);

  
  #disp(x);
  #disp(er);
  #disp(targetY);
  #disp(realY);
  plot(x,realY,'x');
  #xlim([0 maxX])
  
  #targetY = m.*x+c
  #function ave = average(x)
   # ave = sum(x(:))/numel(x); 
#end
endfunction
