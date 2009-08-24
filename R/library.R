#calls to library*

library.getAlbums = function(username, limit=NA, page=NA, key = lastkey, parse = TRUE){
  params = list(method = "library.getalbums", limit = limit, page = page,
    user = username, api_key=lastkey)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.lib.getalbums(doc)

  return(doc)
}

library.getArtists = function(username, limit=NA, page=NA, key = lastkey, parse = TRUE){
  params = list(method = "library.getartists", limit = limit, page = page,
    user = username, api_key=lastkey)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.lib.getartists(doc)

  return(doc)
}

library.getTracks = function(username, limit=NA, page=NA, key = lastkey, parse = TRUE){
  params = list(method = "library.gettracks", limit = limit, page = page,
    user = username, api_key=lastkey)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.lib.gettracks(doc)

  return(doc)
}

