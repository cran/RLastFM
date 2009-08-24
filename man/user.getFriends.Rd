\name{user.getFriends}
\alias{user.getFriends}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{API call to user.getFriends} \description{API call to user.getFriends}
\usage{
user.getFriends(username, recenttracks = NA, limit = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{username}{username}
  \item{recenttracks}{get recent tracks? takes "true" as an option to
    return. Not implemented}
  \item{limit}{limit to return}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{username}{usernames}
  \item{realname}{real names of users}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=263}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{

user.getFriends("monkeycatfm")$username[1]
#[1] "njlinesch"

}
