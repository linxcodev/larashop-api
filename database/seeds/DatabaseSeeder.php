<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // token
        // $users = \App\User::all();
        // foreach ($users as $user) {
        //   $xt = Str::random(60);
        //   $user->update(['api_token' => $xt]);
        // }

        // province
        $url_province = "https://api.rajaongkir.com/starter/province?key=$apiKey";
        $json_str = file_get_contents($url_province);
        $json_obj = json_decode($json_str);
        $provinces = [];
        foreach($json_obj->rajaongkir->results as $province){
            $provinces[] = [
                'id' => $province->province_id,
                'province' => $province->province
            ];
        }
        DB::table('provinces')->insert($provinces);

        // city
        $url_city = "https://api.rajaongkir.com/starter/city?key=$apiKey";
        $json_str = file_get_contents($url_city);
        $json_obj = json_decode($json_str);
        $cities = [];
        foreach($json_obj->rajaongkir->results as $city){
            $cities[] = [
                'id'            => $city->city_id,
                'province_id'   => $city->province_id,
                'city_name'     => $city->city_name,
                'type'          => $city->type,
                'postal_code'   => $city->postal_code,
            ];
        }
        DB::table('cities')->insert($cities);
    }
}
