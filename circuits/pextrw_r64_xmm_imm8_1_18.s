  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  movshdup %xmm1, %xmm1           #  1     0     4      OPC=movshdup_xmm_xmm        
  vpbroadcastd %xmm1, %xmm5       #  2     0x4   5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckhdq %xmm5, %xmm5, %xmm0  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpmovzxwq %xmm0, %ymm10         #  4     0xd   5      OPC=vpmovzxwq_ymm_xmm       
  movd %xmm10, %ebx               #  5     0x12  5      OPC=movd_r32_xmm            
  retq                            #  6     0x17  1      OPC=retq                    
                                                                                    
.size target, .-target
