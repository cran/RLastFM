\name{library.getTracks}
\alias{library.getTracks}

\title{API call to library.getTracks} \description{API call to library.getTracks}

\usage{
library.getTracks(username, limit = NA, page = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{username}{Username, in quotes}
  \item{limit}{Number of albums to return. Default/max = 50.}
  \item{page}{Page number to start, given limit per page.}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
  If parse = TRUE,
  \item{track}{track name}
  \item{artist}{artist name}
  \item{playcount}{track playcount}
  \item{artmbid}{artist mbid}
 If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"

}
\references{http://www.last.fm/api/show?service=323}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling errors.
}

%\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
\examples{
library.getTracks("monkeycatfm")[1]
#[1] "Intro"

library.getTracks("monkeycatfm")[1]
#[1] 69
}
