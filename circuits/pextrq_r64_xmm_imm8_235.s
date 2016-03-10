  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vaddss %xmm1, %xmm1, %xmm13      #  1     0     4      OPC=vaddss_xmm_xmm_xmm     
  vpmovzxwq %xmm1, %ymm12          #  2     0x4   5      OPC=vpmovzxwq_ymm_xmm      
  subss %xmm12, %xmm13             #  3     0x9   5      OPC=subss_xmm_xmm          
  vunpckhpd %ymm13, %ymm13, %ymm3  #  4     0xe   5      OPC=vunpckhpd_ymm_ymm_ymm  
  vmovq %xmm3, %rbx                #  5     0x13  5      OPC=vmovq_r64_xmm          
  retq                             #  6     0x18  1      OPC=retq                   
                                                                                    
.size target, .-target
