\name{tag.getWeeklyChartList}
\alias{tag.getWeeklyChartList}

\title{API call to tag.getWeeklyChartList} \description{API call to tag.getWeeklyChartList}

\usage{
tag.getWeeklyChartList(tag, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tag}{tag}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
a 2 column matrix containing values for from and to. Can be passed to
other tag.getWeeklyArtistChart functions by indexing into matrix.
}
\references{http://www.last.fm/api/show?service=359}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
dates = tag.getWeeklyChartList("jazz")
tag.getWeeklyArtistChart("jazz", from = dates[1,1], to = dates[1,2])$artist[1]
#[1] "Amy Winehouse"
}
