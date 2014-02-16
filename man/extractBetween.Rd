\name{extractBetween}
\alias{extractBetween}
\title{
Extracts eamil within given date range
}
\description{
This function extracts email data from a specified folder with given date range
}
\usage{
extractBetween(username, password, folder, startDate, endDate, nmail = -1)
}
\arguments{
  \item{username}{
 A character string of email address for example, "xxx@gmail.com"
}
  \item{password}{
 A character string of password of the email address for example "xyz123"
}
  \item{folder}{
 A character string of folder or label name from where we want to extract email data
}
  \item{startDate}{
 A character starting of date (e.g "06-Jun-2013") of interest of the date range. The format of date should be same as shown in the example, any other format will give error 
}
  \item{endDate}{
 A character string of end date (e.g. "06-Jun-2013")of interest of the date range
}
  \item{nmail}{
 An integer for the number of emails to extract, default is all emails (\code{nmail=-1})
}
}
\details{
This function is able to extract emails from any specified folder within a given date range. To extract "Sent Mail" or "Drafts" we have to specify
the argument differently. To extract "Sent Mail", the argument is \code{folder="[Gmal]/Sent Mail"}
}
\value{
 \item{n_message}{Number of available email in the specified folder}
 \item{data}{The extracted data frame with the field unique id (uid), sender (from), receiver either direct or cc'd (to), 
  subject of mail (subj), time stamp (datetime)}
}
\author{
Jaynal Abedin
}
\note{
To extract "Sent Mail", the argument is \code{folder="[Gmal]/Sent Mail"}
}

\seealso{
\code{\link{extractMbox}}
}
\examples{
# To extract maximum of 5 emails from inbox between June 6, 2013 to June 6, 2013
dat <-edeR:::extractBetween(username="emaildataextraction@gmail.com",
                     password="emaildataextractionusingr",
                     folder="INBOX",
                     startDate="06-Jun-2013",
                     endDate="06-Jun-2013",
                     nmail=5)}
