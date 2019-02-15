
main = do 
	englishSorted <- readFile "english.sorted"
	let wordsList = lines englishSorted
	
	print wordsList
	

