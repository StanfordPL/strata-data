  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vpsubd %ymm2, %ymm2, %ymm14           #  1     0     4      OPC=vpsubd_ymm_ymm_ymm  
  vpor %xmm14, %xmm3, %xmm13            #  2     0x4   5      OPC=vpor_xmm_xmm_xmm    
  pmovzxbq %xmm13, %xmm5                #  3     0x9   6      OPC=pmovzxbq_xmm_xmm    
  vcvtdq2pd %xmm5, %xmm12               #  4     0xf   4      OPC=vcvtdq2pd_xmm_xmm   
  vorps %ymm14, %ymm2, %ymm5            #  5     0x13  5      OPC=vorps_ymm_ymm_ymm   
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x18  5      OPC=callq_label         
  movdqa %xmm5, %xmm1                   #  7     0x1d  4      OPC=movdqa_xmm_xmm      
  retq                                  #  8     0x21  1      OPC=retq                
                                                                                      
.size target, .-target
