##Code book

The codebook will describe about how the data was cleaned and converted into tidy data.

1. I loaded all the data sets relevant to create the desired data set -The training data and the test data along with their
subject and activity labels.
2. Went ahead with naming both the sets. Then, merging them using rbind.
3. After extracting only the measurements of mean and standard deviation with the activity labels and subject variables,
I made use of the reshape2 library package to reshape and create a **wide** form of tidy data. 
4. Melted the data set keeping activity and subject as ids.
5. Reshaped by averaging the values for each subject and each activity.


#Data Dictionary

68 variables with 180 observations

<table style="width:100%">
<tr>
<th>Column Number</th>
<th>Column Name</th>
<th>Data Type</th>
<th>Description</th>
</tr> 
<tr>
<td>1</td>
<td>subject</td>
<td>integer</td>
<td>Specifies the subject who underwent through the activities to calculate the measurements</td>
</tr>
<tr>
<td>2</td>
<td>activity</td>
<td>Character factor with 6 levels-LAYING,SITTING,STANDING,WALKING,WALKING_DOWNSTAIRS,WALKING_UPSTAIRS</td>
<td>Specifies the activities that the subject performed</td>
</tr>
<tr>
<td>3<td>
<td>tBodyAcc-std()-X</td>
<td>numeric</td>
<td>The standard deviation of the accelerometer body signal measured along the X axis</td>
</tr>
<tr>
<td>4<td>
<td>tBodyAcc-std()-Y</td>
<td>numeric</td>
<td>The standard deviation of the accelerometer body signal measured along the Y axis</td>
</tr>
<tr>
<td>5<td>
<td>tBodyAcc-std()-Z</td>
<td>numeric</td>
<td>The standard deviation of the accelerometer body signal measured along the Z axis</td>
</tr>
<tr>
<td>6<td>
<td>tGravityAcc-std()-X</td>
<td>numeric</td>
<td>The standard deviation of the accelerometer gravity signal measured along the X axis</td>
</tr>
<tr>
<td>7<td>
<td>tGravityAcc-std()-Y</td>
<td>numeric</td>
<td>The standard deviation of the accelerometer gravity signal measured along the Y axis</td>
</tr>
<tr>
<td>8<td>
<td>tGravityAcc-std()-Z</td>
<td>numeric</td>
<td>The standard deviation of the accelerometer gravity signal measured along the Z axis</td>
</tr>
<tr>
<td>9<td>
<td>tBodyAccJerk-std()-X</td>
<td>numeric</td>
<td>The standard deviation of the accelerometer body jerk signal measured along the X axis</td>
</tr>
<tr>
<td>10<td>
<td>tBodyAccJerk-std()-Y</td>
<td>numeric</td>
<td>The standard deviation of the accelerometer body jerk signal measured along the Y axis</td>
</tr>
<tr>
<td>11<td>
<td>tBodyAccJerk-std()-Z</td>
<td>numeric</td>
<td>The standard deviation of the accelerometer body jerk signal measured along the Z axis</td>
</tr>
<tr>
<td>12<td>
<td>tBodyGyro-std()-X</td>
<td>numeric</td>
<td>The standard deviation of the gyroscope body signal measured along the X axis</td>
</tr>
<tr>
<td>13<td>
<td>tBodyGyro-std()-Y</td>
<td>numeric</td>
<td>The standard deviation of the gyroscope body signal measured along the Y axis</td>
</tr>
<tr>
<td>14<td>
<td>tBodyGyro-std()-Z</td>
<td>numeric</td>
<td>The standard deviation of the gyroscope body signal measured along the Z axis</td>
</tr>
<tr>
<td>15<td>
<td>tBodyGyroJerk-std()-X</td>
<td>numeric</td>
<td>The standard deviation of the gyroscope body jerk signal measured along the X axis</td>
</tr>
<tr>
<td>16<td>
<td>tBodyGyroJerk-std()-Y</td>
<td>numeric</td>
<td>The standard deviation of the gyroscope body jerk signal measured along the Y axis</td>
</tr>
<tr>
<td>17<td>
<td>tBodyGyroJerk-std()-Z</td>
<td>numeric</td>
<td>The standard deviation of the gyroscope body jerk signal measured along the Z axis</td>
</tr>
<tr>
<td>18<td>
<td>tBodyAccMag-std()</td>
<td>numeric</td>
<td>The standard deviation of the accelerometer Body acceleration Mag signal measured</td>
</tr>
<tr>
<td>19<td>
<td>tGravityAccMag-std()</td>
<td>numeric</td>
<td>The standard deviation of the accelerometer gravity acceleration Mag signal measured</td>
</tr>
<tr>
<td>20<td>
<td>tBodyAccJerkMag-std()</td>
<td>numeric</td>
<td>The standard deviation of the accelerometer body jerk acceleration Mag signal measured</td>
</tr>
<tr>
<td>21<td>
<td>tBodyGyroMag-std()</td>
<td>numeric</td>
<td>The standard deviation of the gyroscope body angular velocity Mag signal measured</td>
</tr>
<tr>
<td>22<td>
<td>tBodyGyroJerkMag-std()</td>
<td>numeric</td>
<td>The standard deviation of the gyroscope body jerk angular velocity Mag signal measured</td>
</tr>
<tr>
<td>23<td>
<td>fBodyAcc-std()-X</td>
<td>numeric</td>
<td>The standard deviation of the fast fourier transformed accelerometer body signal measured along the X axis</td>
</tr>
<tr>
<td>24<td>
<td>fBodyAcc-std()-Y</td>
<td>numeric</td>
<td>The standard deviation of the fast fourier transformed accelerometer body signal measured along the Y axis</td>
</tr>
<tr>
<td>25<td>
<td>fBodyAcc-std()-Z</td>
<td>numeric</td>
<td>The standard deviation of the fast fourier transformed accelerometer body signal measured along the Z axis</td>
</tr>
<tr>
<td>26<td>
<td>fBodyAccJerk-std()-X</td>
<td>numeric</td>
<td>The standard deviation of the fast fourier transformed accelerometer body jerk signal measured along the X axis</td>
</tr>
<tr>
<td>27<td>
<td>fBodyAccJerk-std()-Y</td>
<td>numeric</td>
<td>The standard deviation of the fast fourier transformed accelerometer body jerk signal measured along the Y axis</td>
</tr>
<tr>
<td>28<td>
<td>fBodyAccJerk-std()-Z</td>
<td>numeric</td>
<td>The standard deviation of the fast fourier transformed accelerometer body jerk signal measured along the Z axis</td>
</tr>
<tr>
<td>29<td>
<td>fBodyGyro-std()-X</td>
<td>numeric</td>
<td>The standard deviation of the fast fourier transformed gyroscope body signal measured along the X axis</td>
</tr>
<tr>
<td>30<td>
<td>fBodyGyro-std()-Y</td>
<td>numeric</td>
<td>The standard deviation of the fast fourier transformed gyroscope body signal measured along the Y axis</td>
</tr>
<tr>
<td>31<td>
<td>fBodyGyro-std()-Z</td>
<td>numeric</td>
<td>The standard deviation of the fast fourier transformed gyroscope body signal measured along the Z axis</td>
</tr>
<tr>
<td>32<td>
<td>fBodyAccMag-std()</td>
<td>numeric</td>
<td>The standard deviation of the fast fourier transformed accelerometer Mag body signal measured</td>
</tr>
<tr>
<td>33<td>
<td>fBodyAccJerkMag-std()</td>
<td>numeric</td>
<td>The standard deviation of the fast fourier transformed accelerometer Mag body jerk signal measured</td>
</tr>
<tr>
<td>34<td>
<td>fBodyGyroMag-std()</td>
<td>numeric</td>
<td>The standard deviation of the fast fourier transformed gyroscope Mag body signal measured</td>
</tr>
<tr>
<td>35<td>
<td>fBodyGyroJerkMag-std()</td>
<td>numeric</td>
<td>The standard deviation of the fast fourier transformed gyroscope Mag body jerk signal measured</td>
</tr>
<tr>
<td>36<td>
<td>tBodyAcc-mean()-X</td>
<td>numeric</td>
<td>The mean of the accelerometer body signal measured along the X axis</td>
</tr>
<tr>
<td>37<td>
<td>tBodyAcc-mean()-Y</td>
<td>numeric</td>
<td>The mean of the accelerometer body signal measured along the Y axis</td>
</tr>
<tr>
<td>38<td>
<td>tBodyAcc-mean()-Z</td>
<td>numeric</td>
<td>The mean of the accelerometer body signal measured along the Z axis</td>
</tr>
<tr>
<td>39<td>
<td>tGravityAcc-mean()-X</td>
<td>numeric</td>
<td>The mean of the accelerometer gravity signal measured along the X axis</td>
</tr>
<tr>
<td>40<td>
<td>tGravityAcc-mean()-Y</td>
<td>numeric</td>
<td>The mean of the accelerometer gravity signal measured along the Y axis</td>
</tr>
<tr>
<td>41<td>
<td>tGravityAcc-mean()-Z</td>
<td>numeric</td>
<td>The mean of the accelerometer gravity signal measured along the Z axis</td>
</tr>
<tr>
<td>42<td>
<td>tBodyAccJerk-mean()-X</td>
<td>numeric</td>
<td>The mean of the accelerometer body jerk signal measured along the X axis</td>
</tr>
<tr>
<td>43<td>
<td>tBodyAccJerk-mean()-Y</td>
<td>numeric</td>
<td>The mean of the accelerometer body jerk signal measured along the Y axis</td>
</tr>
<tr>
<td>44<td>
<td>tBodyAccJerk-mean()-Z</td>
<td>numeric</td>
<td>The mean of the accelerometer body jerk signal measured along the Z axis</td>
</tr>
<tr>
<td>45<td>
<td>tBodyGyro-mean()-X</td>
<td>numeric</td>
<td>The mean of the gyroscope body signal measured along the X axis</td>
</tr>
<tr>
<td>46<td>
<td>tBodyGyro-mean()-Y</td>
<td>numeric</td>
<td>The mean of the gyroscope body signal measured along the Y axis</td>
</tr>
<tr>
<td>47<td>
<td>tBodyGyro-mean()-Z</td>
<td>numeric</td>
<td>The mean of the gyroscope body signal measured along the Z axis</td>
</tr>
<tr>
<td>48<td>
<td>tBodyGyroJerk-mean()-X</td>
<td>numeric</td>
<td>The mean of the gyroscope body jerk signal measured along the X axis</td>
</tr>
<tr>
<td>49<td>
<td>tBodyGyroJerk-mean()-Y</td>
<td>numeric</td>
<td>The mean of the gyroscope body jerk signal measured along the Y axis</td>
</tr>
<tr>
<td>50<td>
<td>tBodyGyroJerk-mean()-Z</td>
<td>numeric</td>
<td>The mean of the gyroscope body jerk signal measured along the Z axis</td>
</tr>
<tr>
<td>51<td>
<td>tBodyAccMag-mean()</td>
<td>numeric</td>
<td>The mean of the accelerometer Body acceleration Mag signal measured</td>
</tr>
<tr>
<td>52<td>
<td>tGravityAccMag-mean()</td>
<td>numeric</td>
<td>The mean of the accelerometer gravity acceleration Mag signal measured</td>
</tr>
<tr>
<td>53<td>
<td>tBodyAccJerkMag-mean()</td>
<td>numeric</td>
<td>The mean of the accelerometer body jerk acceleration Mag signal measured</td>
</tr>
<tr>
<td>54<td>
<td>tBodyGyroMag-mean()</td>
<td>numeric</td>
<td>The mean of the gyroscope body angular velocity Mag signal measured</td>
</tr>
<tr>
<td>55<td>
<td>tBodyGyroJerkMag-mean()</td>
<td>numeric</td>
<td>The mean of the gyroscope body jerk angular velocity Mag signal measured</td>
</tr>
<tr>
<td>56<td>
<td>fBodyAcc-mean()-X</td>
<td>numeric</td>
<td>The mean of the fast fourier transformed accelerometer body signal measured along the X axis</td>
</tr>
<tr>
<td>57<td>
<td>fBodyAcc-mean()-Y</td>
<td>numeric</td>
<td>The mean of the fast fourier transformed accelerometer body signal measured along the Y axis</td>
</tr>
<tr>
<td>58<td>
<td>fBodyAcc-mean()-Z</td>
<td>numeric</td>
<td>The mean of the fast fourier transformed accelerometer body signal measured along the Z axis</td>
</tr>
<tr>
<td>59<td>
<td>fBodyAccJerk-mean()-X</td>
<td>numeric</td>
<td>The mean of the fast fourier transformed accelerometer body jerk signal measured along the X axis</td>
</tr>
<tr>
<td>60<td>
<td>fBodyAccJerk-mean()-Y</td>
<td>numeric</td>
<td>The mean of the fast fourier transformed accelerometer body jerk signal measured along the Y axis</td>
</tr>
<tr>
<td>61<td>
<td>fBodyAccJerk-mean()-Z</td>
<td>numeric</td>
<td>The mean of the fast fourier transformed accelerometer body jerk signal measured along the Z axis</td>
</tr>
<tr>
<td>62<td>
<td>fBodyGyro-mean()-X</td>
<td>numeric</td>
<td>The mean of the fast fourier transformed gyroscope body signal measured along the X axis</td>
</tr>
<tr>
<td>63<td>
<td>fBodyGyro-mean()-Y</td>
<td>numeric</td>
<td>The mean of the fast fourier transformed gyroscope body signal measured along the Y axis</td>
</tr>
<tr>
<td>64<td>
<td>fBodyGyro-mean()-Z</td>
<td>numeric</td>
<td>The mean of the fast fourier transformed gyroscope body signal measured along the Z axis</td>
</tr>
<tr>
<td>65<td>
<td>fBodyAccMag-mean()</td>
<td>numeric</td>
<td>The mean of the fast fourier transformed accelerometer Mag body signal measured</td>
</tr>
<tr>
<td>66<td>
<td>fBodyAccJerkMag-mean()</td>
<td>numeric</td>
<td>The mean of the fast fourier transformed accelerometer Mag body jerk signal measured</td>
</tr>
<tr>
<td>67<td>
<td>fBodyGyroMag-mean()</td>
<td>numeric</td>
<td>The mean of the fast fourier transformed gyroscope Mag body signal measured</td>
</tr>
<tr>
<td>68<td>
<td>fBodyGyroJerkMag-mean()</td>
<td>numeric</td>
<td>The mean of the fast fourier transformed gyroscope Mag body jerk signal measured</td>
</tr>
</table>