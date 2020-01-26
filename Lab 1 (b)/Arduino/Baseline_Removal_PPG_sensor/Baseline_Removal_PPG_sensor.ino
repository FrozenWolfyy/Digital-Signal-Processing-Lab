float x[500];
float y[500];
int count =0;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  Serial.println("Origina_data Baseline Smoothened");

}

void loop() {
  // put your main code here, to run repeatedly:
int i = 0;
while(i<500){
  x[i] = analogRead(A0);
  delay(10);
  i++;
}


int l=400;
for(int i=0;i<500;i++)
{
  double sum=0;                    // initialize a variable to store the sum value.
  count=0;
  for(int k=0;k<l;k++)
  {
   sum=sum+x[i-k];                   // sum of the past l values.
   
   if(x[i-k]!=0)                     // finding number of non zero values.
   {
    count++;
    }
  }
y[i]=sum/count;                   // averaging them.
}


for(int i=0;i<500;i++)
{  
Serial.print(x[i]);
Serial.print(',');
Serial.print(y[i]);
Serial.print(','); 
Serial.println(x[i]-y[i]);
}
}
