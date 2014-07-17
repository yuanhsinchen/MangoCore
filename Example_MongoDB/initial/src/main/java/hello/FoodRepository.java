package hello;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "food", path = "food")
public interface FoodRepository extends MongoRepository<Food, String> {

	List<Food> findByItemName(@Param("itemName") String itemName);
	
	List<Food> findByItemCode(@Param("itemCode") String itemCode);

}