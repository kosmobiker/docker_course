import yaml
import json
import sys

# Load the YAML file
def main():
    if len(sys.argv) < 2:
        print('Usage: python script.py <yaml_file>')
        sys.exit(1)
    yaml_file = sys.argv[1]
    with open(yaml_file) as file:
        data = yaml.load(file, Loader=yaml.FullLoader)
    # Convert the YAML data to JSON format
    json_data = json.dumps(data)

    # Print the JSON data in a formatted way
    print(json.dumps(json.loads(json_data), indent=4))
    

if __name__ == "__main__":
    main()