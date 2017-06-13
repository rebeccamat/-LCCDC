//
//  WhatsNewTableViewCell.swift
//  
//
//  Created by rebecca matthews on 5/3/17.
//
//

import UIKit
import EventKit


class EventsTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var whereLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var whenLabel: UILabel!
    @IBOutlet weak var addToCalendarButton: UIButton!
    @IBOutlet weak var eventImage: UIImageView!
    
    var viewController: UITableViewController?
    
    let eventStore = EKEventStore()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
   

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func requestAccessToCalendar() {
        eventStore.requestAccess(to: EKEntityType.event, completion: {
            (accessGranted: Bool, error: Error?) in
            
            if accessGranted == true {
                DispatchQueue.main.async(execute: {
                    self.insertEvent()
//                    self.loadCalendars()
//                    self.refreshTableView()
                })
            } else {
                DispatchQueue.main.async(execute: {
                    print("denied access")
//                    self.needPermissionView.fadeIn()
                })
            }
        })
    }
    
    @IBAction func addEventToCalendar(_ sender: Any) {
        let status = EKEventStore.authorizationStatus(for: EKEntityType.event)
        
        switch (status) {
        case EKAuthorizationStatus.notDetermined:
            // This happens on first-run
            self.requestAccessToCalendar()
        case EKAuthorizationStatus.authorized:
            self.insertEvent()
            // Things are in line with being able to show the calendars in the table view
//            loadCalendars()
//            refreshTableView()
        case EKAuthorizationStatus.restricted, EKAuthorizationStatus.denied:
            print("restricted/denied")
            // We need to help them give us permission
//            needPermissionView.fadeIn()
        }
//        // 1
//        let eventStore = EKEventStore()
//        
//        // 2
//        switch EKEventStore.authorizationStatus(for: EKEntityType.event) {
//        case .authorized:
//            insertEvent(store: eventStore)
//        case .denied:
//            print("Access denied")
//        case .notDetermined:
//        // 3
//            eventStore.requestAccess(to: EKEntityType.event, completion:
//                {[weak self] (granted: Bool, error: NSError!) -> Void in
//                    if granted {
//                        self!.insertEvent(store: eventStore)
//                    } else {
//                        print("Access denied")
//                    }
//            } as! EKEventStoreRequestAccessCompletionHandler)
//        default:
//            print("Case Default")
//        }
    }
    
    func insertEvent() {
        
        // 1
        let calendars = self.eventStore.calendars(for: EKEntityType.event)
            
        
        let calendar = calendars[0]
        
        print(calendar)
        
        // 3
        let startDate = NSDate()
        // 2 hours
        let endDate = startDate.addingTimeInterval(2 * 60 * 60)
                
        // 4
        // Create Event
        let event = EKEvent(eventStore: self.eventStore)
        event.calendar = calendar

        event.title = "New Meeting"
        event.startDate = startDate as Date
        event.endDate = endDate as Date
        
        // 5
        // Save Event in Calendar
        do {
            try self.eventStore.save(event, span: EKSpan.thisEvent)
            
            let alertController = UIAlertController(
                title: "iOScreator",
                message: "Event \"" + event.title + "\" has been added",
                preferredStyle: UIAlertControllerStyle.alert)
            
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            self.viewController?.present(
                alertController,
                animated: true,
                completion: nil)
            
        } catch _ {
            print("There was an error")
        }
        
    }
}
