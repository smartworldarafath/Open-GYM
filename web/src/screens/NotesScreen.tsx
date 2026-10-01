import React, { useState } from 'react';
import { useGymStore } from '../store/useGymStore';
import { BookOpen, Plus, Trash2, Calendar } from 'lucide-react';

export const NotesScreen: React.FC = () => {
  const { notes, addNote, deleteNote } = useGymStore();
  const [showAddModal, setShowAddModal] = useState(false);
  const [title, setTitle] = useState('');
  const [content, setContent] = useState('');

  const handleAdd = (e: React.FormEvent) => {
    e.preventDefault();
    if (!title.trim()) return;
    addNote(title.trim(), content.trim());
    setTitle('');
    setContent('');
    setShowAddModal(false);
  };

  return (
    <div className="max-w-4xl mx-auto space-y-6 pb-24 animate-in fade-in duration-200">
      <div className="flex items-center justify-between">
        <div>
          <h2 className="text-xl font-black text-white tracking-tight">Gym Journal</h2>
          <p className="text-xs text-neutral-400 mt-0.5">
            Log cues, form notes, fatigue, and recovery thoughts
          </p>
        </div>
        <button
          onClick={() => setShowAddModal(true)}
          className="p-2 rounded-xl bg-[#D9A184] text-[#140D09] text-xs font-black flex items-center gap-1 active:scale-95"
        >
          <Plus className="w-4 h-4" /> New Note
        </button>
      </div>

      <div className="space-y-3">
        {notes.length === 0 ? (
          <div className="p-8 text-center bg-[#161616] rounded-2xl border border-[#262626] text-neutral-400 text-xs">
            No notes yet. Add your workout cues and personal observations!
          </div>
        ) : (
          notes.map((note) => (
            <div
              key={note.id}
              className="bg-[#181818] border border-[#282828] rounded-2xl p-4 space-y-2 hover:border-[#333] transition-all"
            >
              <div className="flex items-start justify-between">
                <div>
                  <h4 className="text-sm font-black text-white">{note.title}</h4>
                  <span className="text-[10px] text-neutral-500 block mt-0.5">
                    {new Date(note.date).toLocaleDateString('en-US', {
                      weekday: 'short',
                      month: 'short',
                      day: 'numeric',
                      year: 'numeric',
                    })}
                  </span>
                </div>
                <button
                  onClick={() => deleteNote(note.id)}
                  className="p-1 rounded-lg text-neutral-500 hover:text-red-400 hover:bg-[#252525] transition-colors"
                >
                  <Trash2 className="w-4 h-4" />
                </button>
              </div>

              {note.content && (
                <p className="text-xs text-neutral-300 leading-relaxed whitespace-pre-wrap">
                  {note.content}
                </p>
              )}
            </div>
          ))
        )}
      </div>

      {/* Modal */}
      {showAddModal && (
        <div className="fixed inset-0 z-50 bg-black/80 backdrop-blur-sm flex items-center justify-center p-4">
          <div className="bg-[#181818] border border-[#2B2B2B] rounded-3xl w-full max-w-md p-5 space-y-4 animate-in zoom-in-95 duration-200">
            <h3 className="text-lg font-black text-white">New Journal Entry</h3>
            <form onSubmit={handleAdd} className="space-y-3">
              <div>
                <label className="text-xs font-bold text-neutral-400 block mb-1">Title</label>
                <input
                  type="text"
                  required
                  value={title}
                  onChange={(e) => setTitle(e.target.value)}
                  placeholder="e.g. Squat cue: push through heels"
                  className="w-full bg-[#121212] border border-[#2B2B2B] rounded-xl px-3 py-2 text-sm text-white focus:outline-none focus:border-[#D9A184]"
                />
              </div>

              <div>
                <label className="text-xs font-bold text-neutral-400 block mb-1">Content</label>
                <textarea
                  rows={4}
                  value={content}
                  onChange={(e) => setContent(e.target.value)}
                  placeholder="Write your notes..."
                  className="w-full bg-[#121212] border border-[#2B2B2B] rounded-xl px-3 py-2 text-sm text-white focus:outline-none focus:border-[#D9A184]"
                />
              </div>

              <div className="pt-2 flex gap-2">
                <button
                  type="button"
                  onClick={() => setShowAddModal(false)}
                  className="flex-1 py-2.5 rounded-xl bg-[#242424] text-neutral-300 font-bold text-xs"
                >
                  Cancel
                </button>
                <button
                  type="submit"
                  className="flex-1 py-2.5 rounded-xl bg-[#D9A184] text-[#140D09] font-black text-xs"
                >
                  Save Entry
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
};
