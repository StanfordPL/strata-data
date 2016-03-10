  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vfmsub213ps %xmm4, %xmm1, %xmm2               #  2     0x5   5      OPC=vfmsub213ps_xmm_xmm_xmm  
  pmovzxdq %xmm6, %xmm12                        #  3     0xa   6      OPC=pmovzxdq_xmm_xmm         
  vfmadd231ps %xmm12, %xmm12, %xmm2             #  4     0x10  5      OPC=vfmadd231ps_xmm_xmm_xmm  
  vunpckhps %xmm2, %xmm2, %xmm14                #  5     0x15  4      OPC=vunpckhps_xmm_xmm_xmm    
  pmovzxdq %xmm14, %xmm1                        #  6     0x19  6      OPC=pmovzxdq_xmm_xmm         
  unpcklps %xmm14, %xmm1                        #  7     0x1f  4      OPC=unpcklps_xmm_xmm         
  retq                                          #  8     0x23  1      OPC=retq                     
                                                                                                   
.size target, .-target
