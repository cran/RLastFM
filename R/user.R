#calls to user.*

user.getEvents = function(username, key = lastkey, parse = TRUE){
  
  params = list(method = "user.getevents", user=username,
    api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.user.getevents(doc)

  return(doc)
}

user.getFriends = function(username, recenttracks = NA,
  limit = NA, key = lastkey, parse = TRUE){
  
  params = list(method = "user.getfriends", user=username,
    recenttracks = recenttracks, limit = limit, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

    if(parse)
    doc = p.user.getfriends(doc)

  return(doc)
}

user.getLovedTracks = function(username, key = lastkey, parse = TRUE){
  
  params = list(method = "user.getlovedtracks", user=username,
    api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.user.getlovedtracks(doc)

  return(doc)
}

user.getNeighbours = function(username, limit=NA, key = lastkey, parse = TRUE){
  
  params = list(method = "user.getneighbours", user=username,
    limit = limit, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.user.getneighbours(doc)

  return(doc)
}

#NO PARSE
user.getPastEvents = function(username, page = NA, limit = NA,
  key = lastkey){
  
  params = list(method = "user.getpastevents", user=username,
    page=page, limit = limit, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)
}

#NO PARSE
user.getPlaylists = function(username, key = lastkey){
  
  params = list(method = "user.getplaylists", user=username,
    api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)
}

user.getRecentTracks = function(username, limit=NA, key = lastkey, parse = TRUE){
  
  params = list(method = "user.getrecenttracks", user=username,
    limit = limit, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.user.getrecenttracks(doc)

  return(doc)
}

user.getShouts = function(username, key = lastkey, parse = TRUE){
  
  params = list(method = "user.getshouts", user=username,
    api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.user.getshouts(doc)

  return(doc)
}

user.getTopTags = function(username, limit = NA, key = lastkey, parse = TRUE){
  
  params = list(method = "user.gettoptags", user=username,
    limit = limit, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.user.gettoptags(doc)

  return(doc)
}

user.getTopArtists = function(username, period=NA, key = lastkey, parse = TRUE){
  
  params = list(method = "user.gettopartists", user=username,
    period = period, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.user.gettopartists(doc)

  return(doc)
}

user.getTopAlbums = function(username, limit=NA, key = lastkey, parse = TRUE){
  
  params = list(method = "user.gettopalbums", user=username,
    limit = limit, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.user.gettopalbums(doc)

  return(doc)
}

user.getTopTracks = function(username, period=NA, key = lastkey, parse = TRUE){
  
  params = list(method = "user.gettoptracks", user=username,
    period = period, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.user.gettoptracks(doc)

  return(doc)
}

user.getWeeklyChartList = function(username, key = lastkey, parse = TRUE){
  
  params = list(method = "user.getweeklychartlist", user=username,
    api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.user.getweeklychartlist(doc)

  return(doc)
}


user.getWeeklyAlbumChart = function(username, from = NA, to = NA,
  key = lastkey, parse=TRUE){
  
  params = list(method = "user.getweeklyalbumchart", user=username,
    from = from, to = to, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

    if(parse)
    doc = p.user.getweeklyalbumchart(doc)

  return(doc)

}

user.getWeeklyArtistChart = function(username, from = NA, to = NA,
  key = lastkey, parse = TRUE){
  
  params = list(method = "user.getweeklyartistchart", user=username,
    from = from, to = to, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.user.getweeklyartistchart(doc)

  return(doc)
}

user.getWeeklyTrackChart = function(username, from = NA, to = NA,
  key = lastkey, parse = TRUE){
  
  params = list(method = "user.getweeklytrackchart", user=username,
    from = from, to = to, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.user.getweeklytrackchart(doc)

  return(doc)
}

