\name{user.getLovedTracks}
\alias{user.getLovedTracks}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{API call to user.getLovedTracks} \description{API call to user.getLovedTracks}
\usage{
user.getLovedTracks(username, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{username}{username}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}
\value{
If parse = TRUE,
  \item{track}{track title}
  \item{lovedate}{date of "love"}
  \item{artist}{artist}
  \item{artmbid}{artist mbid}  
  
  If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=329}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{

user.getLovedTracks("monkeycatfm")
}
