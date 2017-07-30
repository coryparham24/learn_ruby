class Book

	def title=(title)
		title = title.downcase
		@book = title
	end

	def title title=title
		articles = ['the', 'a', 'an']
		conjunctions = ['and', 'but', 'or', 'so']
		prepositions = ['in', 'of', 'about']
		titleWords = @book.downcase.split(' ')
		titleWords = titleWords.map(&:capitalize)

		for i in 0..(conjunctions.length - 1)
			titleWords.map! {|x| 
				if x.downcase == conjunctions[i]
					x = x.downcase
				end
			x}
		end

		for i in 0..(prepositions.length - 1)
			titleWords.map! {|x| 
				if x.downcase == prepositions[i]
					x = x.downcase
				end
			x}
		end

		for i in 0..(articles.length - 1)
			titleWords.map! {|x| 
				if x.downcase == articles[i]
					x = x.downcase
				end
			x}
		end

		titleWords[0] = titleWords[0].capitalize

		@book = titleWords.join(' ')
	end

end