# cdm_workout

sql_file.sql을 postgresql에서 실행  

csv파일을 copy concept from '~\Desktop\synthea_cdm_csv\concept.csv' with delimiter ',' csv header;을 사용하여 업로드  

workout1.ipynb 파일에서 conn = psycopg2.connect(host='localhost', dbname='test', user='postgres', password='1234', port='5432')  
부분에 본인이 맞는 값 대입
