\name{event.getShouts}
\alias{event.getShouts}

\title{API call to event.getShouts} \description{API call to event.getShouts}

\usage{
event.getShouts(event, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{event}{Event ID. Can be found using artist.getEvents. See example.}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{username}{Username}
  \item{body}{Body of shout}
  \item{date}{Date of shout}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"}
\references{http://www.last.fm/api/show?service=399}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{Not very many people have left shouts for events, so it has been hard to find and example that works.}

\examples{

res = event.getShouts("1039365")
}

