local Stack = {}

function Stack.newStack()
	local self = { elements = {}, elementNum = 0 }

	function self:push(e)
		table.insert(self.elements, e)
		self.elementNum = self.elementNum + 1
	end

	function self:pop()
		if self.elementNum > 0 then
			local val = self.elements[self.elementNum]
			table.remove(self.elements, self.elementNum)
			self.elementNum = self.elementNum - 1
			return val
		end
	end

	function self:top()
		return self.elementNum > 0 and self.elements[self.elementNum] or nil
	end

	function self:clear()
		table.clear(self.elements)
		self.elementNum = 0
	end
	
	function self:isEmpty()
		return self.elementNum == 0
	end

	function self:size()
		return self.elementNum
	end
	
	function self:contains(e)
		return table.find(self.elements, e)
	end
	
	return self
end

return Stack

