#calls to track.*

track.getInfo = function(track = NA, artist = NA, mbid = NA, key = lastkey, parse = TRUE){
  params = list(method = "track.getinfo", track = track, artist = artist,
    mbid = mbid, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.track.getinfo(doc)

  return(doc)
}

track.getSimilar = function(track = NA, artist = NA, mbid = NA, key = lastkey, parse = TRUE){
  params = list(method = "track.getsimilar", track = track, artist = artist,
    mbid = mbid, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.track.getsimilar(doc)

  return(doc)
}

track.getTopFans = function(track = NA, artist = NA, mbid = NA, key = lastkey, parse = TRUE){
  params = list(method = "track.gettopfans", track = track, artist = artist,
    mbid = mbid, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.track.gettopfans(doc)

  return(doc)
}

track.getTopTags = function(track = NA, artist = NA, mbid = NA, key = lastkey, parse = TRUE){
  params = list(method = "track.gettoptags", track = track, artist = artist,
    mbid = mbid, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.track.gettoptags(doc)

  return(doc)
}

track.search = function(track, artist = NA,  limit = NA,
  page = NA, key = lastkey, parse = TRUE){
  
  params = list(method="track.search", track = track,
    artist = artist, limit = limit, page=page, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]

  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.track.search(doc)

  return(doc)
}

