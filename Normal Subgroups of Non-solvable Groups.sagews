#returns a list of the non-solvable groups of order groupOrder
#elements of the list are tuples of the form (GAP ID, group)
def getNonSolvableGroups(groupOrder):
    allGroups = gap.AllSmallGroups(groupOrder)
    nonSolvableGroups = []
    for group in allGroups:
        permGroup = PermutationGroup(gap_group = group.AsPermGroup())
        if(not permGroup.is_solvable()):
            gapId = gap.IdGroup(group)
            nonSolvableGroups.append((gapId,permGroup))
    return nonSolvableGroups

#prints the GAP IDs of a list of tuples of the form (GAP ID, group)
def printIDs(groups):
    print "The non-solvable groups have GAP IDs:", [ID for (ID,group) in groups]
    return

#returns a list containing the possible orders that a normal subgroup of group can have
def getNormalSubgroupOrders(group):
    orders = []
    for conjugacyClassSubgroup in group.conjugacy_classes_subgroups():
        if(conjugacyClassSubgroup.is_normal()):
            orders.append(conjugacyClassSubgroup.order())
    return orders


groupOrder = input('Enter the order of the groups:')
nonSolvableGroups = getNonSolvableGroups(groupOrder)
printIDs(nonSolvableGroups)
for (ID, group) in nonSolvableGroups:
    print "Group", ID, "has normal subgroups of orders:", getNormalSubgroupOrders(group)
