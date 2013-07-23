\name{extractKeyword}
\alias{extractKeyword}
\title{
Extracts email with specified keyword in the subject line
}
\description{
This function email data with specific keyword in the subject line
}
\usage{
extractKeyword(username, password, kw, nmail = -1)
}
\arguments{
  \item{username}{
 is the character string of email address for example, "xxx@gmail.com"
}
  \item{password}{
 is the character string of password of the email address for example "xyz123"
}
  \item{kw}{
 is the character string of specific keyword that will be searched within subject line
}
  \item{nmail}{
 is the number of emails to extract, default is all emails (\code{nmail=-1})
}
}
\details{
Extracts emails with exact keyword \code{kw} in the subject line
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
%Need to include not if any
}

\seealso{
\code{\link{extractKeywordB}}
}
\examples{
# To extract maximum 5 emails with the word "predictive" within subject line
dat <-extractKeyword(username="emaildataextraction@gmail.com",
                     password="emaildataextractionusingr",
                     kw="predictive",
                     nmail=5)
}
