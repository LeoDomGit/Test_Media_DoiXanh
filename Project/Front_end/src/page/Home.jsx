/* eslint-disable */
import { React, useEffect, useState } from 'react';
import Box from '@mui/material/Box';
import { DataGrid } from '@mui/x-data-grid';
import axios from "axios";
import Button from 'react-bootstrap/Button';
import Modal from 'react-bootstrap/Modal';
import { Notyf } from 'notyf';
import 'notyf/notyf.min.css';
import Navbar from '../components/Navbar';
function Home() {
    const api = process.env.REACT_APP_API_URL;
    const [users, setUser] = useState([]);
    const [groups, setGroup] = useState([]);
    const [rowSelectionModel, setRowSelectionModel] = useState([]);
    const [show, setShow] = useState(false);
    const handleClose = () => setShow(false);
    const handleShow = () => setShow(true);
    const [file, setFile] = useState(null);
    const notyf = new Notyf({
        duration: 1000,
        position: {
            x: 'right',
            y: 'top',
        },
        types: [
            {
                type: 'warning',
                background: 'orange',
                icon: {
                    className: 'material-icons',
                    tagName: 'i',
                    text: 'warning'
                }
            },
            {
                type: 'error',
                background: 'indianred',
                duration: 2000,
                dismissible: true
            },
            {
                type: 'success',
                background: '#39cced',
                duration: 2000,
                dismissible: true,
                icon: '<i class="bi bi-bag-check-fill"></i>',
            }
        ]
    });
    // =========================================================

    const updateGroupId = (id, value) => {
        var users1 = users;
        users1.forEach(el => {
            if (el.id == id) {
                el.group_id = value
            }
        });
        setUser(users1);
    }
    // =========================================================

    const columns = [
        {
            field: 'id',
            headerName: 'Key',
            width: 150,
            editable: false,
            sortable: true,

        },
        {
            field: 'group_id',
            headerName: 'Group Id',
            sortable: true,
            width: 150,
            renderCell: (params) => {
                return (
                   <select
                        className='form-control groupselect'
                        defaultValue={Number(params.row.group_id)}
                        onChange={(e) => updateGroupId(params.row.id, e.target.value)}
                    >
                        {groups.map((option) => (
                            <option
                                key={option.id}
                                value={option.id}

                            >
                                {option.title}
                            </option>
                        ))}
                    </select>
                );
            }
        },
        {
            field: 'first_name',
            headerName: 'First Name',
            width: 150,
            editable: false,
            sortable: true,
        },
        {
            field: 'last_name',
            headerName: 'Last Name',
            type: 'number',
            width: 110,
            editable: false,
        },
        {
            field: 'email',
            headerName: 'Email',
            sortable: false,
            width: 160,

        },
        {
            field: 'phone',
            headerName: 'Phone',
            sortable: false,
            width: 160,

        },
        {
            field: 'fax',
            headerName: 'Fax',
            sortable: false,
            width: 160,

        },
        {
            field: 'created_at',
            headerName: 'Created Date',
            sortable: false,
            width: 160,
            sortable: true,

        },
        {
            field: 'updated_at',
            headerName: 'Updated Date',
            sortable: false,
            width: 160,
            sortable: true,

        },
        {
            headerName: 'Update',
            width: 150,
            renderCell: (params) => {
                const handleUpdateClick = () => {
                    var id = params.row.id;
                    var groupid = 0;
                    users.forEach(el => {
                        if (el.id == id) {
                            groupid = el.group_id;
                        }
                    });

                    axios.post(api + 'editUser', {
                        id: id,
                        groupid: groupid
                    })
                        .then(function (res) {
                            if (res.data.check == true) {
                                notyf.open({
                                    type: 'success',
                                    message: 'Update successfully'
                                });
                                setUser(res.data.result);
                            } else if (res.data.check == false) {
                                notyf.open({
                                    type: 'error',
                                    message: res.data.msg
                                });
                            }
                        })


                };

                return (
                    <button
                        className='btn btn-primary'
                        onClick={handleUpdateClick}
                    >Update</button>
                );
            }
        },
    ];
    // =========================================================

    const handleUpdateChecked = (e) => {
        const selectedRowsData = rows.filter((row) => rowSelectionModel.includes(row.id));
        var arr = [];
        selectedRowsData.forEach(el => {
            var idgroup = el.group_id;
            var id = el.id;
            var item = [id, Number(idgroup)];
            arr.push(item);
        });
        if (arr.length == 0) {
            notyf.open({
                type: 'error',
                message: "No user selected"
            });
        } else {
            axios.post(api + 'editManyUser', {
                data: arr
            })
                .then(function (res) {
                    if (res.data.check === true) {
                        notyf.open({
                            type: 'success',
                            message: 'Update successfully'
                        });
                        setUser(res.data.result);
                    } else if (res.data.check === false) {
                        notyf.open({
                            type: 'error',
                            message: res.data.msg
                        });
                    }
                })
                .catch(function (error) {
                    console.error('There was an error with the Axios POST request:', error);
                });
        }

    }
    // =========================================================

    const getFile = (event) => {
        const file = event.target.files[0];
        if (file) {
            setFile(file);
        }
    };
    // =========================================================

    var rows = users;

    const uploadFile = (e) => {
        if (file !== null) {
            const formData = new FormData();
            formData.append('file', file);
            axios.post(api + 'userimport', formData, {
                headers: {
                    'Content-Type': 'multipart/form-data'
                }
            }).then((res) => {
                if (res.data.check == true) {
                    notyf.open({
                        type: 'success',
                        message: "Import successfully"
                    });
                    setUser(res.data.result);
                    setShow(false);
                    setFile(null);
                } else if (res.data.check == false) {
                    if (res.data.msg.file) {
                        notyf.open({
                            type: 'error',
                            message: res.data.msg.file
                        });
                        setFile(null);
                    }
                }
            })
        } else {
            notyf.open({
                type: 'error',
                message: 'File does not exist'
            });
        }
    }
    // =========================================================
    useEffect(() => {
        fetch(api + 'users').then(res => res.json()).then((res) => {
            setUser(res);
        });
        fetch(api + 'groups').then(res => res.json()).then((res) => {
            setGroup(res);
        })
    }, [])
    return (
        <>
            <Navbar />

            <div className="container mt-5">
                <div className='row mt-2 mb-5'>
                    <div className="col-md-5">
                        <div className="card" style={{ minHeight: "210px" }}>
                            <div className="card-header">Bài Test </div>
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
                    <div className="col-md-5">
                        <div className="card">
                            <div className="card-header">Thông tin bổ sung </div>
                            <div className="card-body pb-5">
                                <p>Ở đây em có một số sản phẩm cá nhân mời anh chị tham khảo</p>
                                <p>Vui lòng chọn phần nhà tuyển dụng và nhập email của em ạ</p>
                                <a href='https://trungthanhweb.com/' style={{ textDecoration: 'none', }}>https://trungthanhweb.com/</a>

                            </div>
                        </div>
                    </div>
                </div>
                <Modal show={show} onHide={handleClose}>
                    <Modal.Header closeButton>
                        <Modal.Title>Import Users</Modal.Title>
                    </Modal.Header>
                    <Modal.Body>
                        <input type="file" onChange={getFile} />
                    </Modal.Body>
                    <Modal.Footer>
                        <Button variant="primary" onClick={uploadFile}>
                            Upload
                        </Button>
                    </Modal.Footer>
                </Modal>
                <div className='row w-100 mb-2'>
                    <div className='col-md'>
                        <button className='btn btn-sm btn-primary' onClick={(e) => handleUpdateChecked()}>Update Checked</button>
                        <a href='http://127.0.0.1:8000/exportdefault' className='btn btn-sm btn-warning ms-2' target="_blank">Get File</a>
                        <a href='http://127.0.0.1:8000/exportUser' className='btn btn-sm btn-warning ms-2' target="_blank">Get User List</a>
                        <button className='btn btn-sm btn-success ms-3' onClick={handleShow}>Import</button>

                    </div>

                </div>
                <Box sx={{ height: 400, width: '100%' }}>
                    <DataGrid
                        rows={users}  // Change 'rows' to 'users'
                        columns={columns}
                        initialState={{
                            pagination: {
                                paginationModel: {
                                    pageSize: 5,
                                },
                            },
                        }}
                        pageSizeOptions={[5]}
                        checkboxSelection
                        getRowId={(row) => row.id}
                        rowClassName={(params) => params.row.id}
                        disableRowSelectionOnClick
                        onRowSelectionModelChange={(newRowSelectionModel) => {
                            setRowSelectionModel(newRowSelectionModel);
                        }}
                        rowSelectionModel={rowSelectionModel}
                        {...rows}
                    />
                </Box>
            </div>
        </>
    )
}

export default Home
