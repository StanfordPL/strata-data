  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vpmovzxdq %xmm2, %xmm10       #  1     0     5      OPC=vpmovzxdq_xmm_xmm   
  vmovq %xmm1, %xmm12           #  2     0x5   4      OPC=vmovq_xmm_xmm       
  vsubps %ymm10, %ymm12, %ymm6  #  3     0x9   5      OPC=vsubps_ymm_ymm_ymm  
  vminps %xmm6, %xmm6, %xmm14   #  4     0xe   4      OPC=vminps_xmm_xmm_xmm  
  movss %xmm14, %xmm1           #  5     0x12  5      OPC=movss_xmm_xmm       
  retq                          #  6     0x17  1      OPC=retq                
                                                                              
.size target, .-target
