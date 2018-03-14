pragma solidity ^0.4.4;

//contract to store blood donor details

//by Manju Mohan



contract BloodRecord {



    struct Record {

        uint64 uid;

        string datetime;

        string bloodgroup;

        uint timestamp;



    }



    mapping(uint256 => Record) public records;



   struct Donorblood {



        uint64 uid;

        string donorname;

        string birthdate;

        string bloodquality;

        //should i add this ? - string bloodgroup;

        uint16 age;

        string gender;

    //    string state;

        string city;

        //bool availability;

        string phnum;

        uint128[] recindex;



    }



     mapping(uint64 => Donorblood) public bdonor;

    

    function regBloodDonar(uint64 uid )public returns (bool) {

        

        bdonor[uid].uid = uid;

        return true;

    }



    function updateDonor(uint64 uid,string donorname,string birthdate,string bloodgroup,uint16 age,string gender,string city,string phnum)public returns(bool) {

        

        bdonor[uid].donorname = donorname;

        bdonor[uid].birthdate = birthdate;

        bdonor[uid].age = age;

        bdonor[uid].gender = gender;

    //    bdonor[uid].state = state;

        bdonor[uid].city = city;

    //    bdonor[uid].availability = availability;

        bdonor[uid].phnum = phnum;

        return true;

    }



/*

      function findbylocation(uint64 uid,string country,string state,string district,string city,string phc)public returns(bool) {



        if (StringUtils.equal(donor[uid].country,country)) {

           if (donor[uid].state == state ) {

               if (donor[uid].district == district) {

                   if (donor[uid].city == city) {

                       if (donor[uid].phc == phc) {  

                       

                       //display user details

                       }

                   }

               }

           }

        }

        return true;

    }

      function findbybloodgp(string bloodgroup) public {



          if (Donor.bloodgroup == bloodgroup) {

              //display user details



          }

      }   



      function findbyagegp(uint64 uid,uint16 age,uint weight) public constant returns (uint128[]) {



          if (age>18 && age<=30) {

              //display user details

              return donor[uid].recindex;

          }

          if (age>30 && age<=40) {

             return donor[uid].recindex;

          }

          if (age>40 && age<=50) {

              return donor[uid].recindex;

          }

          if (age>50 && age<=60) {

              return donor[uid].recindex;

          }

         }

       

     function findbyname(uint64 uid,string name) public constant returns(Donor) {



         if (donor.name == name) {

             //display userdetails 

          // return donor[uid];

         }

     }   

*/



function createRecord(uint64 uid,uint64 rid,string datetime,string bloodgroup)public returns (bool) {

        

        uint128 realrid = uid+rid;

        records[realrid].datetime = datetime;

        records[realrid].bloodgroup = bloodgroup;

        records[realrid].timestamp = now;

        bdonor[uid].recindex.push(realrid);

        return true;       

    }  



    function getridfromuid(uint64 uid )public constant returns (uint128[]) {

       return bdonor[uid].recindex;

       

     }



    function BloodRecord(string _greeting) public {  

        return; 

        }



}
