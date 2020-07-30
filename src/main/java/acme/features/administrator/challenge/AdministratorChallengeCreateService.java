
package acme.features.administrator.challenge;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.challenges.Challenge;
import acme.framework.components.Errors;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Administrator;

import acme.framework.services.AbstractCreateService;

@Service
public class AdministratorChallengeCreateService implements AbstractCreateService<Administrator, Challenge> {

	// Internal state ---------------------------------------------------------

	@Autowired
	private AdministratorChallengeRepository repository;


	@Override
	public boolean authorise(final Request<Challenge> request) {
		assert request != null;

		return true;
	}

	@Override
	public void unbind(final Request<Challenge> request, final Challenge entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;
		request.unbind(entity, model, "title", "deadline", "description", "rookieGoal", "rookieReward", "averageGoal", "averageReward", "expertGoal", "expertReward");
	}

	@Override
	public void create(final Request<Challenge> request, final Challenge entity) {
		

		this.repository.save(entity);

	}

	@Override
	public void bind(Request<Challenge> request, Challenge entity, Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;

		request.bind(entity, errors);
	}

	@Override
	public Challenge instantiate(Request<Challenge> request) {
		Challenge result;
		
		result = new Challenge();
		return result;
	}

	@Override
	public void validate(Request<Challenge> request, Challenge entity, Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;
		
	}

}
