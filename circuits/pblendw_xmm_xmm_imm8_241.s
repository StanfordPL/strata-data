  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vxorpd %xmm2, %xmm1, %xmm14          #  2     0x5   4      OPC=vxorpd_xmm_xmm_xmm  
  vpmovzxwq %xmm14, %ymm0              #  3     0x9   5      OPC=vpmovzxwq_ymm_xmm   
  vpxor %xmm0, %xmm1, %xmm10           #  4     0xe   4      OPC=vpxor_xmm_xmm_xmm   
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label         
  retq                                 #  6     0x17  1      OPC=retq                
                                                                                     
.size target, .-target
