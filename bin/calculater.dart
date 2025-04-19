import 'dart:io';
import 'dart:math';
double Addition (double num1,double num2)
{
  return num1+num2;
}
double Subtraction(double num1,double num2)
{
  return num1-num2;
}
double Multiply(double num1,double num2)
{
  return num1*num2;
}
double Division(double num1,double num2)
{
  return num1/num2;
  
}
double Remander(double num1, double num2)
{
  return num1%num2;
}
double Factorial(double num1 )
{
  double fec=1;
  if(num1<0)
  return -1;
  else if(num1==0||num1==1)
  return fec;
  for(double i=num1;i>0;i--)
  fec*=i;
  return fec;
}
double? ReadNumber(String message)
{
  print(message);
  String ? input=stdin.readLineSync();
  double? num;
  num= double.tryParse(input!);
  return num;
}
double? Basic( double numop)
{
  double? num1;
  double? num2;
  if(numop!=null)
  {
    if(numop!=6)
   {
    num1=ReadNumber('Enter the first Number : ');
    num2=ReadNumber('Enter the second Number :' );
   }
   else
   num1=ReadNumber('Enter the  Number :' );
   print('The resulte :');

  switch(numop)
  {
    case 1:
    return Addition (num1!,num2!);
    case 2:
    return Subtraction(num1!,num2!);
    case 3:
    return Multiply(num1!,num2!);
    case 4:
    if(num2!=0)
    return Division(num1!,num2!);
    else 
    print('erorr');
    case 5:
    return Remander(num1!,num2!);
    case 6 :
    return Factorial(num1!);

  }
  }
  
}
num PowersExponents(double numop)
{
  double? num1;
  double? num2;
  if(numop==1)
  { 
    num1=ReadNumber('Enter the base : ');
    num2=ReadNumber('Enter the power : ');
  }
  else
  num1=ReadNumber('Enter the base : ');
  print('The resulte :');

  switch(numop)
  {
    case 1:
    return pow(num1!,num2!);
    case 2:
    return sqrt(num1!);
  }
  return 0;

}
double? TrigonometricRatios(double numop) {
  double? angleInDegrees = ReadNumber("Enter the angle in degrees: ");
  print('The resulte :');
  if (angleInDegrees == null) {
    print("Invalid angle input!");
    return null;
  }

  double angleInRadians = angleInDegrees * (pi / 180);
  switch(numop) {
    case 1:
      return sin(angleInRadians);
    case 2:
      return cos(angleInRadians);
    case 3:
      return tan(angleInRadians);
    default:
      print("Invalid operation selected!");
      return null;
  }
}


double ReadTheOpreator(String message)
{
  print(message);
  String? input=stdin.readLineSync();
  double? numType;
  if(input!=null)
  numType = double.tryParse(input);
  else 
  numType=1;
  return numType!;
  
}
void subMenu(double numOp)
{
    print("___Select the type____");

  switch(numOp)
  {
    case 1:
    
  print('1. Addition');
  print('2. Subtraction');
  print('3. Multiply');
  print('4. Division');
  print('5. Remander');
  print('6. Fectoray');
  break;
  case 2:
  print('1. power');
  print('2. Exponents');
  break;
  case 3:
  print('1. Sine');
  print('2. cose');
  print('3. tan');
  break;
 }
}
void mainMenu()
{
  String ? calAgain;
  double? again;
  print('\t___Welcome to my calculater___\n\n\n');
  do{

  print("___Select the type____");
  print('1.Basic opreators');
  print('2.Powers and Exponents');
  print('3.Tringonometric Ratios');
  print('________________________________________________________');

  double? numType=ReadTheOpreator("Enter the number of type : ");
  print('________________________________________________________');
  subMenu(numType!);
  print('________________________________________________________');

  double? numOp=ReadTheOpreator("Enter the number of opreatoe : ");
    print('________________________________________________________');

  switch(numType)
  {
    case 1:
    print(Basic(numOp!));
    break;
    case 2: 
      print(PowersExponents(numOp!));
      break;
    case 3:
      print(TrigonometricRatios(numOp!));
      break;

  
  }
  print('________________________________________________________');

  print("Do you want using calclater again ? ");
  print('1.yes');
  print('2. no');
  calAgain=stdin.readLineSync();
  again=double.tryParse(calAgain!);
 print('________________________________________________________');


  }while(again==1);
  print("thank you :)");

}
void main() {
  
  mainMenu();
  
  
}
