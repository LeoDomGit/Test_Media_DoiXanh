import React from 'react'
import Navbar from '../components/Navbar'

function Login() {
    return (

        <>
            <Navbar />
            <div className="container mt-5">
                <div className='row mt-2 mb-5'>
                    <div className="col-md">
                        <div className="card" style={{ minHeight: "230px" }}>
                            <div className="card-header">Bài test </div>
                            <div className="card-body">
                                <p className="card-text">
                                    Ứng viên : Nguyễn Lê Trung Thành
                                </p>
                                <p className="card-text">
                                    Email: leodomsolar@gmail.com
                                </p>
                                <p className='card-text'>
                                    SDT : 09.777.666.53
                                </p>

                            </div>
                        </div>
                    </div>
                    <div className="col-md">
                        <div className="card" style={{ minHeight: "210px" }}>
                            <div className="card-header">Lưu ý </div>
                            <div className="card-body">
                                <p className="card-text">
                                    Bài test sử dụng theo mô hình Micro-services
                                </p>
                                <p className="card-text">
                                    Anh chị chạy Front end ở port:3000 và Api ở port:8000 để thực thi dự án
                                </p>
                                <p className='card-text'>
                                    Xin cảm ơn
                                </p>
                                <a className="btn btn-sm btn-primary" href='/home'>Bắt đầu</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </>
    )
}

export default Login