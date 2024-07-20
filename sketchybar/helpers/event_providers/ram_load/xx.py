
import matplotlib.pyplot as plt
import polars 


# Step 1: Load and Parse Data
file_path = '~/datasets/history.txt'
data = polars.read_csv(file_path, has_header=False, separator='\t', columns=['datetime'])

# Parse datetime
data = data.with_column(polars.col('datetime').str.strptime(polars.Datetime, format="%Y-%m-%d %H:%M:%S"))

# Step 2: Aggregate Activity by Hour
data = data.with_column(polars.col('datetime').dt.truncate('1h').alias('hour'))
activity_by_hour = data.groupby('hour').agg(polars.count()).rename({'count': 'activity'})

# Step 3: Define Awake and Sleep Periods
# Assuming inactivity for more than 2 hours indicates sleep
activity_by_hour = activity_by_hour.with_column((polars.col('activity') > 0).cast(polars.Int32).alias('awake'))
activity_by_hour = activity_by_hour.with_column((polars.col('awake').cumsum() * polars.col('awake')).alias('awake_period'))

# Define sleep periods as inverses of awake periods
activity_by_hour = activity_by_hour.with_column(polars.col('awake').reverse().cumsum().reverse().cast(polars.Int32).alias('sleep_period'))

# Convert to Pandas for visualization
activity_by_hour_df = activity_by_hour.to_pandas()

# Step 4: Visualize Data
plt.figure(figsize=(15, 5))
plt.plot(activity_by_hour_df['hour'], activity_by_hour_df['activity'], label='Activity')
plt.fill_between(activity_by_hour_df['hour'], activity_by_hour_df['awake'] * activity_by_hour_df['activity'].max(), 
                 color='blue', alpha=0.3, label='Awake')
plt.fill_between(activity_by_hour_df['hour'], (1 - activity_by_hour_df['awake']) * activity_by_hour_df['activity'].max(), 
                 color='red', alpha=0.3, label='Asleep')
plt.xlabel('Hour')
plt.ylabel('Activity Count')
plt.legend()
plt.title('Awake and Sleep Periods Over Last Month')
plt.show()