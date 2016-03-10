  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_032_016_ecx_r12w_r13w  #  1     0     5      OPC=callq_label     
  movslq %ebx, %rsi                  #  2     0x5   3      OPC=movslq_r64_r32  
  incw %r12w                         #  3     0x8   4      OPC=incw_r16        
  callq .move_032_016_ecx_r8w_r9w    #  4     0xc   5      OPC=callq_label     
  movq %rsi, %rcx                    #  5     0x11  3      OPC=movq_r64_r64    
  callq .move_032_016_ecx_r10w_r11w  #  6     0x14  5      OPC=callq_label     
  callq .move_016_032_r10w_r11w_ecx  #  7     0x19  5      OPC=callq_label     
  callq .read_pf_into_rbx            #  8     0x1e  5      OPC=callq_label     
  callq .move_016_032_r8w_r9w_ebx    #  9     0x23  5      OPC=callq_label     
  retq                               #  10    0x28  1      OPC=retq            
                                                                               
.size target, .-target
