\name{venue.search}
\alias{venue.search}

\title{API call to venue.search} \description{API call to venue.search}

\usage{
venue.search(venue, limit = NA, page = NA, country = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{venue}{venue search term}
  \item{limit}{limit to return per page}
  \item{page}{page number, see limit}
  \item{country}{Limit to a country. Use 2/3 letter country codes}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{name}{venue name} 
  \item{street}{venue street address}
  \item{city}{venue city}
  \item{country}{venue country}
  \item{lat}{venue latitude}
  \item{long}{venue longitude}
  \item{id}{venue ID}  
  If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=396}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{

venue.search("Spaceland", country = "US")
}
