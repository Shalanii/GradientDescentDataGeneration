function randomDataForCurve = generateDataForCurve(a,b,c,size,maxX)
  x = (maxX-0).*rand(1,size);
  maxY = a.*maxX.^2+b.*maxX+c;
  maxError = maxY*(5/100);
  er = (maxError-0).*rand(1,size);
  bool = randi(2,1,size)-1;
  disp(bool);
  bool(bool==0)=-1;
  disp(bool)
  targetY = a.*x.^2+b.*x+c;
  a=er.*bool;
  disp(a)
  realY = targetY+a;
  %realY=max(realY,0);

  
  #disp(x);
  #disp(er);
  #disp(targetY);
  #disp(realY);
  plot(x,realY,'x');
  xlim([0 maxX])
  
  #targetY = m.*x+c
  #function ave = average(x)
   # ave = sum(x(:))/numel(x); 
#end
endfunction
