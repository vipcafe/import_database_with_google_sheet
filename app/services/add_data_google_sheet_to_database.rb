class AddDataGoogleSheetToDatabase
  def worksheet(sheet_id)
    #shett_idx vị trí trang tính hiện tại
    sheet_idx = 0

    #session config google với ruby và xác thực quyền qua file google_drive_config.json
    session = GoogleDrive::Session.from_config("config/google_drive_config.json")

    #worksheet: kết nối với trang google sheet muốn lấy data (thông qua sheet_id)
    begin
      google_sheet = session.spreadsheet_by_key(sheet_id).worksheets[sheet_idx]
      return google_sheet
    rescue
      puts "403 "
      puts "please add email : googlesheetapi@connecticapi.iam.gserviceaccount.com  -> add share if google sheet"
      puts "Or line sheet_id not found"
    end
  end
end
