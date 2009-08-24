p.alb.getinfo = function(a){
  list(album = xpathSApply(a, "//album/name", xmlValue), artist = xpathSApply(a, "//artist", xmlValue),
       mbid = xpathSApply(a, "//mbid", xmlValue),
       releasedate = gsub(" +([0-9]+ .+ [0-9]{4}), .+", "\\1", xpathSApply(a, "//releasedate", xmlValue)),
       listeners = as.numeric(xpathSApply(a, "//listeners", xmlValue)),
       playcount = as.numeric(xpathSApply(a, "//playcount", xmlValue))
       )
}

p.alb.search = function(a){
  list(album = xpathSApply(a, "//name", xmlValue),
       artist = xpathSApply(a, "//artist", xmlValue))
}

#get artists into lists
p.art.getevents = function(a){
  list(name = xpathSApply(a, "//events/event/title", xmlValue),
       id = xpathSApply(a, "//events/event/id", xmlValue),
       date = xpathSApply(a, "//events/event/startDate", xmlValue),
       headliner = xpathSApply(a, "//events/event/artists/headliner", xmlValue),
       venue = xpathSApply(a, "//events/event/venue/name", xmlValue),
       city = xpathSApply(a, "//events/event/venue/location/city", xmlValue),
       zip = xpathSApply(a, "//events/event/venue/location/postalcode", xmlValue),
       lat = as.numeric(xpathSApply(a, "//events/event/venue/location/geo:point/geo:lat", xmlValue,
         namespaces = c("geo" = "http://www.w3.org/2003/01/geo/wgs84_pos#"))),
       long = as.numeric(xpathSApply(a, "//events/event/venue/location/geo:point/geo:long", xmlValue,
         namespaces = c("geo" = "http://www.w3.org/2003/01/geo/wgs84_pos#"))),
#       artists = xpathApply(a, "//events/event/artists/artist", xmlValue)
       artists = xpathApply(a, "//events/event", function(x) xpathSApply(x, "./artists/artist", xmlValue))       
       )
}

p.art.getinfo = function(a){
  list(artist = xpathSApply(a, "/lfm/artist/name", xmlValue),
       mbid = xpathSApply(a, "/lfm/artist/mbid", xmlValue),
       listeners = as.numeric(xpathSApply(a, "//listeners", xmlValue)),
       playcount = as.numeric(xpathSApply(a, "//playcount", xmlValue)),
       similar = xpathSApply(a, "//artist/similar/artist/name", xmlValue))
}

p.art.getshouts = function(a){
  list(username = xpathSApply(a, "//shout/author", xmlValue),
       shout = xpathSApply(a, "//shout/body", xmlValue),
       date = xpathSApply(a, "//shout/date", xmlValue))
}



p.art.getsimilar = function(a){
  list(name = xpathSApply(a, "//artist/name", xmlValue),
       mbid = xpathSApply(a, "//artist/mbid", xmlValue),
       match = as.numeric(xpathSApply(a, "///artist/match", xmlValue)))
}

p.art.gettopalbums = function(a){
  list(album = xpathSApply(a, "//album/name", xmlValue),
       mbid = xpathSApply(a, "//album/mbid", xmlValue),
       playcount = as.numeric(xpathSApply(a, "//album/playcount", xmlValue)),
       rank = as.numeric(xpathSApply(a, "//album[@rank]", xmlAttrs)))
}

p.art.gettopfans = function(a){
  list(username = xpathSApply(a, "//user/name", xmlValue),
       weight = as.numeric(xpathSApply(a, "//user/weight", xmlValue)))
}

p.art.gettoptags = function(a){
  list(tag = xpathSApply(a, "//tag/name", xmlValue),
       count = as.numeric(xpathSApply(a, "//tag/count", xmlValue)))
}

p.art.gettoptracks = function(a){
  list(track = xpathSApply(a, "//lfm/toptracks/track/name", xmlValue),
       playcount = as.numeric(xpathSApply(a, "//track/playcount", xmlValue)),
       rank = as.numeric(xpathSApply(a, "//lfm/toptracks/track[@rank]", xmlAttrs)))
}

p.art.search = function(a){
  list(artist = xpathSApply(a, "//name", xmlValue),
       mbid = xpathSApply(a, "//mbid", xmlValue))
}


# get artists into list
p.event.getinfo = function(a){
 list(event = xpathSApply(a, "//event/title", xmlValue),
      headliner = xpathSApply(a, "//event/artists/headliner", xmlValue),
      #artist = list(xpathSApply(a, "//event/artists/artist", xmlValue)),
      venue = xpathSApply(a, "//event/venue/name", xmlValue),
      street = xpathSApply(a, "//event/venue/location/street", xmlValue),
      city = xpathSApply(a, "//event/venue/location/city", xmlValue),
      postalcode = xpathSApply(a, "//event/venue/location/postalcode", xmlValue),
      country = xpathSApply(a, "//event/venue/location/country", xmlValue),
      lat = as.numeric(xpathSApply(a, "//event/venue/location/geo:point/geo:lat", xmlValue,
        namespaces = c("geo" = "http://www.w3.org/2003/01/geo/wgs84_pos#"))),
      long = as.numeric(xpathSApply(a, "//event/venue/location/geo:point/geo:long", xmlValue,
        namespaces = c("geo" = "http://www.w3.org/2003/01/geo/wgs84_pos#"))),
      artists = xpathApply(a, "//event", function(x) xpathSApply(x, "./artists/artist", xmlValue)))
}


p.event.getshouts = function(a){
  list(username = xpathSApply(a, "//shout/author", xmlValue),
       body = xpathSApply(a, "//shout/body", xmlValue),
       date = xpathSApply(a, "//shout/date", xmlValue))
}


p.geo.getevents = function(a){
  list(eventid = xpathSApply(a, "//events/event/id", xmlValue),
       title = xpathSApply(a, "//events/event/title", xmlValue),
       headliner = xpathSApply(a, "//events/event/artists/headliner", xmlValue),
       venue = xpathSApply(a, "//events/event/venue/name", xmlValue),
       venueid = gsub(".+/([0-9]+)$", "\\1",
         xpathSApply(a, "//events/event/venue/url", xmlValue)),
       city = xpathSApply(a, "//events/event/venue/location/city", xmlValue),
       zip = xpathSApply(a, "//events/event/venue/location/postalcode", xmlValue),
       lat = as.numeric(xpathSApply(a, "//events/event/venue/location/geo:point/geo:lat", xmlValue,
         namespaces = c("geo" = "http://www.w3.org/2003/01/geo/wgs84_pos#"))),
       long = as.numeric(xpathSApply(a, "//events/event/venue/location/geo:point/geo:long", xmlValue,
         namespaces = c("geo" = "http://www.w3.org/2003/01/geo/wgs84_pos#"))),
      artists = xpathApply(a, "//event", function(x) xpathSApply(x, "./artists/artist", xmlValue)))
}
  
p.geo.gettopartists = function(a){
  list(artist = xpathSApply(a, "//artist/name", xmlValue),
       playcount = as.numeric(xpathSApply(a, "//artist/playcount", xmlValue)),
       mbid = xpathSApply(a, "//artist/mbid", xmlValue),
       rank = as.numeric(xpathSApply(a, "//artist[@rank]", xmlAttrs)))
}

p.geo.gettoptracks = function(a){
  list(track = xpathSApply(a, "//track/name", xmlValue),
       playcount = as.numeric(xpathSApply(a, "//track/playcount", xmlValue)),
       artist = xpathSApply(a, "//track/artist/name", xmlValue),
       artistmbid = xpathSApply(a, "//track/artist/mbid", xmlValue),
       rank = as.numeric(xpathSApply(a, "//track[@rank]", xmlAttrs)))
}

p.group.getmembers = function(a){
  list(username = xpathSApply(a, "//user/name", xmlValue),
       realname = xpathSApply(a, "//user/realname", xmlValue))
}

p.group.getweeklychartlist = function(a){
    t(xpathSApply(a, "//chart", xmlAttrs))
}

p.group.getweeklyartistchart = function(a){
  list(artist = xpathSApply(a, "//artist/name", xmlValue),
       artmbid = xpathSApply(a, "//artist/mbid", xmlValue),
       playcount = xpathSApply(a, "//artist/playcount", xmlValue))
}

p.group.getweeklytrackchart = function(a){
  list(track = xpathSApply(a, "//track/name", xmlValue),
       artist = xpathSApply(a, "//track/artist", xmlValue),
       artmbid = xpathSApply(a, "//track/artist[@mbid]", xmlAttrs),
       playcount = xpathSApply(a, "//track/playcount", xmlValue))
}


p.lib.getalbums = function(a){
  list(album = xpathSApply(a, "//album/name", xmlValue),
       artist = xpathSApply(a, "//album/artist/name", xmlValue),
       playcount = as.numeric(xpathSApply(a, "//album/playcount", xmlValue)),
       albmbid = xpathSApply(a, "//album/mbid", xmlValue),
       artmbid = xpathSApply(a, "//album/artist/mbid", xmlValue))
}

p.lib.getartists = function(a){
  list(artist = xpathSApply(a, "//artist/name", xmlValue),
       playcount = as.numeric(xpathSApply(a, "//artist/playcount", xmlValue)),
       artmbid = xpathSApply(a, "//artist/mbid", xmlValue))
}

p.lib.gettracks = function(a){
  list(track = xpathSApply(a, "//track/name", xmlValue),
       artist = xpathSApply(a, "//track/artist/name", xmlValue),
       playcount = as.numeric(xpathSApply(a, "//track/playcount", xmlValue)),
       artmbid = xpathSApply(a, "//track/artist/mbid", xmlValue))
}


p.playlist.fetch = function(a){
  list(title = xpathSApply(a, "//x:title", xmlValue,
         namespaces = c("x" = "http://xspf.org/ns/0/"))[-1],
       album = xpathSApply(a, "//x:album", xmlValue,
         namespaces = c("x" = "http://xspf.org/ns/0/")))
}
       

p.tag.getsimilar = function(a){
  list(tag = xpathSApply(a, "//tag/name", xmlValue))
}

p.tag.gettopalbums = function(a){
  list(album = xpathSApply(a, "//album/name", xmlValue),
       artist = xpathSApply(a, "//album/artist/name", xmlValue),
       albmbid = xpathSApply(a, "//album/mbid", xmlValue),
       artmbid = xpathSApply(a, "//album/artist/mbid", xmlValue),
       tagcount = as.numeric(xpathSApply(a, "//album/tagcount", xmlValue)))
}

p.tag.gettopartists = function(a){
  list(artist = xpathSApply(a, "//artist/name", xmlValue),
       tagcount = as.numeric(xpathSApply(a, "//artist/tagcount", xmlValue)),
       artmbid = xpathSApply(a, "//artist/mbid", xmlValue))
}

p.tag.gettoptags = function(a){
  list(tag = xpathSApply(a, "//tag/name", xmlValue),
       count = as.numeric(xpathSApply(a, "//tag/count", xmlValue)))
}

p.tag.gettoptracks = function(a){
  list(track = xpathSApply(a, "//track/name", xmlValue),
       artist = xpathSApply(a, "//track/artist/name", xmlValue),
       tagcount = xpathSApply(a, "//track/tagcount", xmlValue),
       artmbid = xpathSApply(a, "//track/artist/mbid", xmlValue))
}

p.tag.getweeklychartlist = function(a){
    t(xpathSApply(a, "//chart", xmlAttrs))
}

p.tag.getweeklyartistchart = function(a){
  list(artist = xpathSApply(a, "//artist/name", xmlValue),
       artmbid = xpathSApply(a, "//artist/mbid", xmlValue),
       weight = as.numeric(xpathSApply(a, "//artist/weight", xmlValue)))
}

p.tag.search = function(a){
  list(tag = xpathSApply(a, "//tag/name", xmlValue),
       count = as.numeric(xpathSApply(a, "//tag/count", xmlValue)))
}


p.track.getinfo = function(a){
  list(track = xpathSApply(a, "//track/name", xmlValue),
       artist = xpathSApply(a, "//track/artist/name", xmlValue),
       playcount = as.numeric(xpathSApply(a, "//track/playcount", xmlValue)),
       listeners = as.numeric(xpathSApply(a, "//track/listeners", xmlValue)),
       album = xpathSApply(a, "//track/album/title", xmlValue),
       position = as.numeric(xpathSApply(a, "//track/album[@position]", xmlAttrs)),
       duration = as.numeric(xpathSApply(a, "//track/duration", xmlValue)),
       artmbid = xpathSApply(a, "//track/artist/mbid", xmlValue),
       albmbid = xpathSApply(a, "//track/album/mbid", xmlValue),
       id = xpathSApply(a, "//track/id", xmlValue))
}

p.track.getsimilar = function(a){
  list(track = xpathSApply(a, "//track/name", xmlValue),
       artist = xpathSApply(a, "//track/artist/name", xmlValue),
       duration = as.numeric(xpathSApply(a, "//track/duration", xmlValue)),
       match = as.numeric(xpathSApply(a, "//track/match", xmlValue)),
       artmbid = xpathSApply(a, "//track/artist/mbid", xmlValue))
}

p.track.gettopfans = function(a){
  list(username = xpathSApply(a, "//user/name", xmlValue),
       weight = as.numeric(xpathSApply(a, "//user/weight", xmlValue)))
}

p.track.gettoptags = function(a){
  list(tag = xpathSApply(a, "//tag/name", xmlValue),
       count = as.numeric(xpathSApply(a, "//tag/count", xmlValue)))
}

p.track.search = function(a){
  list(track = xpathSApply(a, "//track/name", xmlValue),
       artist = xpathSApply(a, "//track/artist", xmlValue),
       listeners = as.numeric(xpathSApply(a, "//track/listeners", xmlValue)))
}

#untested - don't know anyone with events. Assuming same form as art.getevents
p.user.getevents = function(a){
  list(eventid = xpathSApply(a, "//events/event/id", xmlValue),
       title = xpathSApply(a, "//events/event/title", xmlValue),
       headliner = xpathSApply(a, "//events/event/artists/headliner", xmlValue),
       venue = xpathSApply(a, "//events/event/venue/name", xmlValue),
       city = xpathSApply(a, "//events/event/venue/location/city", xmlValue),
       zip = xpathSApply(a, "//events/event/venue/location/postalcode", xmlValue),
       lat = xpathSApply(a, "//events/event/venue/location/geo:point/geo:lat", xmlValue,
         namespaces = c("geo" = "http://www.w3.org/2003/01/geo/wgs84_pos#")),
       long = xpathSApply(a, "//events/event/venue/location/geo:point/geo:long", xmlValue,
         namespaces = c("geo" = "http://www.w3.org/2003/01/geo/wgs84_pos#")),
       artists = xpathApply(a, "//event", function(x) xpathSApply(x, "./artists/artist", xmlValue))              
       )
}

p.user.getfriends = function(a){
  list(username = xpathSApply(a, "//user/name", xmlValue),
       realname = xpathSApply(a, "//user/realname", xmlValue))
}

p.user.getlovedtracks = function(a){
  list(track = xpathSApply(a, "//track/name", xmlValue),
       lovedate = xpathSApply(a, "//track/date", xmlValue),
       artist = xpathSApply(a, "//track/artist/name", xmlValue),
       artmbid = xpathSApply(a, "//track/artist/mbid", xmlValue))
}

p.user.getneighbours = function(a){
  list(username = xpathSApply(a, "//user/name", xmlValue),
       match = as.numeric(xpathSApply(a, "//user/match", xmlValue)))
}

p.user.getrecenttracks = function(a){
  list(track = xpathSApply(a, "//track/name", xmlValue),
       artist = xpathSApply(a, "//track/artist", xmlValue),
       album = xpathSApply(a, "//track/album", xmlValue),
       artmbid = xpathSApply(a, "//track/artist[@mbid]", xmlAttrs),
       albmbid = xpathSApply(a, "//track/album[@mbid]", xmlAttrs),
       date = xpathSApply(a, "//track/date", xmlValue))
}

p.user.getshouts = function(a){
  list(username = xpathSApply(a, "//shout/author", xmlValue),
       body = xpathSApply(a, "//shout/body", xmlValue),
       date = xpathSApply(a, "//shout/date", xmlValue))
}


p.user.gettopalbums = function(a){
  list(album = xpathSApply(a, "//album/name", xmlValue),
       artist = xpathSApply(a, "//album/artist/name", xmlValue),
       playcount = as.numeric(xpathSApply(a, "//album/playcount", xmlValue)),
       artmbid = xpathSApply(a, "//album/artist/mbid", xmlValue),
       albmbid = xpathSApply(a, "//album/mbid", xmlValue),
       rank = as.numeric(xpathSApply(a, "//album[@rank]", xmlAttrs)))
}

p.user.gettopartists = function(a){
  list(artist = xpathSApply(a, "//artist/name", xmlValue),
       playcount = as.numeric(xpathSApply(a, "//artist/playcount", xmlValue)),
       mbid = xpathSApply(a, "//artist/mbid", xmlValue),
       rank = as.numeric(xpathSApply(a, "//artist[@rank]", xmlAttrs)))
}

p.user.gettoptags = function(a){
  list(tag = xpathSApply(a, "//tag/name", xmlValue),
       count = as.numeric(xpathSApply(a, "//tag/count", xmlValue)))
}

p.user.gettoptracks = function(a){
  list(track = xpathSApply(a, "//track/name", xmlValue),
       artist = xpathSApply(a, "//track/artist/name", xmlValue),
       playcount = as.numeric(xpathSApply(a, "//track/playcount", xmlValue)),
       artmbid = xpathSApply(a, "//track/artist/mbid", xmlValue),
       rank = as.numeric(xpathSApply(a, "//track[@rank]", xmlAttrs)))
}

p.user.getweeklychartlist = function(a){
  t(xpathSApply(a, "//chart", xmlAttrs))
}

p.user.getweeklyalbumchart = function(a){
  list(artist = xpathSApply(a, "//album/artist", xmlValue),
       album = xpathSApply(a, "//album/name", xmlValue),
       albmbid = xpathSApply(a, "//album/mbid", xmlValue),
       playcount = as.numeric(xpathSApply(a, "//album/playcount", xmlValue)))
}


p.user.getweeklyartistchart = function(a){
  list(artist = xpathSApply(a, "//artist/name", xmlValue),
       artmbid = xpathSApply(a, "//artist/mbid", xmlValue),
       playcount = as.numeric(xpathSApply(a, "//artist/playcount", xmlValue)))
}

p.user.getweeklytrackchart = function(a){
  list(track = xpathSApply(a, "//track/name", xmlValue),
       artist = xpathSApply(a, "//track/artist", xmlValue),
       artmbid = xpathSApply(a, "//track/artist[@mbid]", xmlAttrs),
       playcount = as.numeric(xpathSApply(a, "//track/playcount", xmlValue)))
}


p.venue.getevents = function(a){
  list(title = xpathSApply(a, "//event/title", xmlValue),
       headliner = xpathSApply(a, "//event/artists/headliner", xmlValue),
       eventid = xpathSApply(a, "//event/id", xmlValue))
}

p.venue.getpastevents = function(a){
  list(title = xpathSApply(a, "//event/title", xmlValue),
       headliner = xpathSApply(a, "//event/artists/headliner", xmlValue),
       eventid = xpathSApply(a, "//event/id", xmlValue))
}

p.venue.search = function(a){
  list(name = xpathSApply(a, "//venue/name", xmlValue),
       street = xpathSApply(a, "//venue/location/street", xmlValue),
       city = xpathSApply(a, "//venue/location/city", xmlValue),
       country = xpathSApply(a, "//venue/location/country", xmlValue),
       lat = xpathSApply(a, "//venue/location/geo:point/geo:lat", xmlValue,
         namespaces = c("geo" = "http://www.w3.org/2003/01/geo/wgs84_pos#")),
       long = xpathSApply(a, "//venue/location/geo:point/geo:long", xmlValue,
         namespaces = c("geo" = "http://www.w3.org/2003/01/geo/wgs84_pos#")),
       id = xpathSApply(a, "//venue/id", xmlValue))
}
       
