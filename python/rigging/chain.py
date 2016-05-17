import pymel.core as pm

class Chain():
    def __init__(self, start_joint, end_joint):
        self.start_joint = start_joint
        self.end_joint = end_joint
        self.children = pm.listRelatives(self.start_joint, pa=1, ad=1, type='joint')
)
        self.joints = self.children + self.start_joint
        self.joints.reverse()
        
        #chain markup
        

    def create_duplicate_chain(self, start_joint):
        
        return
    
    def get_chain_members(self):
        return self.joints
    
    def get_chain(self, side, region):
        #find joint chain with specified side and region
        return self.joints
        