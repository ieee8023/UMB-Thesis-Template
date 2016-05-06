UMB-Thesis-Template
===================

A Latex template for the UMB Thesis. This can be used for both, Masters and Ph.D.

Although it is not required to use this template: Included in this project are the .project and .texlipse files for TeXlipse using Eclipse which are explained here: http://www.youtube.com/watch?v=xfQ2U2kG4Wg


Start by editing the sample latex document <code> umb-thesis.tex </code>

You can compile on the command line using <code>pdflatex umb-thesis.tex </code> to generate a new umb-thesis.pdf file. If you are using TeXlipse when you save a new pdf file will be generated automatically.

<hr>

This template is made possible by:

Henry Z. Lo  - UMass Boston

Joseph Paul Cohen - UMass Boston

Swami Iyer - UMass Boston

Stephen Revilak - UMass Boston 

Laurentiu Cristofor - UMass Boston

John Heidemann

Richard B. Wales

Eduardo Krell

Leslie Lamport

## Documentation

Here is some basic documentation for the parameters to the template. You should start with the example tex file that uses the template.

User-visible options and commands special in this style:

Optional arguments to "\documentstyle" command:

    MA, MS, PhD, EdD
        Type of degree being awarded.  Default is "PhD".  If "EdD"
        is specified, a "\nodepartment" command is assumed (but
        can be overridden with a "\department{...}" command).

    single, double
        Line spacing.  Default is "double".
        NOTE:  Single spacing is NON-CONFORMING to the RFTADP.

  twoside
        Two-sided printing (for a duplex printer).
        NOTE:  two-sided printing is NON-CONFORMING to the RFTADP.

  nohyphenatetitles, hyphenatetitles
      Don't hyphenate section (and subsection...) titles.
        Default is hyphenatetitles.

Commands (to specify preliminary page info):

    \title{X}
        Set the document title to "X".  Must always be specified.

    \author{X}
        Set the author to "X".  Must always be specified.

    \authortitles{X}
        Set the author titles to "X".  Must always be specified.

    \department{X}
        Set the department name (in the degree title) to "X".
        Must always be specified, unless a "\nodepartment" command
        is given, or unless the "EdD" argument is supplied in the
        "\documentstyle" command.

    \thesis{X}
        Set the document type to "thesis", and the degree name to
        "X".  This command is normally not needed, since an "MA"
        or "MS" option to "\documentstyle" will do the same thing
        in all standard situations.

    \dissertation{X}
        Set the document type to "dissertation", and the degree
        name to "X".  This command is normally not needed, since
        a "PhD" or "EdD" option to "\documentstyle" will do the
        same thing in all standard situations.

    \nodepartment
        Omit the department name from the degree title.  This
        command should be used only in situations where the
        department name is officially unnecessary (such as when an
        "EdD" or customized degree title is specified).

    \degreemonth{X}
        Set the month in which the degree will be awarded to "X".
        Default is the current month.

    \degreeyear{X}
        Set the year in which the degree will be awarded to "X".
        Default is the current year.

    \copyrightyear{X}
        Set the year which appears in the copyright notice to "X".
        Default is the degree year (see above).  If the copyright
        and degree years are different, both will be included in
        the copyright notice (with the copyright year first).

    \nocopyright
        Don't include a copyright notice at all.  A completely
        blank "copyright" page will be produced instead.

    \titlesize{X}
        Print the document title (on the "title" and "abstract"
        pages) in "X" size type.  Default is "Large" (17-point).
        Although any LaTeX type size name will be accepted, the
        only non-default value likely to give satisfactory results
        is "LARGE" (20-point).

    \chair{X, Y}
        The committee chair's name is "X", academic title is "Y".
        There may be up to three chairs (co-chairs); co-chairs
        are printed in the given order on the "signature" page
        (before the other members specified in "\member" commands;
        see below).

    \member{X, Y}
        The name of one committee member (other than the chair or
        a co-chair) is "X", and academic title is "Y". There may 
        be up to six of these; they are printed in order on the
        "signature" page, after the chair(s).

    \director{X}
        The name of the Program Director. This is printed in the
        right side of the page, after the chair and members of the
        committee.

    \deptchair{X}
        The name of the Department Chair. This is printed in the
        right side of the page, after the chair, members of the
        committee, and Program Director

    \dedication{X}
        The text "X" is used as the dedication (in a "center"
        environment).  Default is not to have a dedication.

    \acknowledgments{X}
        The text "X" is used for the "ACKNOWLEDGMENTS" page.
        Default is not to have an "ACKNOWLEDGMENTS" page.

    \vitaitem{X}{Y}
        An entry is added to the "VITA" page, with year "X" and
        text "Y".

    \publication{X}
        A "publication" entry is added to the "VITA" page, with
        text "X".

    \presentation{X}
        A "presentation" entry is added to the "VITA" page, with
        text "X".

    \abstract{X}
        The text "X" is used as the abstract.

    \makeintropages
        Generate the introductory pages in the proper sequence.


