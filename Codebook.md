---
title: "Code Book"
output: 
  html_document:
    keep_md: true
---

Here, we summarize the data in the file "tidydataset.txt."

### Identifier Variables (shown with corresponding column index)

[1] "subject" - test subject identifier (numbers 1-30, i.e. 30 subjects)

[2] "activity" - identifier of type of activity carried out by subjects, 
for which measurements were taken (see   "Activity Descriptors" below) 

### Measurement Variables (shown with corresponding column index)

 [3] "time.domainbodyaccelerometer meanX"                              
 [4] "time.domainbodyaccelerometer meanY"                              
 [5] "time.domainbodyaccelerometer meanZ"                              
 [6] "time.domainbodyaccelerometerstandard.deviationX"                 
 [7] "time.domainbodyaccelerometerstandard.deviationY"                 
 [8] "time.domainbodyaccelerometerstandard.deviationZ"                 
 [9] "time.domainGravityaccelerometer meanX"                           
[10] "time.domainGravityaccelerometer meanY"                           
[11] "time.domainGravityaccelerometer meanZ"                           
[12] "time.domainGravityaccelerometerstandard.deviationX"              
[13] "time.domainGravityaccelerometerstandard.deviationY"              
[14] "time.domainGravityaccelerometerstandard.deviationZ"              
[15] "time.domainbodyaccelerometerJerk meanX"                          
[16] "time.domainbodyaccelerometerJerk meanY"                          
[17] "time.domainbodyaccelerometerJerk meanZ"                          
[18] "time.domainbodyaccelerometerJerkstandard.deviationX"             
[19] "time.domainbodyaccelerometerJerkstandard.deviationY"             
[20] "time.domainbodyaccelerometerJerkstandard.deviationZ"             
[21] "time.domainbodygyroscope meanX"                                  
[22] "time.domainbodygyroscope meanY"                                  
[23] "time.domainbodygyroscope meanZ"                                  
[24] "time.domainbodygyroscopestandard.deviationX"                     
[25] "time.domainbodygyroscopestandard.deviationY"                     
[26] "time.domainbodygyroscopestandard.deviationZ"                     
[27] "time.domainbodygyroscopeJerk meanX"                              
[28] "time.domainbodygyroscopeJerk meanY"                              
[29] "time.domainbodygyroscopeJerk meanZ"                              
[30] "time.domainbodygyroscopeJerkstandard.deviationX"                 
[31] "time.domainbodygyroscopeJerkstandard.deviationY"                 
[32] "time.domainbodygyroscopeJerkstandard.deviationZ"                 
[33] "time.domainbodyaccelerometermagnitude mean"                      
[34] "time.domainbodyaccelerometermagnitudestandard.deviation"         
[35] "time.domainGravityaccelerometermagnitude mean"                   
[36] "time.domainGravityaccelerometermagnitudestandard.deviation"      
[37] "time.domainbodyaccelerometerJerkmagnitude mean"                  
[38] "time.domainbodyaccelerometerJerkmagnitudestandard.deviation"     
[39] "time.domainbodygyroscopemagnitude mean"                          
[40] "time.domainbodygyroscopemagnitudestandard.deviation"             
[41] "time.domainbodygyroscopeJerkmagnitude mean"                      
[42] "time.domainbodygyroscopeJerkmagnitudestandard.deviation"         
[43] "frequency.domainbodyaccelerometer meanX"                         
[44] "frequency.domainbodyaccelerometer meanY"                         
[45] "frequency.domainbodyaccelerometer meanZ"                         
[46] "frequency.domainbodyaccelerometerstandard.deviationX"            
[47] "frequency.domainbodyaccelerometerstandard.deviationY"            
[48] "frequency.domainbodyaccelerometerstandard.deviationZ"            
[49] "frequency.domainbodyaccelerometer meanfrequencyX"                
[50] "frequency.domainbodyaccelerometer meanfrequencyY"                
[51] "frequency.domainbodyaccelerometer meanfrequencyZ"                
[52] "frequency.domainbodyaccelerometerJerk meanX"                     
[53] "frequency.domainbodyaccelerometerJerk meanY"                     
[54] "frequency.domainbodyaccelerometerJerk meanZ"                     
[55] "frequency.domainbodyaccelerometerJerkstandard.deviationX"        
[56] "frequency.domainbodyaccelerometerJerkstandard.deviationY"        
[57] "frequency.domainbodyaccelerometerJerkstandard.deviationZ"        
[58] "frequency.domainbodyaccelerometerJerk meanfrequencyX"            
[59] "frequency.domainbodyaccelerometerJerk meanfrequencyY"            
[60] "frequency.domainbodyaccelerometerJerk meanfrequencyZ"            
[61] "frequency.domainbodygyroscope meanX"                             
[62] "frequency.domainbodygyroscope meanY"                             
[63] "frequency.domainbodygyroscope meanZ"                             
[64] "frequency.domainbodygyroscopestandard.deviationX"                
[65] "frequency.domainbodygyroscopestandard.deviationY"                
[66] "frequency.domainbodygyroscopestandard.deviationZ"                
[67] "frequency.domainbodygyroscope meanfrequencyX"                    
[68] "frequency.domainbodygyroscope meanfrequencyY"                    
[69] "frequency.domainbodygyroscope meanfrequencyZ"                    
[70] "frequency.domainbodyaccelerometermagnitude mean"                 
[71] "frequency.domainbodyaccelerometermagnitudestandard.deviation"    
[72] "frequency.domainbodyaccelerometermagnitude meanfrequency"        
[73] "frequency.domainbodyaccelerometerJerkmagnitude mean"             
[74] "frequency.domainbodyaccelerometerJerkmagnitudestandard.deviation"
[75] "frequency.domainbodyaccelerometerJerkmagnitude meanfrequency"    
[76] "frequency.domainbodygyroscopemagnitude mean"                     
[77] "frequency.domainbodygyroscopemagnitudestandard.deviation"        
[78] "frequency.domainbodygyroscopemagnitude meanfrequency"            
[79] "frequency.domainbodygyroscopeJerkmagnitude mean"                 
[80] "frequency.domainbodygyroscopeJerkmagnitudestandard.deviation"    
[81] "frequency.domainbodygyroscopeJerkmagnitude meanfrequency"  

### Activity Descriptors

Each subject/pariticipant performed six activities, in the course of which the above measurements were taken

- WALKING 
- WALKING_UPSTAIRS  
- WALKING_DOWNSTAIRS 
- SITTING  
- STANDING 
- LAYING  
