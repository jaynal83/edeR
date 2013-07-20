\name{extractBetween}
\alias{extractBetween}
\title{
is to extract eamil between date range
}
\description{
This function extracts email data from a specified folder with given date range.
}
\usage{
extractBetween(username, password, folder, startDate, endDate, nmail = -1)
}
\arguments{
  \item{username}{
 is the character string of email address for example, "xxx@gmail.com"
}
  \item{password}{
 is the character string of password of the email address for example "xyz123"
}
  \item{folder}{
 is the specific folder or label name from where the user wants to extract email data
}
  \item{startDate}{
 is the starting date ("DD-MM-YYYY" e.g "06-Jun-2013") of interest of the date range
}
  \item{endDate}{
 is the end date ("DD-MM-YYYY" e.g. "06-Jun-2013" )of interest of the date range
}
  \item{nmail}{
 is the number of emails to extract, default is all emails (\code{nmail=-1})
}
}
\details{
This function is able to extract emails from any specified folder but to extract "Sent Mail" or "Drafts" we have to specify
the argument little differently. To extract "Sent Mail", the argument is \code{folder="[Gmal]/Sent Mail"}
}
\value{
 \item{n_message}{Number of available email in the specified folder}
 \item{data}{The extracted data frame with the field unique id (uid), sender (from), receiver either direct or cc'd (to), 
  subject of mail (subj), time stamp (datetime)}
}
\references{
%right now no reference
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
dat <-extractBetween(username="emaildataextraction@gmail.com",
                     password="emaildataextractionusingr",
                     folder="INBOX",
                     startDate="06-Jun-2013",
                     endDate="06-Jun-2013",
                     nmail=5)}
