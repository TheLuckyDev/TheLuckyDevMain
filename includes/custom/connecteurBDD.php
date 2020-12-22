<?php
/******************************************************************************
 *
 * Subrion - open source content management system
 * Copyright (C) 2018 Intelliants, LLC <https://intelliants.com>
 *
 * This file is part of Subrion.
 *
 * Subrion is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Subrion is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Subrion. If not, see <http://www.gnu.org/licenses/>.
 *
 *
 * @link https://subrion.org/
 *
 ******************************************************************************/

class connecteurBDD
{

    private static $_instance = null;
    private $connectMainBDD = null;
    private $connectCommunityBDD = null;
    private $statement = null;

    private function __construct()
    {
        // mysqli
        try {
            //Connection BDD 1
            $this->connectMainBDD = new mysqli(null, INTELLI_DBUSER, INTELLI_DBPASS, INTELLI_DBNAME_COMMUNITY, null, INTELLI_CONNECT);
            //Connection BDD 2
//            $this->connectCommunityBDD = mysqli_real_connect(INTELLI_DBHOST, "root", "", INTELLI_DBNAME);

            mysqli_query($this->connectMainBDD, "set names 'utf8'");
//            mysqli_query($this->connectCommunityBDD, "set names 'utf8'");

        } catch (\SQLiteException $e) {
            $success = 0;
            //Erreur de connection à la BDD
        }
    }

    public static function getInstance() {

        if(is_null(self::$_instance)) {
            self::$_instance = new connecteurBDD();
        }

        return self::$_instance;

    }

    public function addUserInCommunityDatabase($data)
    {

        $this->statement = $this->connectMainBDD->prepare("INSERT INTO sbr421_members(id,usergroup_id,username,password,email,sec_key,
                                                                              status,date_reg,date_update,date_logged,
                                                                              views_num,fullname,avatar,website,
                                                                              phone,biography,facebook,
                                                                              twitter,gplus,linkedin,funds,disable_fields,
                                                                              admin_columns,featured,featured_start,featured_end,
                                                                              sponsored, sponsored_start, sponsored_end, sponsored_plan_id,
                                                                              api_push_token, api_push_receive, email_language)
                                                                               VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

        $this->statement->bind_param("iissssssssisssssssssdisissississs",
            $id, $usergroup_id, $username, $password, $email,
            $sec_key, $status, $date_reg, $date_update, $date_logged,
            $views_num, $fullname, $avatar, $website, $phone, $biography,
            $facebook, $twitter, $gplus, $linkedin, $funds, $disabled_fields,
            $admin_columns, $featured, $featured_start, $featured_end, $sponsored,
            $sponsored_start, $sponsored_end, $sponsored_plan_id, $api_push_token,
            $api_push_received, $email_language);

        $id = $data['id'];
        $usergroup_id= 1;
        $username = $data['username'];
        $password = $data['password'];
        $email = $data['email'];
        $sec_key = $data['sec_key'];
        $status = $data['status'];
        $date_reg = $data['date_reg'];
        $date_update = $data['date_update'];
        $date_logged = $data['date_logged'];
        $views_num = $data['views_num'];
        $fullname = $data['fullname'];
        $avatar = $data['avatar'];
        $website = $data['website'];
        $phone = $data['phone'];
        $biography = $data['biography'];
        $facebook = $data['facebook'];
        $twitter = $data['twitter'];
        $gplus = $data['gplus'];
        $linkedin = $data['linkedin'];
        $funds = $data['funds'];
        $disabled_fields = 0;
        $admin_columns = $data['admin_columns'];
        $featured = $data['featured'];
        $featured_start = $data['featured_start'];
        $featured_end = $data['featured_end'];
        $sponsored = $data['sponsored'];
        $sponsored_start = $data['sponsored_start'];
        $sponsored_end = $data['sponsored_end'];
        $sponsored_plan_id = $data['sponsored_plan_id'];
        $api_push_token = $data['api_push_token'];
        $api_push_received = "yes";
        $email_language = $data['email_language'];

        $this->statement->execute();

        $this->statement->close();



    }

}
