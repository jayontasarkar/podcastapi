<?php 

namespace App\Controllers;

use App\Models\Podcast;
use App\Transformers\PodcastTransformer;
use League\Fractal\{
	Resource\Item, 
	Resource\Collection,
	Pagination\IlluminatePaginatorAdapter
};

class PodcastsController extends Controller
{
	public function index($request, $response)
	{
		$podcasts = Podcast::latest()->paginate(3);

		$transformer = (new Collection($podcasts, new PodcastTransformer))
				->setPaginator(new IlluminatePaginatorAdapter($podcasts));

		return $response->withJson(
			$this->c->fractal->createData($transformer)->toArray()
		);
	}

	public function show($request, $response, $args)
	{
		$podcast = Podcast::find($args['id']);

		if( ! $podcast ) {
			return $response->withStatus(404);
		}
		$transformer = new Item($podcast, new PodcastTransformer);

		return $response->withJson(
			$this->c->fractal->createData($transformer)->toArray()
		);
	}
}