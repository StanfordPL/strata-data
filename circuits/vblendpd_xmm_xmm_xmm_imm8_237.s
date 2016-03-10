  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label      
  callq .clear_zf                               #  2     0x5   5      OPC=callq_label      
  callq .move_032_064_r12d_r13d_rbx             #  3     0xa   5      OPC=callq_label      
  callq .move_128_064_xmm3_r8_r9                #  4     0xf   5      OPC=callq_label      
  vzeroall                                      #  5     0x14  3      OPC=vzeroall         
  cmovneq %rbx, %r9                             #  6     0x17  4      OPC=cmovneq_r64_r64  
  callq .move_064_128_r8_r9_xmm1                #  7     0x1b  5      OPC=callq_label      
  retq                                          #  8     0x20  1      OPC=retq             
                                                                                           
.size target, .-target
