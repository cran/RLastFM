#calls to group.*

group.getMembers = function(group, key = lastkey, parse = TRUE){
  
  params = list(method="group.getmembers", group = group,
    api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
        
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.group.getmembers(doc)

  return(doc)
}

group.getWeeklyChartList = function(group, key = lastkey, parse = TRUE){
  
  params = list(method = "group.getweeklychartlist", group=group,
    api_key=key)
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.group.getweeklychartlist(doc)

  return(doc)
}

group.getWeeklyArtistChart = function(group, from = NA, to = NA,
  key = lastkey, parse = TRUE){
  
  params = list(method = "group.getweeklyartistchart", group=group,
    from = from, to = to, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.group.getweeklyartistchart(doc)

  return(doc)
}

group.getWeeklyTrackChart = function(group, from = NA, to = NA,
  key = lastkey, parse = TRUE){
  
  params = list(method = "group.getweeklytrackchart", group=group,
    from = from, to = to, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.group.getweeklytrackchart(doc)

  return(doc)
}

#NO PARSE
group.getWeeklyAlbumChart = function(group, from = NA, to = NA,
  key = lastkey){
  
  params = list(method = "group.getweeklyalbumchart", group=group,
    from = from, to = to, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)
}

