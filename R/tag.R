#calls to tag.*

tag.getSimilar = function(tag, key = lastkey, parse = TRUE){
  
  params = list(method = "tag.getsimilar", tag = tag,
    api_key=lastkey)
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.tag.getsimilar(doc)

  return(doc)
}

tag.getTopAlbums = function(tag, key = lastkey, parse = TRUE){
  
  params = list(method = "tag.gettopalbums", tag = tag,
    api_key=lastkey)
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.tag.gettopalbums(doc)

  return(doc)
}

tag.getTopArtists = function(tag, key = lastkey, parse = TRUE){
  
  params = list(method = "tag.gettopartists", tag = tag,
    api_key=lastkey)
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.tag.gettopartists(doc)

  return(doc)
}

tag.getTopTags = function(tag, key = lastkey, parse = TRUE){
  
  params = list(method="tag.gettoptags", tag = tag, api_key=lastkey)
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.tag.gettoptags(doc)

  return(doc)
}

tag.getTopTracks = function(tag, key = lastkey, parse = TRUE){
  
  params = list(method = "tag.gettoptracks", tag = tag,
    api_key=lastkey)
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.tag.gettoptracks(doc)

  return(doc)
}

tag.getWeeklyChartList = function(tag, key = lastkey, parse = TRUE){
  
  params = list(method = "tag.getweeklychartlist", tag = tag,
    api_key = lastkey)
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.tag.getweeklychartlist(doc)

  return(doc)
}

tag.getWeeklyArtistChart = function(tag, from = NA, to = NA,
  limit = NA, key = lastkey, parse = TRUE){
  
  params = list(method = "tag.getweeklyartistchart", tag = tag,
    from = from, to = to, limit = limit, api_key = lastkey)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.tag.getweeklyartistchart(doc)

  return(doc)
}

tag.search = function(tag, key = lastkey, parse = TRUE){
  
  params = list(method = "tag.search", tag = tag,
    api_key=lastkey)
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

    if(parse)
    doc = p.tag.search(doc)

  return(doc)

}
