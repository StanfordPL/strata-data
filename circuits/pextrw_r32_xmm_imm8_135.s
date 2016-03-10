  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  xorq %rbx, %rbx                     #  1     0     3      OPC=xorq_r64_r64      
  pmovsxbd %xmm1, %xmm11              #  2     0x3   6      OPC=pmovsxbd_xmm_xmm  
  sqrtsd %xmm11, %xmm1                #  3     0x9   5      OPC=sqrtsd_xmm_xmm    
  callq .move_byte_15_of_ymm1_to_r9b  #  4     0xe   5      OPC=callq_label       
  callq .move_byte_14_of_ymm1_to_r8b  #  5     0x13  5      OPC=callq_label       
  callq .move_008_016_r8b_r9b_bx      #  6     0x18  5      OPC=callq_label       
  retq                                #  7     0x1d  1      OPC=retq              
                                                                                  
.size target, .-target
