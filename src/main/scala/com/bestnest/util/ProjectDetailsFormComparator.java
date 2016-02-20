package com.bestnest.util;

import java.util.Comparator;

import com.bestnest.portal.web.form.ProjectDetailsForm;

public class ProjectDetailsFormComparator implements Comparator<ProjectDetailsForm> {

	public int compare(ProjectDetailsForm o1, ProjectDetailsForm o2) {
		if (o1.getBedRooms() > o2.getBedRooms()) {
			return 1;
		} else {
			return -1;
		}
	}

	
}
