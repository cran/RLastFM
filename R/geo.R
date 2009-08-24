#geo.* calls

geo.getTopArtists = function(country, key = lastkey, parse = TRUE){
  
  params = list(method="geo.gettopartists", country = country,
    api_key=lastkey)
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.geo.gettopartists(doc)

  return(doc)
}

geo.getTopTracks = function(country, key = lastkey, parse = TRUE){
  
  params = list(method="geo.gettoptracks", country = country,
    location = NA, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.geo.gettoptracks(doc)

  return(doc)
}

geo.getEvents = function(location = NA, lat = NA,
 long = NA, page = NA, distance = NA, key = lastkey, parse = TRUE){
  
  params = list(method = "geo.getevents", location=location,
    lat=lat, long=long, page=page,distance=distance, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.geo.getevents(doc)

  return(doc)
}

