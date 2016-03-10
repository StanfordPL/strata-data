  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label              
  vcvtps2dq %xmm8, %xmm1                          #  3     0xa   5      OPC=vcvtps2dq_xmm_xmm        
  vpmovzxwd %xmm3, %ymm7                          #  4     0xf   5      OPC=vpmovzxwd_ymm_xmm        
  vfmadd132pd %xmm1, %xmm9, %xmm5                 #  5     0x14  5      OPC=vfmadd132pd_xmm_xmm_xmm  
  vfmadd213pd %xmm11, %xmm8, %xmm7                #  6     0x19  5      OPC=vfmadd213pd_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  7     0x1e  5      OPC=callq_label              
  retq                                            #  8     0x23  1      OPC=retq                     
                                                                                                     
.size target, .-target
