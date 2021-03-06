Application reviewer help documentation
=======================================

This is documentation for service administrators for the Provider
Screening Module. Usually these are state Medicaid agency staffers.

How do I use the enrollment verification process?
-------------------------------------------------

Verification is checking an enrollment with federal or state data
sources and visually inspecting the license(s) or certification(s) in a
submitted enrollment.

Click "Enrollments" in the navigation bar and go to the "Pending" tab.
Click the "Review" link for the enrollment you want to verify. You'll
see a list of things that you want to verify about the pending
enrollment before approving it. Under "Auto Screening", click "View" or
"View Log" to see the "External Source Screening Log," which will tell
you whether the PSM has been able to automatically verify each piece of
enrollment data with an external information source. If you are
satisfied with that result, or if you go to the government database
yourself and manually verify that piece of the enrollment, click the
"Verified" checkbox for that row.

Check the Provider Information:

-  Is this person's National Provider Identifier accurate and valid, as
   listed in `the National Plan and Provider Enumeration System
   registry <https://npiregistry.cms.hhs.gov/>`__? If not, you should
   reject the enrollment.
-  Is this person in the `Social Security Administration's Death Master
   File <https://www.ssa.gov/dataexchange/request_dmf.html>`__ (`how to
   access <https://classic.ntis.gov/products/ssa-dmf/>`__)? If so, SSA
   lists them as dead, in which case you should reject the enrollment.
-  What does `PECOS (the federal Medicare Provider Enrollment, Chain,
   and Ownership System) <https://pecos.cms.hhs.gov/>`__ say about the
   provider's NPI? Is the Provider enrolled? If they are not, you should
   reject the enrollment.
-  Is this provider on the `List of Excluded Individuals and Entities
   provided by the Office of the Inspector General for the US Department
   of Health and Human
   Services <https://oig.hhs.gov/exclusions/exclusions_list.asp>`__? If
   so, you should reject the enrollment.
-  Does this provider have an active exclusion record in the `federal
   System for Award Management <https://www.sam.gov/>`__? (Click "Search
   Records".) If so, you should reject the enrollment.

Check the License Information (more details below). Look at the files to
see whether they are legitimate licenses or certifications, and (if
applicable) check with the issuing board or authority to validate the
license. Go back to the list of pending enrollments and click the
NPI/UMPI number to view the enrollment details, and look at the License
Info tab. Confirm that the issue and renewal end dates in the image are
the same as in the enrollment. If you see any discrepancies, you should
reject the enrollment.

At the bottom of the screen, choose "Reject" or "Approve" as
appropriate.

Future verification processes will be increasingly automated.

How do I look at and change the risk assessment rules?
------------------------------------------------------

Right now that's not something you can do in the PSM, but it'll be
possible in a future version. For the moment, speak with your internal
IT team. You can also refer to the Centers for Medicare and Medicaid
Services' rules, and to the
`regulations <https://www.law.cornell.edu/cfr/text/42/424.518>`__ they
implement.

What's the difference between an agreement and an addendum?
-----------------------------------------------------------

Both agreements and addenda are documents meant for the "Provider
Statement" step in the enrollment process; they are where you place
legal terms and conditions for providers to sign. They are identical in
format: each agreement and each addendum has a title and content. You
can format and style the format of the content.

You should create a few agreements to cover the major types of providers
in your program, and then use special provider-specific addenda for
additional statements that providers need to sign.

Where do I create, edit, or delete agreements and addenda?
----------------------------------------------------------

Click on "Functions" in the navigation bar, and look at the "Agreements
& Addendums" tab. There, you can create or edit agreements and addenda.

You cannot delete an agreement or an addendum.

Where do I create, edit, or delete a provider type?
---------------------------------------------------

Click on "Functions" in the navigation bar, and look at the "Provider
Types" tab. Each provider type has a name and zero or more agreements or
addenda. You can edit a provider type to change its name and to add or
remove an agreement or addendum.

You cannot create or delete a provider type.
