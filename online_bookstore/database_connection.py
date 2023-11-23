import firebase_admin
from firebase_admin import credentials, firestore
from tabulate import tabulate

# Initialize Firebase (if not already initialized)
if not firebase_admin._apps:
    # NEED TO CHANGE DIRECTORY IN YOUR LOCAL MACHINE 
    cred = credentials.Certificate('/Users/jagadishravulapalli/Desktop/code/online_bookstore/Bookstorekey.json')
    firebase_admin.initialize_app(cred)

db = firestore.client()

def print_collection_as_table(collection_name):
    collection_ref = db.collection(collection_name)
    docs = collection_ref.stream()

    # Creating a list of dictionaries
    data = [doc.to_dict() for doc in docs]
    
    # If data is not empty, print as a table
    if data:
        print(f"--- {collection_name} ---")
        print(tabulate(data, headers="keys", tablefmt="grid"))
    else:
        print(f"No data in {collection_name} collection.")
    print("\n")

# Print all documents from each collection as tables
print_collection_as_table('Books')
print_collection_as_table('Users')
print_collection_as_table('Orders')
print_collection_as_table('OrderDetails')