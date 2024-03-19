<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Group_User_Model;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Storage;
use App\Exports\DefaultExport;
use App\Exports\ExportUser;
use App\Imports\UserImport;
class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getUser(){
        $users=User::join('group_user','users.group_id','group_user.id')->distinct('users.id')
        ->select('users.*','group_user.title as title')->orderBy('users.id','asc')
        ->get();
        return $users;
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = User::join('group_user','users.group_id','group_user.id')->distinct('users.id')
        ->select('users.*','group_user.title as title')->orderBy('users.id','asc')
        ->get();
        return response()->json($users);
    }
// =============================================
    /**
     * Show the form for creating a new resource.
     */
    public function groups()
    {
        $groups = Group_User_Model::where('active',1)->select('id','title')->get();
        return response()->json($groups);
    }
   
    /**
     * Show the form for creating a new resource.
     */
    public function editUser(Request $request)
    {
            $Validator = Validator::make($request->all(), [
                'id'=>'required|exists:users,id',
                'groupid'=>'required|exists:group_user,id'
            ]);
            if ($Validator->fails()) {
                return response()->json(['check' => false, 'msg' => $Validator->errors()]);
            }
            User::where('id',$request->id)->update(['group_id'=>$request->groupid]);
            $user=User::join('group_user','users.group_id','group_user.id')->distinct('users.id')
        ->select('users.*','group_user.title as title')->orderBy('users.id','asc')
        ->get();
        return response()->json(['check'=>true,'result'=>$user]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function editManyUser(Request $request)
    {
            $Validator = Validator::make($request->all(), [
                'data'=>'required|array',
            ]);
            if ($Validator->fails()) {
                return response()->json(['check' => false, 'msg' => $Validator->errors()]);
            }
            $data = $request->data;
            foreach ($data as $key => $value) {
                User::where('id',$value[0])->update(['group_id'=>$value[1]]);
            }
            $data = $this->getUser();
            return response()->json(['check'=>true,'result'=>$data]);
    }

    /**
     * Display the specified resource.
     */
    public function exportdefault(User $user)
    {
       return Excel::download(new DefaultExport(), 'users.xlsx');
    }
    /**
     * Display the specified resource.
     */
    public function exportUser(User $user)
    {
        $data = User::where('group_id',3)->get();
       return Excel::download(new ExportUser($data), 'users.xlsx');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function userImport(Request $request, User $user)
    {
          $Validator = Validator::make($request->all(), [
                'file'=>'required|file|mimes:xlsx',
            ]);
            if ($Validator->fails()) {
                return response()->json(['check' => false, 'msg' => $Validator->errors()]);
            }
            $file = $request->file('file');            
            $data= Excel::toArray(new UserImport(), $file);
            unset($data[0][0]);
           
            foreach ($data[0] as $key => $value) {
                if($value[1]==3||$value[1]=='3'){
                $user =User::firstOrCreate([
                    'group_id'=>$value[1],
                    'first_name'=>$value[2],
                    'last_name'=>$value[3],
                    'email'=>$value[4],
                    'phone'=>$value[5],
                    'fax'=>$value[6],
                ]);
                }
                
            }
            $users= User::all();
            return response()->json(['check' => true, 'result' => $users]);
    }

    /**
     * Update the specified resource in storage.
     */
    // public function userImport(Request $request, User $user)
    // {
    //     //
    // }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(User $user)
    {
        //
    }
}
