  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .move_064_032_rcx_r12d_r13d  #  1     0     5      OPC=callq_label   
  salb $0x1, %dh                     #  2     0x5   2      OPC=salb_rh_one   
  callq .move_032_064_r12d_r13d_rbx  #  3     0x7   5      OPC=callq_label   
  callq .move_016_008_dx_r12b_r13b   #  4     0xc   5      OPC=callq_label   
  movw %r12w, %cx                    #  5     0x11  4      OPC=movw_r16_r16  
  shrq %cl, %rbx                     #  6     0x15  3      OPC=shrq_r64_cl   
  retq                               #  7     0x18  1      OPC=retq          
                                                                             
.size target, .-target
