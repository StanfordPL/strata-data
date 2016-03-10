  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vmovups %xmm2, %xmm1               #  1     0     4      OPC=vmovups_xmm_xmm       
  callq .move_128_064_xmm2_r12_r13   #  2     0x4   5      OPC=callq_label           
  callq .move_032_064_r12d_r13d_rcx  #  3     0x9   5      OPC=callq_label           
  callq .move_016_008_cx_r8b_r9b     #  4     0xe   5      OPC=callq_label           
  callq .move_r8b_to_byte_2_of_ymm1  #  5     0x13  5      OPC=callq_label           
  callq .move_r9b_to_byte_3_of_ymm1  #  6     0x18  5      OPC=callq_label           
  vpbroadcastd %xmm1, %ymm1          #  7     0x1d  5      OPC=vpbroadcastd_ymm_xmm  
  retq                               #  8     0x22  1      OPC=retq                  
                                                                                     
.size target, .-target
