  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP   Bytes  Opcode                    
.target:                     #        0     0      OPC=<label>               
  vpbroadcastd %xmm3, %ymm5  #  1     0     5      OPC=vpbroadcastd_ymm_xmm  
  movdqu %xmm5, %xmm3        #  2     0x5   4      OPC=movdqu_xmm_xmm        
  vmovdqu %xmm2, %xmm1       #  3     0x9   4      OPC=vmovdqu_xmm_xmm       
  minss %xmm3, %xmm1         #  4     0xd   4      OPC=minss_xmm_xmm         
  retq                       #  5     0x11  1      OPC=retq                  
                                                                             
.size target, .-target
