\name{venue.getPastEvents}
\alias{venue.getPastEvents}

\title{API call to venue.getPastEvents} \description{API call to venue.getPastEvents}

\usage{
venue.getPastEvents(venueid, page = NA, limit = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{venueid}{venue ID. see \code{link{venue.search}}}
  \item{page}{page number}
  \item{limit}{maximum number to return}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{title}{event name} 
  \item{headliner}{headliner}
  \item{eventid}{event ID}
  
  If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=395}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{

#From API documentation
venue.getPastEvents(8908030)
}

