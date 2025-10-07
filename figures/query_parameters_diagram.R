library(DiagrammeR)

grViz("
digraph boxes_and_circles {

  graph [overlap = true]
  
  node [fontname = Helvetica,
        fontsize = 10]
        
  subgraph {    
  node [shape = rectangle,
  color = cornflowerblue]
  rank = same; 'rivername river'; cityname; }

  node [shape = rectangle,
        fontname = Helvetica,
        fontsize = 8,
        color = thistle]
  query; gl; hl; google_domain; cookies; 'number of results'; results

  subgraph{
  rank = same;
  node [shape = oval, style = filled, fillcolor = orange, fontcolor = white, color = white] 
  'Value Serp'
  
  node [shape = oval, style = filled, color = white, fillcolor = red, fontcolor = white]
  Google }

  'number of results' -> 'Value Serp'
  'query'-> 'Value Serp' [label = 'search query', fontname = Helvetica, fontsize = 8]
  'gl'-> 'Value Serp' [label = 'country', fontname = Helvetica, fontsize = 8]
  'hl'-> 'Value Serp' [label = 'UI language', fontname = Helvetica, fontsize = 8]
  'cookies'-> 'Value Serp' [label = 'no cookies', fontname = Helvetica, fontsize = 8]
  'google_domain'-> 'Value Serp' [label = 'e.g. \\n .com', fontname = Helvetica, fontsize = 8]
  'Value Serp' -> Google [label = '     webscraping    ',
                        fontname = Helvetica,
                        fontsize = 8]
  'Google' -> 'results'  
  {'rivername river', cityname} -> query [arrowhead = small]
  'rivername river' -> cityname [label = ' AND', color = white, fontname = Helvetica, fontsize = 8]
 } ")

### EN FRANCAIS

grViz("
digraph boxes_and_circles {

  graph [overlap = true]
  
  node [fontname = Helvetica,
        fontsize = 10]
        
  subgraph {    
  node [shape = rectangle,
  color = cornflowerblue]
  rank = same; rivière; ville; }

  node [shape = rectangle,
        fontname = Helvetica,
        fontsize = 8,
        color = thistle]
  requête; pays; langue; 'domaine Google'; cookies; 'nombre de pages'; résultats

  subgraph{
  rank = same;
  node [shape = oval, style = filled, fillcolor = orange, fontcolor = white, color = white] 
  'Value Serp'
  
  node [shape = oval, style = filled, color = white, fillcolor = red, fontcolor = white]
  Google }

  'nombre de pages' -> 'Value Serp'
  'requête'-> 'Value Serp' 
  'pays'-> 'Value Serp' 
  'langue'-> 'Value Serp' 
  'cookies'-> 'Value Serp' 
  'domaine Google'-> 'Value Serp' 
  'Value Serp' -> Google [label = '     webscraping    ',
                        fontname = Helvetica,
                        fontsize = 8]
  'Google' -> 'résultats'  
  {rivière, ville} -> query [arrowhead = small]
  rivière -> ville [label = ' AND', color = white, fontname = Helvetica, fontsize = 8]
 } ")
