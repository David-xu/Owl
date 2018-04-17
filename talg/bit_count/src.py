def bit_count(ar, n_type):
	m = [int(0) for i in range(n_type)]
	m[0] = 0xffffffff
	for ele in ar:
		tmp = 0
		for i in range(n_type - 1, 0, -1):
			m[i] = m[i] & (~(m[i] & ele))
			m[i] = m[i] | (m[i - 1] & ele)
			tmp = tmp | m[i]
		m[0] = ~tmp	
	return m

if __name__ == '__main__':
	res = bit_count([1,2,3,3], 4)
	for i in res:
		print(hex(i))
