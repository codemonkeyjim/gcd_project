# 1. Merge the training and the test sets to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for each
# measurement.
# 3. Use descriptive activity names to name the activities in the data set
# 4. Appropriately label the data set with descriptive variable names. 
# 5. From the data set in step 4, create a second, independent tidy data set
# with the average of each variable for each activity and each subject.

# Change this to the root directory of the dataset
data.root.dir <- './UCI HAR Dataset/'

# Read the data set descriptors
feature.names <- make.names(read.table(file.path(data.root.dir, 'features.txt'), stringsAsFactors = FALSE)[,2])
activity.names <- read.table(file.path(data.root.dir, 'activity_labels.txt'))

# Read the test data set
test.data <- read.table(file.path(data.root.dir, 'test', 'X_test.txt'))
names(test.data) <- feature.names

test.activities <- read.table(file.path(data.root.dir, 'test', 'Y_test.txt'))[,1]
test.activities <- factor(test.activities, levels = activity.names[,1], labels = activity.names[,2])

test.subjects <- read.table(file.path(data.root.dir, 'test', 'subject_test.txt'))[,1]

test.data <- cbind(activity = test.activities, subject = test.subjects, test.data)

# Read the train data set
train.data <- read.table(file.path(data.root.dir, 'train', 'X_train.txt'))
names(train.data) <- feature.names

train.activities <- read.table(file.path(data.root.dir, 'train', 'Y_train.txt'))[,1]
train.activities <- factor(train.activities, levels = activity.names[,1], labels = activity.names[,2])

train.subjects <- read.table(file.path(data.root.dir, 'train', 'subject_train.txt'))[,1]

train.data <- cbind(activity = train.activities, subject = train.subjects, train.data)

# Merge test and train
data.set <- rbind(test.data, train.data)
data.set$subject <- factor(data.set$subject)

# Determine names of columns to keep
# Using '[.]' to match a literal period, since R complained about '\.'
keep_cols = grep("[.](mean|std)[.]{2}([.][XYZ])?", names(data.set))

# Keep the activity and subject columns too
data.set <- data.set[,c(1, 2, keep_cols)]

# Rename the columns as measurement(axis).function
