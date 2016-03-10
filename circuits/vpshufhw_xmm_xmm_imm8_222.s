  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vunpckhps %xmm2, %xmm2, %xmm1       #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_byte_2_of_ymm1_to_r8b   #  2     0x4   5      OPC=callq_label            
  callq .move_r8b_to_byte_12_of_ymm1  #  3     0x9   5      OPC=callq_label            
  callq .move_byte_7_of_ymm1_to_r8b   #  4     0xe   5      OPC=callq_label            
  cvtsd2ss %xmm1, %xmm1               #  5     0x13  4      OPC=cvtsd2ss_xmm_xmm       
  movsd %xmm2, %xmm1                  #  6     0x17  4      OPC=movsd_xmm_xmm          
  callq .move_r8b_to_byte_13_of_ymm1  #  7     0x1b  5      OPC=callq_label            
  retq                                #  8     0x20  1      OPC=retq                   
                                                                                       
.size target, .-target
