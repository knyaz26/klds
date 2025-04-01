local Pqueue = {}

function Pqueue.newPqueue()
	local self = {elements = {}}

	function self:enqueue(e, p)
		table.insert(self.elements, {priority = p, value = e})
		table.sort(self.elements, function(a, b)
			return a.priority > b.priority
		end)
	end

	function self:dequeue()
		if #self.elements > 0 then
			local element = self.elements[1]
			table.remove(self.elements, 1)
			return element.value
		end
	end

	function self:peek()
		if #self.elements > 0 then
			return self.elements[1].value
		end
	end

	function self:isEmpty()
		return #self.elements == 0
	end

	function self:size()
		return #self.elements
	end

	function self:clear()
		self.elements = {}
	end

	return self
end

return Pqueue
