# Julie George, Emily Herrett, Liam Smeeth, Harry Hemingway, Anoop Shah, Spiros Denaxas, 2024.

import sys, csv, re

codes = [{"code":"G715.00","system":"readv2"},{"code":"G714.11","system":"readv2"},{"code":"G716000","system":"readv2"},{"code":"G714.00","system":"readv2"},{"code":"G713.00","system":"readv2"},{"code":"G713.11","system":"readv2"},{"code":"G716.00","system":"readv2"},{"code":"G715000","system":"readv2"},{"code":"I715","system":"readv2"},{"code":"I713","system":"readv2"},{"code":"I716","system":"readv2"},{"code":"I714","system":"readv2"},{"code":"I714","system":"readv2"},{"code":"I713","system":"readv2"},{"code":"I716","system":"readv2"},{"code":"I715","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('abdominal-aortic-aneurysm-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["abdominal-aortic-aneurysm-aaa-rupture---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["abdominal-aortic-aneurysm-aaa-rupture---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["abdominal-aortic-aneurysm-aaa-rupture---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
