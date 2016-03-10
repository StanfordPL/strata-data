  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label     
  callq .move_128_064_xmm1_r8_r9                #  2     0x5   5      OPC=callq_label     
  movslq %r11d, %r9                             #  3     0xa   3      OPC=movslq_r64_r32  
  callq .move_032_064_r8d_r9d_rbx               #  4     0xd   5      OPC=callq_label     
  retq                                          #  5     0x12  1      OPC=retq            
                                                                                          
.size target, .-target
