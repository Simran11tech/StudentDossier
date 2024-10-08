

# StudentDossier
![image](https://github.com/user-attachments/assets/048f02a9-4a97-453d-bc87-d3daa1e03398)

## Vision

The StudentDossier is a blockchain-based solution designed to securely manage and verify digital student identities. By leveraging smart contracts on the Ethereum network, this system provides a transparent and immutable way to store and access academic documents such as marksheets, certificates, and other important student records. Our goal is to ensure that student credentials are tamper-proof, easily accessible, and verifiable by authorized parties.

## Flowchart

Below is the high-level flowchart of how the StudentDossier operates:

1. **Admin Actions:**
   - **Add Student**: Register a new student with basic information.
   - **Upload Document**: Associate a document (e.g., marksheet, certificate) with a student by storing its IPFS hash.

2. **Student Actions:**
   - **View Information**: Students or authorized parties can query their basic information and document details.

3. **Document Verification:**
   - Retrieve the IPFS hash and timestamp for verification of documents.



## Contract Address

- **Network**: Ethereum
- **Contract Address**: 0xec88e310005f0f6d9d1bbc184732812eaf28c970
  
![image](https://github.com/user-attachments/assets/2375e774-72e1-4619-a716-c0baa5101499)

## Contract Functions

1. **addStudent(address studentAddress, string memory name, uint256 dob)**:
   - Adds or updates student information.

2. **uploadDocument(address studentAddress, string memory docType, string memory ipfsHash)**:
   - Uploads a document for a student using its IPFS hash.

3. **getDocument(address studentAddress, string memory docType)**:
   - Retrieves a student's document details.

4. **getStudentInfo(address studentAddress)**:
   - Retrieves basic student information.

5. **transferAdmin(address newAdmin)**:
   - Transfers ownership of the contract to a new admin.

## Future Scope

- **Enhanced Security**: Implement role-based access control for finer-grained permissions.
- **Interoperability**: Integrate with other education platforms for seamless data sharing.
- **Scalability**: Explore layer-2 solutions or alternative blockchains to handle high transaction volumes.
- **User Interface**: Develop a web or mobile application to provide an easy-to-use interface for interacting with the smart contract.

## Contact

For further inquiries or contributions, please contact:

- **Project Lead**: [Simran Singh]
- **Email**: [simransingh90879@gmail.com]
- **GitHub**: [https://github.com/Simran11tech]

