  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movslq %ebx, %rdx                  #  1     0     3      OPC=movslq_r64_r32  
  callq .move_032_016_ecx_r8w_r9w    #  2     0x3   5      OPC=callq_label     
  callq .move_032_016_edx_r10w_r11w  #  3     0x8   5      OPC=callq_label     
  callq .clear_zf                    #  4     0xd   5      OPC=callq_label     
  callq .read_zf_into_rcx            #  5     0x12  5      OPC=callq_label     
  callq .move_016_032_r10w_r11w_ecx  #  6     0x17  5      OPC=callq_label     
  movswq %r8w, %rbx                  #  7     0x1c  4      OPC=movswq_r64_r16  
  callq .move_016_032_r8w_r9w_ebx    #  8     0x20  5      OPC=callq_label     
  retq                               #  9     0x25  1      OPC=retq            
                                                                               
.size target, .-target
