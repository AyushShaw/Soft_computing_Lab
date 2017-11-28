disp('Mcculloch-Pitts Net for  function');
Nam = 'MyAND';
xe1 = [0 1 0 1];
xe2 = [0 0 1 1];
disp('Enter weights');
w1=input('weight w1=');
w2=input('weight w2=');
disp('Enter Threshold value');
Th=input('theta=');

disp('Weights of Neuron');
disp(w1);
disp(w2);
disp('Threshold value');
disp(Th);

x1=xe1;
x2=xe2;
theta=Th;
Name=Nam;
y=[0 0 0 0];
switch Name
    case 'MyAND'
        z=[0 0 0 1];
    case 'MyOR'
        z=[0 1 1 1];     
 end

con=1;
while con
  zin=x1*w1+x2*w2;
  for i=1:4
      if zin(i)>=theta
          y(i)=1;
      else
          y(i)=0;
      end
  end
  disp('Output of Net');
  disp(y);
  if y==z
      con=0;
  else
      disp('Net is not learning enter another set of weights and Threshold value');
      	  w1=input('weight w1=');
      	  w2=input('weight w2=');
      	  theta=input('theta=');
  end
end


print -dpng figure.png