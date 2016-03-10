  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_byte_14_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label           
  vmovlhps %xmm2, %xmm1, %xmm11       #  2     0x5   4      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_r8b_to_byte_2_of_ymm1   #  3     0x9   5      OPC=callq_label           
  unpckhpd %xmm11, %xmm1              #  4     0xe   5      OPC=unpckhpd_xmm_xmm      
  retq                                #  5     0x13  1      OPC=retq                  
                                                                                      
.size target, .-target
