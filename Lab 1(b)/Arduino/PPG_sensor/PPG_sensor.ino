float x[500];
float y[500];
int count =0;
float z[500];
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  Serial.println("Original_data MVA_data 1st_order 3_point");

}

void loop() {
  // put your main code here, to run repeatedly:
int i = 0;
while(i<500){
  x[i] = analogRead(A0);
  delay(10);
  i++;
}


int l=8;
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
z[i]=y[i]-y[i-1];
}


for(int i=0;i<500;i++)
{  
Serial.print(x[i]+1000);
Serial.print(',');
Serial.print(y[i]+500);
Serial.print(','); 
Serial.print(z[i]+250);
Serial.print(','); 
Serial.println(y[i]-y[i-2]);
}
}
