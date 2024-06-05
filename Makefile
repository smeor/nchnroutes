produce:
	git pull
	curl -o delegated-apnic-latest https://ftp.apnic.net/stats/apnic/delegated-apnic-latest
	# curl -o china_ip_list.txt https://raw.githubusercontent.com/17mon/china_ip_list/master/china_ip_list.txt
	curl -o china_ip_list.txt https://ispip.clang.cn/all_cn_cidr.txt
	python3 produce.py
	# sudo mv routes4.conf /etc/bird/routes4.conf
	mv routes4.conf /etc/routes4.conf
	# sudo birdc configure
	birdc4 configure
	# sudo mv routes6.conf /etc/bird/routes6.conf
	# sudo birdc6 configure
	mv routes6.conf /etc/routes6.conf
	birdc6 configure
