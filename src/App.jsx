import { useState } from "react";
import SignIn from "./components/SingIn";

function App() {
  const [count, setCount] = useState(0);

  return (
    <div>
      <SignIn />
    </div>
  );
}

export default App;
