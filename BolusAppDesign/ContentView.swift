
//  ContentView.swift
//  BolusAppDesign


import SwiftUI

struct InfoSheet: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        VStack {
            
            Text("App info goes here + Resources")
            
            Button {
                dismiss()
            } label: {
                Text("Dismiss")
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray)
        
    }
    
}


struct ContentView: View {
    
    @State private var field1: String = ""
    @State private var field2: String = ""
    @State private var field3: String = ""
    @State private var field4: String = ""
    @State private var field5: String = ""
    
    @FocusState private var field1Focus: Bool
    @FocusState private var field2Focus: Bool
    @FocusState private var field3Focus: Bool
    @FocusState private var field4Focus: Bool
    @FocusState private var field5Focus: Bool
    
    @State private var showResults: Bool = false
    
    @State private var showInfo: Bool = false
    
    // Set fields to empty
    private func reset() {
        
        self.field1 = ""
        self.field2 = ""
        self.field3 = ""
        self.field4 = ""
        
    }
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
                if !showResults {
                    
                    //MARK: Carbs Modules
                    VStack {
                        
                        //Carbs
                        VStack {
                            
                            HStack {
                                VStack(spacing: 10) {
                                    Text("Carbs")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    
                                    Text("grams")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                .padding()
                                
                                TextField("carbs", text: $field1, prompt: Text("e.g. 40").foregroundColor(.gray).font(.system(size: 22)))
                                    .font(.system(size: 22))
                                    .foregroundColor(.white)
                                    .keyboardType(.numberPad)
                                    .padding(10)
                                    .focused($field1Focus)
                                    .background(Color.black.opacity(0.3))
                                    .cornerRadius(10)
                                    .onTapGesture {
                                        field1Focus = true
                                    }
                                    .padding(10)
                                
                            }
                        }
                        
                        // Divider between stacks
                        Divider()
                        
                        //Carbs Ratio
                        VStack {
                            HStack {
                                VStack(spacing: 10) {
                                    Text("Carbs Ratio")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    
                                    Text("grams")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                .padding()
                                
                                TextField("carbs ratio", text: $field2, prompt: Text("e.g. 45").foregroundColor(.gray).font(.system(size: 22)))
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .keyboardType(.numberPad)
                                    .padding(10)
                                    .focused($field2Focus)
                                    .background(Color.black.opacity(0.5))
                                    .cornerRadius(10)
                                    .onTapGesture {
                                        field2Focus = true
                                    }
                                    .padding(10)
                            }
                        }
                        
                    }
                    .background(Color.black.opacity(0.25))
                    .cornerRadius(10)
                    .padding()
                    .padding(.top) // Extra top padding
                    
                    
                    //MARK: BG Modules
                    VStack {
                        
                        //Target BG
                        VStack {
                            
                            HStack {
                                VStack(spacing: 10) {
                                    Text("Target BG")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    
                                    Text("mg/dl")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                .padding()
                                
                                TextField("email", text: $field3, prompt: Text("e.g. 100").foregroundColor(.gray).font(.system(size: 22)))
                                    .font(.system(size: 22))
                                    .foregroundColor(.white)
                                    .keyboardType(.numberPad)
                                    .padding(10)
                                    .focused($field3Focus)
                                    .background(Color.black.opacity(0.3))
                                    .cornerRadius(10)
                                    .onTapGesture {
                                        field3Focus = true
                                    }
                                    .padding(10)
                                
                            }
                        }
                        
                        
                        Divider()
                        
                        //Current BG
                        VStack {
                            HStack {
                                VStack(spacing: 10) {
                                    Text("Current BG")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    
                                    Text("mg/dl")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                .padding()
                                
                                TextField("email", text: $field4, prompt: Text("e.g. 135").foregroundColor(.gray).font(.system(size: 22)))
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .keyboardType(.numberPad)
                                    .padding(10)
                                    .focused($field4Focus)
                                    .background(Color.black.opacity(0.5))
                                    .cornerRadius(10)
                                    .onTapGesture {
                                        field4Focus = true
                                    }
                                    .padding(10)
                            }
                        }
                        
                        Divider()
                        
                        //Sensitivity Factor
                        VStack {
                            HStack {
                                VStack(spacing: 10) {
                                    Text("Sensitivity Factor")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    
                                    Text("mg/dl")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                .padding()
                                
                                TextField("sensitivity factor", text: $field5, prompt: Text("e.g. 100").foregroundColor(.gray).font(.system(size: 22)))
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .keyboardType(.numberPad)
                                    .padding(10)
                                    .focused($field5Focus)
                                    .background(Color.black.opacity(0.5))
                                    .cornerRadius(10)
                                    .onTapGesture {
                                        field5Focus = true
                                    }
                                    .padding(10)
                            }
                        }
                        
                    }
                    .background(Color.black.opacity(0.25))
                    .cornerRadius(10)
                    .padding()
                    
                    
                } else {
                    
                    // TODO: Results View
                    VStack {
                        
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                }
                
                Button {
                    reset()
                    showResults.toggle()
                } label: {
                    
                    Text(!showResults ? "Calculate" : "Calculate Again")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 120)
                        .padding(10)
                        .background(.blue)
                        .cornerRadius(10)
                        .padding()
                    
                }
                
            }
            .background(Color("backgroundGray"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color("barGray"), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Bolus Guide")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .fontDesign(.rounded)
                        .foregroundColor(.white)
                }
                
                ToolbarItem(placement: .primaryAction) {
                    
                    Button {
                        showInfo.toggle()
                    } label: {
                        
                        Image(systemName: "info.circle.fill")
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    
                }
            }
            .fullScreenCover(isPresented: $showInfo) {
                InfoSheet()
            }
            

        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
