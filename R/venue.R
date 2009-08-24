#calls to venue.*

#NO PARSE
venue.search = function(venue, limit = NA, page = NA, country=NA,
  key = lastkey, parse = TRUE){
  
  params = list(method="venue.search", venue=venue,
    limit=limit, page=page,
    country=country, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]

  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.venue.search(doc)

  return(doc)
}

venue.getEvents = function(venueid, key = lastkey, parse = TRUE){
  
  params = list(method="venue.getevents", venue=venueid,
    api_key=key)

  params = params[!as.logical(lapply(params, is.na))]

  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.venue.getevents(doc)

  return(doc)
}

venue.getPastEvents = function(venueid, page=NA, limit=NA,
  key = lastkey, parse = TRUE){
  
  params = list(method="venue.getpastevents", venue=venueid,
    page=page, limit=limit,
    api_key=key)

  params = params[!as.logical(lapply(params, is.na))]

  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.venue.getpastevents(doc)

  return(doc)
}

