# -*- mode:python; coding:utf-8 -*-

# Copyright (c) 2023 IBM Corp. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
"""Script to insert response prose in control markdown files."""

import pathlib
from typing import List


def insert_text_in_file(file_path: pathlib.Path, tags: List[str], text: str) -> bool:
    r"""Insert text lines after all tags found in file.

    Return True on success, False tags not found.
    Text is a string with appropriate \n line endings.
    """
    if not file_path.exists():
        print(f'File not found: {file_path}')
        return False
    lines: List[str] = []
    tag_hits = 0
    with file_path.open('r', encoding='utf-8') as f:
        lines = f.readlines()
    for ii, line in enumerate(lines):
        if line.find(tags[tag_hits]) >= 0:
            tag_hits += 1
            if tag_hits == len(tags):
                lines.insert(ii + 1, text)
                with file_path.open('w', encoding='utf-8') as f:
                    f.writelines(lines)
                return True
    return False


def set_status(file_path: pathlib.Path, nth_status: int, status: str) -> bool:
    """Set the implementation status for the nth entry in the file."""
    if not file_path.exists():
        print(f'File not found: {file_path}')
        return False
    with file_path.open('r', encoding='utf-8') as f:
        lines = f.readlines()
    nstatus = 0
    for ii, line in enumerate(lines):
        if line.find('#### Implementation Status:') >= 0:
            nstatus += 1
            if nstatus == nth_status:
                lines[ii] = f'#### Implementation Status: {status}'
                with file_path.open('w', encoding='utf-8') as f:
                    f.writelines(lines)
                return True
    return False


def insert_response_prose():
    file_path = pathlib.Path('./md_ACME_platform_ssp/ac/ac-2.md')
    prose = 'Implement properly for This System component.\n'
    if not insert_text_in_file(file_path, ['control: ac-2'], prose):
        return
    prose = 'Implement well for component DB and part d.\n'
    insert_text_in_file(file_path, ['item d.'], prose)
    set_status(file_path, 1, 'implemented')
    set_status(file_path, 2, 'partial')


if __name__ == '__main__':
    insert_response_prose()

