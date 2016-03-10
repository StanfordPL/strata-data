  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  movshdup %xmm1, %xmm3             #  1     0     4      OPC=movshdup_xmm_xmm   
  callq .move_128_064_xmm3_r10_r11  #  2     0x4   5      OPC=callq_label        
  callq .move_128_064_xmm3_r8_r9    #  3     0x9   5      OPC=callq_label        
  andnl %r9d, %r11d, %r9d           #  4     0xe   5      OPC=andnl_r32_r32_r32  
  callq .move_032_064_r8d_r9d_rbx   #  5     0x13  5      OPC=callq_label        
  retq                              #  6     0x18  1      OPC=retq               
                                                                                 
.size target, .-target
