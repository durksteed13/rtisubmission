import pandas as pandas

# read csv file
fr = pandas.read_csv('flattened_records.csv')

# save csv html to another file


# what is in the data (sample 2 rows)
sampleData = fr.head(2)

# percentage in each workclass
percentWorkClass = fr['workclass'].value_counts(normalize=True)

# percentage over 50k
percentOver50k = fr['over_50k'].value_counts(normalize=True)

# age and education for those over 50k
over50k = fr[fr['over_50k'] == 1]
avgAgeOver50k = over50k['age'].mean()
avgEducOver50k = over50k['education_num'].mean()

# plot education number for those over 50k
eduPlot = over50k['education_num'].value_counts().plot(kind="bar", title="education level for earners over 50k")

# save eduPlot image
fig = eduPlot.get_figure()
fig.savefig('eduPlot')
