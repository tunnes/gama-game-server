# Challenge API

### Requirements
- [Ruby v2.5.1](https://www.ruby-lang.org/en/news/2018/03/28/ruby-2-5-1-released/)
- [PostgreSQL v9.6.8](https://www.postgresql.org)

### Usage
assuming you already have the ruby configured in its correct version...
````
bundle install
rails db:create db:migrate db:setup
rails server
````

### Run tests
````
bundle exec rspec
````
### Run linter
```
bundle exec rubocop
```

### API Resources:

**POST `/game`**
Create an new game and returns this in response body:
````js
{
    "id": 1,
    "created_at": "2019-01-13T19:28:57.031Z",
    "updated_at": "2019-01-13T19:28:57.031Z",
    "game_questions": [
        {
            "id": 1,
            "game_id": 1,
            "question_id": 4,
            "answer": null,
            "created_at": "2019-01-13T19:28:57.032Z",
            "updated_at": "2019-01-13T19:28:57.032Z"
        },
        ...
    ]
}
````

**GET `/game/:ID`**
Returns the game in response body:
````js
{
    "id": 1,
    "created_at": "2019-01-13T19:28:57.031Z",
    "updated_at": "2019-01-13T19:28:57.031Z",
    "game_questions": [
        {
            "id": 1,
            "game_id": 1,
            "question_id": 4,
            "answer": null,
            "created_at": "2019-01-13T19:28:57.032Z",
            "updated_at": "2019-01-13T19:28:57.032Z"
        },
        ...
    ]
}
````

**GET `/game/:ID/calculate`**
Caculate and returns the game score in response body:
````js
{
    "score": 0
}
````

**GET `/question/:ID`**
Returns the question in response body (without the answer):
````js
{
    "id": 1,
    "external_id": "771",
    "title": "Fill in the lyrics from Fresh Prince: My parents went away....",
    "category": "Hip Hop Music",
    "option1": "Porsche",
    "option2": "Car",
    "option3": "Chevy",
    "option4": "Ride",
    "created_at": "2019-01-13T19:28:27.463Z",
    "updated_at": "2019-01-13T19:28:27.463Z"
}
````

**PUT `/game-question/:ID` { answer: 'user_answer' }**
Expect an answer params, update the game question and return the game question in response body:
````js
{
    "question_id": 12,
    "id": 4,
    "answer": "1",
    "game_id": 1,
    "created_at": "2019-01-13T19:28:57.042Z",
    "updated_at": "2019-01-13T19:43:12.191Z"
}
````

### Developer observations:
Even with the long time to develop the challenge, I leave below some items that
I consider important but have not had time to solve:
- [ ] Search and remove from the app more elements related to views and assets.
- [x] Think in something about the complex query in calculator service.
- [ ] Create versions to API resources.
- [ ] Remodel the table of questions, it does not follow the standards of normalization.
- [ ] Add a record serealizador.

If you are interested in evaluating my most proud project is an real time chat,
with react and all this project stack with rails and action cable in server:

- [chat-client](https://github.com/tunnes/chat-client)
- [chat-client](https://github.com/tunnes/chat-server)