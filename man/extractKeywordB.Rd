\name{extractKeywordB}
\alias{extractKeywordB}
\title{
Extracts email with specified keyword in the email body text
}
\description{
This function extracts email data with specific keyword in the body message
}
\usage{
extractKeywordB(username, password, kw, nmail = -1)
}
\arguments{
  \item{username}{
 A character string of email address for example, "xxx@gmail.com"
}
  \item{password}{
 A character string of password of the email address for example "xyz123"
}
  \item{kw}{
 A character string of specific keyword that will be searched within subject line
}
  \item{nmail}{
 An integer for the number of emails to extract, default is all emails (\code{nmail=-1})
}
}
\details{
Extracts emails matching the exact keyword \code{kw} in the body message
}
\value{
 \item{n_message}{Number of available email in the specified folder}
 \item{data}{The extracted data frame with the field unique id (uid), sender (from), receiver either direct or cc'd (to), 
  subject of mail (subj), time stamp (datetime)}
}
\author{
Jaynal Abedin
}

\seealso{
\code{\link{extractKeyword}}
}
\examples{
\donotrun{
# To extract maximum 5 emails with the word "keyword" within body message
dat <-extractKeywordB(username="username@gmail.com",
                      password="password",
                      kw="keyword",
                      nmail=5)
 }
}
