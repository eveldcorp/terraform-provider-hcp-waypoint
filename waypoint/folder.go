package waypoint

type Folder struct {
	ID   string `json:"id"`
	Name string `json:"name"`
}

func (c *ClientImpl) CreateFolder(program Folder) (*Folder, error) {
	var result Folder
	return &result, nil
}

func (c *ClientImpl) GetFolder(id string) (*Folder, error) {
	var result Folder
	return &result, nil
}

func (c *ClientImpl) UpdateFolder(id string, program Folder) (*Folder, error) {
	var result Folder
	return &result, nil
}

func (c *ClientImpl) DeleteFolder(id string) error {
	return nil
}
