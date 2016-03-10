  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label               
  vpmovzxdq %xmm6, %xmm0                        #  2     0x5   5      OPC=vpmovzxdq_xmm_xmm         
  vpmovzxwd %xmm3, %ymm6                        #  3     0xa   5      OPC=vpmovzxwd_ymm_xmm         
  vfnmsub213pd %xmm3, %xmm6, %xmm0              #  4     0xf   5      OPC=vfnmsub213pd_xmm_xmm_xmm  
  vfmadd213pd %xmm2, %xmm1, %xmm0               #  5     0x14  5      OPC=vfmadd213pd_xmm_xmm_xmm   
  vpor %xmm0, %xmm0, %xmm1                      #  6     0x19  4      OPC=vpor_xmm_xmm_xmm          
  retq                                          #  7     0x1d  1      OPC=retq                      
                                                                                                    
.size target, .-target
