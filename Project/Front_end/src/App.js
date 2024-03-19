import { BrowserRouter, Routes, Route } from 'react-router-dom';
import './App.css';
import Home from './page/Home';
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.min.js";
import 'ag-grid-community/styles//ag-grid.css';
import 'ag-grid-community/styles//ag-theme-quartz.css';
import Login from './page/Login';
function App() {
  return (
    <>
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Login />} />
          <Route path="/home" element={<Home />} />
          <Route path="*" element={<Home />} />

        </Routes>
      </BrowserRouter>
    </>
  );
}

export default App;
