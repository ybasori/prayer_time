<?php
    
    class DB{
        public function con(){
            return mysqli_connect("localhost","root","","indonesia");
        }
    }
    $con=(new DB)->con();
    if (mysqli_connect_errno()){
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    else{
        class WaktuSholat{

            /* Ikhtiyat/Kehati-hatian sebanyak 2 Menit */
    
            var $Ikhtiyat=2;
    
            /**
             * Set Latitude & Longitude
             * @sintax
             *   void Object.setLatLng(float Latitude, float Longitude);
             */
            public function setLatLng($lat,$lng){
                $this->latitude=$lat;
                $this->longitude=$lng;
            }
    
            /**
             * Fungsi untuk meng-convert nilai Float untuk jam
             * menjadi array [Jam,Menit,Detik] atau string jam "12:1:9"
             * @sintax
             *   string/array Object.calc_toTime(float flTime, bool ReturnArray); 
             */
            public function calc_toTime($num,$retarray){
                $jam = floor($num);
                $vmn = ($num-$jam)*60;
                $mnt = floor($vmn);
                $dtk = round(($vmn-$mnt)*60);
                $ret = [$jam,$mnt,$dtk];
                if ($retarray){
                    return $ret;
                }
                return implode(":",$ret);
            }
    
            /* Fungsi Untuk Convert calc_toTime menjadi
            Friendly Time format dengan leading 0 pada jam,menit
            dan detik. Output format: 12:01:09
            */
            public function timeToString($num){
                $arr = $this->calc_toTime($num,true);
                $arr[0] .='';
                $arr[1] .='';
                $arr[2] .='';
                if (strlen($arr[0])==1) $arr[0]='0'.$arr[0];
                if (strlen($arr[1])==1) $arr[1]='0'.$arr[1];
                if (strlen($arr[2])==1) $arr[2]='0'.$arr[2];
                return implode(':',$arr);
            }
    
            /**
             * Fungsi untuk mendapatkan Nilai Integer dari Julian Date
             * @sintax
             *   [JD] Object.jd(int Tahun, int Bulan, int Tanggal, int TimeZone); 
             */
            public function jd($thn,$bln,$tgl,$tz){
                if ($bln<=2){
                $bln+=12;
                $thn--;
                }
                $UT = 12-$tz;
                // Nilai 1 Tahun = 365.25 Hari ( 366 = 1x kabisat, 365 = 3x )
                // Nilai 1 Bulan = 30.6001 Hari
                // Alghoritma dapat dibaca di: http://www.gmat.unsw.edu.au/snap/gps/gps_survey/chap2/214.htm
                $jd = floor(365.25 * $thn) + floor(30.6001 * ($bln+1)) + $tgl + ($UT/24) + 1720981.5;
                return $jd;
            }
    
            /**
             * Julian Date untuk 1 Januari 2000 (UTC)
             * diperlukan untuk perhitungan jumlah hari dan
             * abad untuk hari yang dimaksud.
             */
    
            public function JD2000(){
                return $this->jd(2000,1,1,0);
            }
    
            /**
             * Fungsi untuk menghitung jumlah hari dari satu
             * JD ke JD yang lainnya
             * @sintax
             *   [n] Object.jd_jumlahHari([JD] From,[JD] To);
             */
            public function jd_jumlahHari($jd_from,$jd_to){
                return $jd_to-$jd_from;
            }
    
            /**
             * Fungsi untuk menghitung jumlah abad untuk
             * jumlah hari yang dimaksud.
             * @sintax
             *   [T] Object.jd_jumlahAbad([JD] jumlahHari);
             */
            public function jd_jumlahAbad($jumlahHari){
                /* Jumlah Hari dalam 1 Abad = 36525 Hari */
                return $jumlahHari/36525;
            }
    
            /**
             * Fungsi untuk menghitung bujur ekliptik rata-rata matahari
             * @sintax
             *   [g] Object.elip_ratarata([T] jumlahAbad);
             */
            public function elip_ratarata($T){
                $g_awal= 280.46 + (36000.77129 * $T);
                $g     = $g_awal;
                if ($g_awal>360){
                $cg = 360 * floor($g_awal/360);
                $g -= $cg;
                }
                return $g;
            }
    
            public function M(){
                return new M();
            }
    
            /**
             * Fungsi untuk menghitung bujur ekliptik matahari
             * @sintax
             *   [L0] Object.elip_bujur([T] jumlahAbad);
             */
            public function elip_bujur($T){
                $b_awal = 357.528+(35999.05096*$T);
                $c_b    = 360 * floor($b_awal/360);
                $b      = $b_awal - $c_b;
                $lo     = $this->elip_ratarata($T) + (1.915 * $this->M()->sin($b)) + (0.02 * $this->M()->sin(2*$b));
                return $lo;      
            }
    
            /**
             * Fungsi untuk menghitung kemiringan ekliptik matahari
             * @sintax
             *   [E] Object.elip_kemiringan([n] jumlahHari);
             */
            public function elip_kemiringan($n){
                return 23.439-0.0000004*$n;
            }
    
            /**
             * Fungsi untuk menghitung Aksensio rekta matahari
             * @sintax
             *   [Ra0] Object.cari_ra0([L0] elipBujur, [E] Kemiringan);
             */
            public function cari_ra0($L0, $E){
                $_L0    = $L0;
                $_E     = $E;
                $cos_L0 = $this->M()->cos($_L0);
                
                $Ra01   = $this->M()->atan(($this->M()->sin($_L0) * $this->M()->cos($_E)) / $cos_L0);
                $Ra02   = $Ra01;
                if ($cos_L0>=0){
                $Ra02+=360;}
                else{
                $Ra02+=180;}
                $CRa = 360 * floor($Ra02/360);
                $Ra0 = $Ra02-$CRa;
                return $Ra0;
            }
            
            /**
             * Fungsi untuk menghitung deklinasi matahari
             * @sintax
             *   [d0] Object.cari_deklinasi([L0] elipBujur, [E] Kemiringan);
             */
            public function cari_deklinasi($L0,$E){
                $d0 = $this->M()->asin($this->M()->sin($L0) * $this->M()->sin($E));
                return $d0;
            }
    
            /**
             * Fungsi untuk menghitung Meridian Pas
             * @sintax
             *   [MP] Object.cari_meridianpas([Ra0] Aksensio, [g] elip_ratarata);
             */
            public function cari_meridianpas($Ra0,$g){
                $MP = (12-(($g-$Ra0)/15));
                if ($MP<0){
                $MP+=24;}
                else if($MP>24){
                $MP-=24;}
                return $MP;
            }
    
            /**
             * Fungsi untuk menghitung Koreksi Waktu Daerah
             * @sintax
             *   [KWD] Object.calc_kwd(int TimeZone,float Longitude);
             */
            public function calc_kwd($tz,$longitude){
                $KWD = $tz - ($longitude/15);
                return $KWD;
            }
            
            /**
             * Fungsi Untuk menghitung Waktu pada kondisi-kondisi tertentu
             *  [WAKTU] Object.calcWaktu([d0],float,[KWD],[MP],int DerajatMatahari);
             */
            public function calcWaktu($d0,$latitude,$KWD,$MP,$Z){
                $t = 0;
                if ($Z!=0){
                    $_Z   = abs($Z);
                    $cosZ = ($this->M()->cos($_Z) - $this->M()->sin($d0) * $this->M()->sin($latitude)) / ($this->M()->cos($d0) * $this->M()->cos($latitude));
                    $t = $this->M()->acos($cosZ) / 15;
                    if ($Z<0){
                        $t = 0-$t;
                    }
                }
                $Waktu = $MP + $t + $KWD + ($this->Ikhtiyat/60);
                return $Waktu;
            }
    
            public function get($thn,$bln,$tgl,$gmt){
                //-- Bila tidak di set, Set sebagai WIB / GMT+7
                if (!$gmt) {
                    $gmt=7;
                }
                
                //-- Hitung Julian Date hari yang dimaksud
                $JD     = $this->jd($thn,$bln,$tgl,$gmt);
                //-- Hitung jumlah Hari dari 1 Jan 2000 sampai tgl yg dimaksud
                $n      = $this->jd_jumlahHari($this->JD2000(),$JD);
                //-- Hitung jumlah Abad dari 1 Jan 2000 sampai tgl yg dimaksud
                $T      = $this->jd_jumlahAbad($n);
                //-- Hitung Bujur ekliptik rata-rata matahari
                $g      = $this->elip_ratarata($T);
                //-- Hitung Bujur ekliptik matahari
                $Lo     = $this->elip_bujur($T);
                //-- Hitung kemiringan ekliptik matahari
                $E      = $this->elip_kemiringan($n);
                //-- Hitung Aksensio rekta matahari
                $Ra0    = $this->cari_ra0($Lo, $E);
                //-- Hitung Deklinasi matahari
                $d0     = $this->cari_deklinasi($Lo,$E);
                //-- Hitung Meridian Pas
                $MP     = $this->cari_meridianpas($Ra0,$g);
                //-- Hitung Koreksi Waktu Daerah
                $KWD    = $this->calc_kwd($gmt,$this->longitude);
                    
                /* List Posisi Matahari Berdasarkan Waktu Shalat */
                $posMatahari = [
                    'shubuh'=>-110,
                    'zuhur'=>0,
                    /* Ashar tergantung koordinat latitude dari suatu daerah */
                    'ashar'=>$this->M()->atan($this->M()->tan(abs($d0-$this->latitude))+1),
                    'maghrib'=>91,
                    'isya'=>108
                ];
                
                $waktuSholat=[];
                foreach($posMatahari as $waktu=>$value){
                $waktuSholat[$waktu]=$this->timeToString($this->calcWaktu($d0,$this->latitude,$KWD,$MP,$value));
                }
                return $waktuSholat;
            }
        }
    
        class M{
            public function deg2rad($d){
            return ($d / 180) * pi();
            }
    
            public function rad2deg($d){
            return $d * 57.29577951308232;
            }
    
            public function sin($d){
            return sin($this->deg2rad($d));
            }
    
            public function cos($d){
            return cos($this->deg2rad($d));
            }
    
            public function tan($d){
            return tan($this->deg2rad($d));
            }
    
            public function acos($r){
            return $this->rad2deg(acos($r));
            }
    
            public function asin($r){
            return $this->rad2deg(asin($r));
            }
    
            public function atan($r){
            return $this->rad2deg(atan($r));
            }
    
        };
    
    
    
        // Buat Object dari Class waktuSholat
        

        class Wilayah{
            public function __construct(){
                $this->con=(new DB)->con();
            }
            public function provinsi(){
                return mysqli_fetch_all(mysqli_query($this->con,"SELECT * FROM wilayah WHERE parent_id=0"), MYSQLI_ASSOC);
            }
            public function kota($provinsi_id){
                return mysqli_fetch_all(mysqli_query($this->con,"SELECT * FROM wilayah WHERE parent_id=$provinsi_id"), MYSQLI_ASSOC);
            }
            public function row($id){
                return mysqli_fetch_all(mysqli_query($this->con,"SELECT * FROM wilayah WHERE id=$id"), MYSQLI_ASSOC)[0];
            }
        }

        
        
        $wilayah=new Wilayah();
        $waktuSholatObj = new WaktuSholat();
        if(count($_POST)!=0){
            if(!empty($_POST['provinsi_id'])){
                header("Content-Type:aplication/json");
                http_response_code("200");
                echo json_encode($wilayah->kota($_POST['provinsi_id']));
            }
            else{
                $err_array=[];
                foreach($_POST as $key => $post){
                    if($post==""){
                        $err_array[$key]=$key." is required!";
                    }
                }
                if(count($err_array)!=0){
                    header("Content-Type:aplication/json");
                    http_response_code("400");
                    echo json_encode([
                        "errors"=>$err_array
                    ]);
                }
                else{
                    header("Content-Type:aplication/json");
                    http_response_code("200");
                    $kota=$wilayah->row($_POST['kota']);
                    $waktuSholatObj->setLatLng($kota['latitude'],$kota['longitude']);
                    $result = $waktuSholatObj->get($_POST['tahun'],$_POST['bulan'],$_POST['tanggal'],$_POST['timezone']);
                    echo json_encode($result);
                }
            }
        }
        else{
            $provinsi=$wilayah->provinsi();
            ?>
            <form id="form">
                <table>
                    <tr>
                        <td>Provinsi</td>
                        <td>
                            <select name="provinsi" id="provinsi">
                                <option value="" hidden>---</option>
                                <?php foreach($provinsi as $pro):?>
                                <option value="<?= $pro['id'] ?>"><?= $pro['name'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Kota / Kabupaten</td>
                        <td>
                            <select name="kota" id="kota">
                                <option value="" hidden>---</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Time zone</td>
                        <td>
                            <select name="timezone">
                                <option value="" hidden>---</option>
                                <?php for($i=-12;$i<=14;$i++): ?>
                                <option value="<?=$i?>" <?=$i==7?"selected":""?>><?=$i>=0?"+".$i:$i?></option>
                                <?php endfor; ?>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Tahun</td>
                        <td>
                            <select name="tahun" id="tahun">
                                <option value="" hidden>---</option>
                                <?php for($i=(date("Y")-5);$i<(date("Y"));$i++): ?>
                                <option value="<?=$i?>" ><?=$i?></option>
                                <?php endfor; ?>
                                <?php for($i=date("Y");$i<=(date("Y")+5);$i++): ?>
                                <option value="<?=$i?>"><?=$i?></option>
                                <?php endfor; ?>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Bulan</td>
                        <td>
                            <select name="bulan" id="bulan">
                                <option value="" hidden>---</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Tanggal</td>
                        <td>
                            <select name="tanggal" id="tanggal">
                                <option value="" hidden>---</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><button type="submit">Hitung</button></td>
                    </tr>
                </table>
                
            </form>
            <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
            <script>
                (function(){
                    function getProvinsi(){
                        if($("#provinsi").val()!=""){
                            var formdata=new FormData();
                            formdata.append("provinsi_id", $("#provinsi").val());
                            $.ajax({
                                url: "",
                                type: "POST",
                                data: formdata,
                                contentType: false,
                                cache: false,
                                processData: false,
                                beforeSend: function(){
                                },
                                success: function(data){
                                    $(".kota").remove();
                                    for(var i=0;i<data.length;i++){
                                        $("#kota").append(`<option class="kota" value="${data[i].id}">${data[i].name}</option>`);
                                    }
                                },
                                error: function(xhr, ajaxOptions, thrownError){
                                    alert("gagal");
                                }
                            });
                        }
                        
                    }
                    function leapYear(element){
                        var tahun=element.val();
                        var d = new Date();
                        d.setYear(tahun);
                        d.setMonth(1);
                        d.setDate(29);
                        return (d.getDate() == 29);
                    }
                    function months(){
                        var month=["Jan","Feb","Mar","Apr","Mei","Jun","Jul","Agu","Sep","Okt","Nop","Des"];
                        $(".bulan").remove();
                        var d=new Date();
                        for(var i=1;i<=12;i++){
                            $("#bulan").append(`<option class="bulan" value="${i}" ${d.getMonth()+1==i?"selected":""}>${month[i-1]}</option>`);
                        }
                    }
                    function tanggal(year, month){
                        var tgl=$("#tanggal").val();
                        $(".tanggal").remove();
                        var days=null;
                        if(parseInt(month.val())==2){
                            if(leapYear(year)){
                                days=29;
                            }
                            else{
                                days=28
                            }
                        }
                        else{
                            var thirtyone=[1,3,5,7,8,10,12];
                            var thirty=[2,4,6,9,11];
                            if(thirtyone.indexOf(parseInt(month.val()))>=0){
                                days=31;
                            }
                            if(thirty.indexOf(parseInt(month.val()))>=0){
                                days=30;
                            }
                        }
                        for(var i=1;i<=days;i++){
                            $("#tanggal").append(`<option class="tanggal" value="${i}" >${i}</option>`);
                        }
                        if(tgl){
                            if(tgl>days){
                                $("#tanggal").val("");
                            }
                            else{
                                $("#tanggal").val(tgl);
                            }
                        }
                        else{
                            $("#tanggal").val((new Date).getDate());
                        }
                    }

                    $("#tahun").val((new Date).getFullYear());

                    months();

                    tanggal($("#year"), $("#bulan"));

                    getProvinsi();

                    $("#provinsi").on("change", function(){
                        getProvinsi();
                    });

                    $("#tahun").on("change", function(){
                        tanggal($(this),$("#bulan"));
                    });

                    $("#bulan").on("change", function(){
                        tanggal($("#year"),$(this));
                    });
                    $("#form").on("submit", function(e){
                        $(".error").remove();
                        $("#result").remove();
                        e.preventDefault();
                        $.ajax({
                            url: "",
                            type: "POST",
                            data: new FormData(this),
                            contentType: false,
                            cache: false,
                            processData: false,
                            beforeSend: function(){
                            },
                            success: function(data){
                                $("#form").parent().append(`<pre id="result">${JSON.stringify(data, undefined, 2)}</pre>`);
                            },
                            error: function(xhr, ajaxOptions, thrownError){
                                if(xhr.responseJSON){
                                    if(xhr.responseJSON.errors){
                                        for(var key in xhr.responseJSON.errors){
                                            $(`[name="${key}"]`).parent().append(`<span class="error">${xhr.responseJSON.errors[key]}</span>`);
                                        }
                                    }
                                }
                            }
                        });
                    });
                })();
            </script>
            <?php
        }
    }

?>
