  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                  
.target:                         #        0     0      OPC=<label>             
  vmovdqu %xmm1, %xmm10          #  1     0     4      OPC=vmovdqu_xmm_xmm     
  movshdup %xmm10, %xmm0         #  2     0x4   5      OPC=movshdup_xmm_xmm    
  vpmovzxwq %xmm0, %xmm5         #  3     0x9   5      OPC=vpmovzxwq_xmm_xmm   
  vpandn %ymm10, %ymm10, %ymm12  #  4     0xe   5      OPC=vpandn_ymm_ymm_ymm  
  unpckhpd %xmm12, %xmm5         #  5     0x13  5      OPC=unpckhpd_xmm_xmm    
  movq %xmm5, %rbx               #  6     0x18  5      OPC=movq_r64_xmm        
  retq                           #  7     0x1d  1      OPC=retq                
                                                                               
.size target, .-target
