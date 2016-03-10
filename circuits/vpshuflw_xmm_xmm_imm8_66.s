  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vmovshdup %xmm2, %xmm1             #  1     0     4      OPC=vmovshdup_xmm_xmm     
  vbroadcastss %xmm2, %xmm3          #  2     0x4   5      OPC=vbroadcastss_xmm_xmm  
  punpckldq %xmm3, %xmm1             #  3     0x9   4      OPC=punpckldq_xmm_xmm     
  callq .move_byte_5_of_ymm1_to_r8b  #  4     0xd   5      OPC=callq_label           
  callq .move_byte_4_of_ymm1_to_r9b  #  5     0x12  5      OPC=callq_label           
  unpckhpd %xmm2, %xmm1              #  6     0x17  4      OPC=unpckhpd_xmm_xmm      
  callq .move_r9b_to_byte_2_of_ymm1  #  7     0x1b  5      OPC=callq_label           
  callq .move_r8b_to_byte_3_of_ymm1  #  8     0x20  5      OPC=callq_label           
  retq                               #  9     0x25  1      OPC=retq                  
                                                                                     
.size target, .-target
