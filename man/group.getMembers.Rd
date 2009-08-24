\name{group.getMembers}
\alias{group.getMembers}

\title{API call to group.getMembers} \description{API call to group.getMembers}

\usage{
group.getMembers(group, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{group}{name of a group, in quotes}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{username}{usernames}
  \item{realname}{real names}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=379}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling errors.
}


\examples{

res = group.getMembers("jazz")

#res$username[1]
#[1] "ornithoptera_"

}
