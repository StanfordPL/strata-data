  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                          
.target:                                        #        0     0      OPC=<label>                     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label                 
  vfnmsub213pd %xmm7, %xmm1, %xmm2              #  2     0x5   5      OPC=vfnmsub213pd_xmm_xmm_xmm    
  vfmsubadd231pd %xmm6, %xmm6, %xmm2            #  3     0xa   5      OPC=vfmsubadd231pd_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13           #  4     0xf   5      OPC=callq_label                 
  movupd %xmm13, %xmm1                          #  5     0x14  5      OPC=movupd_xmm_xmm              
  retq                                          #  6     0x19  1      OPC=retq                        
                                                                                                      
.size target, .-target
