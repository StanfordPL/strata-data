  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  2     0x5   5      OPC=callq_label              
  vmulps %xmm2, %xmm1, %xmm2                    #  3     0xa   4      OPC=vmulps_xmm_xmm_xmm       
  vfmadd231ps %xmm4, %xmm5, %xmm2               #  4     0xe   5      OPC=vfmadd231ps_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  5     0x13  5      OPC=callq_label              
  movsldup %xmm7, %xmm1                         #  6     0x18  4      OPC=movsldup_xmm_xmm         
  retq                                          #  7     0x1c  1      OPC=retq                     
                                                                                                   
.size target, .-target
