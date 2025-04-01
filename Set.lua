local Set = {}

function Set.newSet()
	local self = {elements = {}, elementNum = 0}

	function self:insert(e)
		if not table.find(self.elements, e) then
			table.insert(self.elements, e)
			self.elementNum = self.elementNum + 1
		end
	end

	function self:remove(e)
		local index = table.find(self.elements, e)
		if index then
			table.remove(self.elements, index)
			self.elementNum = self.elementNum - 1
		end
	end

	function self:contains(e)
		return table.find(self.elements, e)
	end

	function self:size()
		return self.elementNum
	end

	function self:clear()
		table.clear(self.elements)
		self.elementNum = 0
	end

	return self
end

return Set

