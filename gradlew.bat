/*
 * Copyright 2018 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package androidx.core.view;

/**
 * An interface that can be implemented by Views to provide scroll related APIs.
 */
public interface ScrollingView {
    /**
     * <p>Compute the horizontal range that the horizontal scrollbar
     * represents.</p>
     *
     * <p>The range is expressed in arbitrary units that must be the same as the
     * units used by {@link #computeHorizontalScrollExtent()} and
     * {@link #computeHorizontalScrollOffset()}.</p>
     *
     * <p>The default range is the drawing width of this view.</p>
     *
     * @return the total horizontal range represented by the horizontal
     *         scrollbar
     *
     * @see #computeHorizontalScrollExtent()
     * @see #computeHorizontalScrollOffset()
     */
    int computeHorizontalScrollRange();

    /**
     * <p>Compute the horizontal offset of the horizontal scrollbar's thumb
     * within the horizontal range. This value is used to compute the position
     * of the thumb within the scrollbar's track.</p>
     *
     * <p>The range is expressed in arbitrary units that must be the same as the
     * units used by {@link #computeHorizontalScrollRange()} and
     * {@link #computeHorizontalScrollExtent()}.</p>
     *
     * <p>The default offset is the scroll offset of this view.</p>
     *
     * @return the horizontal offset of the scrollbar's thumb
     *
     * @see #computeHorizontalScrollRange()
     * @see #computeHorizontalScrollExtent()
     */
    int computeHorizontalScrollOffset();

    /**
     * <p>Compute the horizontal extent of the horizontal scrollbar's thumb
     * within the horizontal range. This value is used to compute the length
     * of the thumb within the scrollbar's track.</p>
     *
     * <p>The range is expressed in arbitrary units that must be the same as the
     * units used by {@link #computeHorizontalScrollRange()} and
     * {@link #computeHorizontalScrollOffset()}.</p>
     *
     * <p>The default extent is the drawing width of this view.</p>
     *
     * @return the horizontal extent of the scrollbar's thumb
     *
     * @see #computeHorizontalScrollRange()
     * @see #computeHorizontalScrol