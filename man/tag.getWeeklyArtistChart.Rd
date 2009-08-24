\name{tag.getWeeklyArtistChart}
\alias{tag.getWeeklyArtistChart}

\title{API call to tag.getWeeklyArtistChart} \description{API call to tag.getWeeklyArtistChart}

\usage{
tag.getWeeklyArtistChart(tag, from = NA, to = NA, limit = NA,
key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tag}{tag}
  \item{from}{see \code{\link{tag.getWeeklyChartList}}}
  \item{to}{see \code{\link{tag.getWeeklyChartList}}}
  \item{limit}{How many items to return?}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
  If parse = TRUE,
  \item{artist}{artist}
  \item{artmbid}{artist mbid}
  \item{weight}{Weighting factor}
  
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=358}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
dates = tag.getWeeklyChartList("jazz")
tag.getWeeklyArtistChart("jazz", from = dates[1,1], to = dates[1,2])$artist[1]
#[1] "Amy Winehouse"
}
