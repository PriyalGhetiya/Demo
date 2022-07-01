<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $permissions = [
            'blog-create',
            'blog-edit',
            'blog-delete',
            'blog-list'
        ];

        foreach($permissions AS $permission){
            $role_create = Permission::create(['name' => $permission]);
        }
    }
}
