  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  pmovzxdq %xmm2, %xmm13                        #  1     0     6      OPC=pmovzxdq_xmm_xmm    
  punpckhdq %xmm2, %xmm13                       #  2     0x6   5      OPC=punpckhdq_xmm_xmm   
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  3     0xb   5      OPC=callq_label         
  punpcklqdq %xmm6, %xmm3                       #  4     0x10  4      OPC=punpcklqdq_xmm_xmm  
  vpaddq %xmm3, %xmm13, %xmm13                  #  5     0x14  4      OPC=vpaddq_xmm_xmm_xmm  
  vmovsd %xmm3, %xmm13, %xmm1                   #  6     0x18  4      OPC=vmovsd_xmm_xmm_xmm  
  vmovupd %ymm1, %ymm1                          #  7     0x1c  4      OPC=vmovupd_ymm_ymm     
  retq                                          #  8     0x20  1      OPC=retq                
                                                                                              
.size target, .-target
