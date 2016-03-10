  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_128_64_xmm1_xmm12_xmm13             #  2     0x5   5      OPC=callq_label              
  vfmadd213pd %xmm13, %xmm1, %xmm2                #  3     0xa   5      OPC=vfmadd213pd_xmm_xmm_xmm  
  pand %xmm12, %xmm1                              #  4     0xf   5      OPC=pand_xmm_xmm             
  vaddsubpd %xmm11, %xmm2, %xmm11                 #  5     0x14  5      OPC=vaddsubpd_xmm_xmm_xmm    
  unpckhpd %xmm11, %xmm1                          #  6     0x19  5      OPC=unpckhpd_xmm_xmm         
  retq                                            #  7     0x1e  1      OPC=retq                     
                                                                                                     
.size target, .-target
