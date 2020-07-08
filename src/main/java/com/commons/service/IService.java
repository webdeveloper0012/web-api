package com.commons.service;

import java.util.List;
import java.util.UUID;

public interface IService<T>{
	
	T save(T entity);
	
	List<T> saveAll(Iterable<T> entities);

	T findById(UUID id);

	/**
	 * Delete the entity
	 * 
	 * @return TODO
	 * 
	 * @return the Redis id deleted
	 * @param id
	 *            identificator
	 */
	UUID deleteById(UUID id);
}
