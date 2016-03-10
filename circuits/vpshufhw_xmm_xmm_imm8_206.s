  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vorps %xmm2, %xmm2, %xmm7           #  1     0     4      OPC=vorps_xmm_xmm_xmm      
  vunpckhps %xmm7, %xmm7, %xmm1       #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_byte_5_of_ymm1_to_r9b   #  3     0x8   5      OPC=callq_label            
  callq .move_byte_0_of_ymm1_to_r8b   #  4     0xd   5      OPC=callq_label            
  callq .move_r9b_to_byte_13_of_ymm1  #  5     0x12  5      OPC=callq_label            
  movsd %xmm7, %xmm1                  #  6     0x17  4      OPC=movsd_xmm_xmm          
  callq .move_r8b_to_byte_12_of_ymm1  #  7     0x1b  5      OPC=callq_label            
  retq                                #  8     0x20  1      OPC=retq                   
                                                                                       
.size target, .-target
