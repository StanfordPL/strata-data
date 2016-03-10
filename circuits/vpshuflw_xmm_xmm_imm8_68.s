  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  vfnmadd231pd %xmm9, %xmm9, %xmm9                #  2     0x5   5      OPC=vfnmadd231pd_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11             #  3     0xa   5      OPC=callq_label               
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3  #  4     0xf   5      OPC=callq_label               
  vpbroadcastq %xmm8, %ymm12                      #  5     0x14  5      OPC=vpbroadcastq_ymm_xmm      
  vpunpckldq %xmm12, %xmm3, %xmm3                 #  6     0x19  5      OPC=vpunpckldq_xmm_xmm_xmm    
  vmovlhps %xmm11, %xmm3, %xmm1                   #  7     0x1e  5      OPC=vmovlhps_xmm_xmm_xmm      
  retq                                            #  8     0x23  1      OPC=retq                      
                                                                                                      
.size target, .-target
