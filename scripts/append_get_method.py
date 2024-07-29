import re, os

def add_get_method_to_classes(lua_file_path):
    # Pattern to match class definitions and their initializations
    class_pattern = re.compile(r'---@class (\w+)')
    class_init_pattern = re.compile(r'(\w+) = {}')
    
    # Read the content of the Lua file
    with open(lua_file_path, 'r', encoding='utf-8') as file:
        content = file.readlines()
    
    # Prepare to write modified content
    modified_content = []
    current_class_name = None
    for line in content:
        modified_content.append(line)
        # Check if the line contains a class definition
        class_match = class_pattern.search(line)
        if class_match:
            current_class_name = class_match.group(1)
        # Check if the line is a class initialization
        if current_class_name:
            init_match = class_init_pattern.search(line)
            if init_match and init_match.group(1) == current_class_name:
                # Prepare the get method string
                get_method = f"\n---@return {current_class_name}\nfunction {current_class_name}:get() end\n"
                # Append the get method to the output
                modified_content.append(get_method)
                current_class_name = None  # Reset current class name
    
    # Write the modified content back to the file
    with open(lua_file_path, 'w', encoding='utf-8') as file:
        file.writelines(modified_content)

def process_directory(directory_path):
    # Loop through all files in the directory
    for filename in os.listdir(directory_path):
        if filename.endswith('.lua'):
            full_path = os.path.join(directory_path, filename)
            print(f"Processing {full_path}...")
            add_get_method_to_classes(full_path)
    print("Finished appending get method to all files")

# Example usage
directory_path = 'Mods/shared/types'
process_directory(directory_path)