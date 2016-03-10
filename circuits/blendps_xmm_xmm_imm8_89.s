  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  pmovzxdq %xmm11, %xmm3               #  2     0x5   6      OPC=pmovzxdq_xmm_xmm        
  vpunpckhdq %xmm3, %xmm1, %xmm14      #  3     0xb   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movlhps %xmm14, %xmm1                #  4     0xf   4      OPC=movlhps_xmm_xmm         
  vpmovzxdq %xmm10, %ymm5              #  5     0x13  5      OPC=vpmovzxdq_ymm_xmm       
  movss %xmm5, %xmm1                   #  6     0x18  4      OPC=movss_xmm_xmm           
  retq                                 #  7     0x1c  1      OPC=retq                    
                                                                                         
.size target, .-target
