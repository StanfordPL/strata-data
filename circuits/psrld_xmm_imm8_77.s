  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  xorps %xmm11, %xmm11                 #  2     0x5   4      OPC=xorps_xmm_xmm       
  vsubps %xmm11, %xmm12, %xmm13        #  3     0x9   5      OPC=vsubps_xmm_xmm_xmm  
  vmovsd %xmm11, %xmm13, %xmm14        #  4     0xe   5      OPC=vmovsd_xmm_xmm_xmm  
  pmovzxbq %xmm14, %xmm1               #  5     0x13  6      OPC=pmovzxbq_xmm_xmm    
  retq                                 #  6     0x19  1      OPC=retq                
                                                                                     
.size target, .-target
