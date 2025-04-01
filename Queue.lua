local Queue = {}

function Queue.newQueue()
	local self = {elements = {}, elementNum = 0}

	function self:enqueue(e)
		table.insert(self.elements, e)
		self.elementNum = self.elementNum + 1
	end

	function self:dequeue()
		local val = self.elements[1]
		table.remove(self.elements, 1)
		self.elementNum = self.elementNum - 1
		return val
	end

	function self:front()
		return self.elements[1]
	end

	function self:isEmpty()
		return self.elementNum == 0
	end

	function self:size()
		return self.elementNum
	end

	function self:clear()
		table.clear(self.elements)
		self.elementNum = 0
	end

	function self:contains(e)
		return table.find(self.elements, e)
	end

	return self
end

return Queue

