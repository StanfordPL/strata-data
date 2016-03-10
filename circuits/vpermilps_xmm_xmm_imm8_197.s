  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                          
.target:                                          #        0     0      OPC=<label>                     
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label                 
  vfnmadd132pd %xmm8, %xmm4, %xmm10               #  3     0xa   5      OPC=vfnmadd132pd_xmm_xmm_xmm    
  vcvttps2dq %ymm10, %ymm1                        #  4     0xf   5      OPC=vcvttps2dq_ymm_ymm          
  vfmsubadd213pd %xmm9, %xmm1, %xmm8              #  5     0x14  5      OPC=vfmsubadd213pd_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3  #  6     0x19  5      OPC=callq_label                 
  vorps %xmm3, %xmm9, %xmm1                       #  7     0x1e  4      OPC=vorps_xmm_xmm_xmm           
  retq                                            #  8     0x22  1      OPC=retq                        
                                                                                                        
.size target, .-target
