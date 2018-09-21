#prints all possible orders of elements of group
def printOrdersOfElements(group):
    print "Orders of elements:", sorted(set([element.order() for element in group.list()]))

#prints all possible orders of subgroups of group
def printOrdersOfSubgroups(group):
    print "Orders of subgroups:", sorted(set([conjugacyClassSubgroup.order() for conjugacyClassSubgroup in group.conjugacy_classes_subgroups()]))


groupOrder = input ('Enter the group order:')
ID = input('Enter the GAP ID:')
group = gap.AllSmallGroups(groupOrder)[ID]
permGroup = PermutationGroup(gap_group = group.AsPermGroup())
print "The group has GAP ID", gap.IdGroup(group)
printOrdersOfElements(permGroup)
printOrdersOfSubgroups(permGroup)









