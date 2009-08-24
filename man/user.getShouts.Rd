\name{user.getShouts}
\alias{user.getShouts}

\title{API call to user.getShouts} \description{API call to user.getShouts}
\usage{
user.getShouts(username, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{username}{username}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}
\value{
If parse = TRUE,
  \item{username}{username of shouter}
  \item{body}{body of shout}
  \item{date}{date of shout}
  
  If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=401}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{

user.getShouts("monkeycatfm")$body[1]
#[1] "so.... you have amazing music tastes and you like to cook. marry me :)"
}
