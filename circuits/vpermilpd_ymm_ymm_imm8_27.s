  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  vorpd %ymm2, %ymm2, %ymm1           #  1     0     4      OPC=vorpd_ymm_ymm_ymm  
  movsd %xmm2, %xmm1                  #  2     0x4   4      OPC=movsd_xmm_xmm      
  callq .move_byte_24_of_ymm1_to_r9b  #  3     0x8   5      OPC=callq_label        
  callq .move_r9b_to_byte_0_of_ymm1   #  4     0xd   5      OPC=callq_label        
  unpckhpd %xmm2, %xmm1               #  5     0x12  4      OPC=unpckhpd_xmm_xmm   
  retq                                #  6     0x16  1      OPC=retq               
                                                                                   
.size target, .-target
