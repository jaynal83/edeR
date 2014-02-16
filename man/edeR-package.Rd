\name{edeR}
\alias{edeR}
\docType{package}
\title{
Email data extraction using R
}
\description{
This package allows user to connect with Gmail server through IMAP and extract email header information
from, to, cc, subject, and datetime. User can extract email data from any specific folder or label using the argument \code{folder}.
To access "Drafts" and "Sent Mail" we need to input the argument as "[Gmail]/Drafts" and "[Gmail]/Sent Mail". Moreover user can search email with specific keyword in subject line or in emiail body message.
}
\details{
\tabular{ll}{
Package: \tab edeR\cr
Type: \tab Package\cr
Depends: \tab rJava, rjson, rJython\cr
System dependency: \tab Java runtime environment\cr
Version: \tab 1.0.0\cr
Date: \tab 2014-01-30\cr
License: \tab GPL-2\cr
}
%~~ An overview of how to use the package, including the most important functions ~~
}
\author{
Jaynal Abedin

Maintainer: Jaynal Abedin <joystatru@gmail.com>
}
\keyword{ package }
\examples{
# Extract maximum 5 emails from TSG folder
dat1 <- edeR:::extractMbox(username="emaildataextraction@gmail.com",
                    password="emaildataextractionusingr",
                    folder="TSG",
                    nmail=5)

# To extract maximum of 5 emails from inbox between June 6, 2013 to June 6, 2013
dat2 <- edeR:::extractBetween(username="emaildataextraction@gmail.com",
                       password="emaildataextractionusingr",
                       folder="inBoX",
                       startDate="06-Jun-2013",
                       endDate="06-Jun-2013",
                       nmail=5)

# To extract maximum 5 emails with the word "predictive" within subject line
dat3 <-edeR:::extractKeyword(username="emaildataextraction@gmail.com",
                      password="emaildataextractionusingr",
                      kw="predictive",
                      nmail=5)       
# To extract maximum 5 emails with the word "predictive" within body message
dat4 <-edeR:::extractKeywordB(username="emaildataextraction@gmail.com",
                       password="emaildataextractionusingr",
                       kw="predictive",
                       nmail=5)
}
