\name{extractMbox}
\alias{extractMbox}
\title{
is extracts emails from specified folder
}
\description{
This function extracts email data from a specified folder
}
\usage{
extractMbox(username, password, folder, nmail = -1)
}
\arguments{
  \item{username}{
 is the character string of email address for example, "xxx@gmail.com"
}
  \item{password}{
 is the character string of password of the email address for example "xyz123"
}
  \item{folder}{
 is the character string of specific folder or label name from where the email data will be extracted
}
  \item{nmail}{
 is the number of emails to extract, default is all emails (\code{nmail=-1})
}
}
\details{
This function allow users to extract email data from specified folder. By default this function will extract all available email
from the specified folder but user can restrict number of emails to extract using \code{nmail}.
}
\value{
 \item{n_message}{Number of available email in the specified folder}
 \item{data}{The extracted data frame with the field unique id (uid), sender (from), receiver either direct or cc'd (to), 
  subject of mail (subj), time stamp (datetime)}
}
\references{
%Right now no reference
}
\author{
Jaynal Abedin
}
\note{
To extract "Sent Mail", the argument is \code{folder="[Gmal]/Sent Mail"}
}

\seealso{
\code{\link{extractBetween}}
}
\examples{
# Extract maximum 5 emails from TSG folder
dat<-extractMbox(username="emaildataextraction@gmail.com",
                 password="emaildataextractionusingr",
                 folder="TSG",
                 nmail=5)
}

