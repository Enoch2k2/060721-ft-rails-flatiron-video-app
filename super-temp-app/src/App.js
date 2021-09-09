import React, { useEffect } from 'react';

function App() {
  useEffect(() => {
    fetch('http://localhost:3001/videos', {
      method: "POST",
      headers: {
        'Accept': "application/json",
        'Content-Type': "application/json"
      },
      body: JSON.stringify({
        "category": "Movie",
        "title": "The Jungle Book 4",
        "length": 7.0,
        "genre": "Horror",
        "rating": 5
      })
    })
  })

  return (
    <div className="App">
      <h1>Hello World!</h1>
    </div>
  );
}

export default App;
