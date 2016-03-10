  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vfmadd231pd %xmm3, %xmm1, %xmm2      #  1     0     5      OPC=vfmadd231pd_xmm_xmm_xmm  
  vmovddup %ymm2, %ymm2                #  2     0x5   4      OPC=vmovddup_ymm_ymm         
  callq .move_128_64_xmm1_xmm10_xmm11  #  3     0x9   5      OPC=callq_label              
  vsqrtsd %xmm10, %xmm2, %xmm7         #  4     0xe   5      OPC=vsqrtsd_xmm_xmm_xmm      
  vmovhlps %xmm7, %xmm1, %xmm1         #  5     0x13  4      OPC=vmovhlps_xmm_xmm_xmm     
  retq                                 #  6     0x17  1      OPC=retq                     
                                                                                          
.size target, .-target
