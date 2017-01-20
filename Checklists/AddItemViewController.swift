
import UIKit

class AddItemViewController : UITableViewController {
    
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func done() {
        print("Contents of the text field: \(textField.text!)")
        
        let newItem = ChecklistItem()
        newItem.text = textField.text!
        newItem.checked = false
        items.append(newItem)
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel() {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textField.becomeFirstResponder()
    }
    
    /*
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let oldText = textField.text! as NSString
        let newText = oldText.replacingCharacters(in: range, with: string) as NSString
        
        doneBarButton.isEnabled = (newText.length > 0)
        
        return true
    }*/
    
    @IBAction func editingChanged(_ sender: Any) {
        doneBarButton.isEnabled = textField.text! != ""
    }
    
}
