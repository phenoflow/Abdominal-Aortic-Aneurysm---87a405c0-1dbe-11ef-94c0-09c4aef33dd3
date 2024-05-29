# Julie George, Emily Herrett, Liam Smeeth, Harry Hemingway, Anoop Shah, Spiros Denaxas, 2024.

import sys, csv, re

codes = [{"code":"7A11000","system":"readv2"},{"code":"7A13400","system":"readv2"},{"code":"7A13.00","system":"readv2"},{"code":"7A13z00","system":"readv2"},{"code":"7A13300","system":"readv2"},{"code":"7A13y00","system":"readv2"},{"code":"L193","system":"readv2"},{"code":"L188","system":"readv2"},{"code":"L184","system":"readv2"},{"code":"L18","system":"readv2"},{"code":"L183","system":"readv2"},{"code":"L181","system":"readv2"},{"code":"L199","system":"readv2"},{"code":"L189","system":"readv2"},{"code":"L195","system":"readv2"},{"code":"L198","system":"readv2"},{"code":"L192","system":"readv2"},{"code":"L19","system":"readv2"},{"code":"L182","system":"readv2"},{"code":"L185","system":"readv2"},{"code":"L194","system":"readv2"},{"code":"L191","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('abdominal-aortic-aneurysm-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["abdominal-aortic-aneurysm-aaa-replace---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["abdominal-aortic-aneurysm-aaa-replace---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["abdominal-aortic-aneurysm-aaa-replace---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
