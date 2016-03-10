  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .move_016_008_dx_r12b_r13b   #  1     0     5      OPC=callq_label  
  callq .move_064_032_rcx_r10d_r11d  #  2     0x5   5      OPC=callq_label  
  movb %r12b, %cl                    #  3     0xa   3      OPC=movb_r8_r8   
  callq .move_032_064_r10d_r11d_rbx  #  4     0xd   5      OPC=callq_label  
  shrq %cl, %rbx                     #  5     0x12  3      OPC=shrq_r64_cl  
  retq                               #  6     0x15  1      OPC=retq         
                                                                            
.size target, .-target
