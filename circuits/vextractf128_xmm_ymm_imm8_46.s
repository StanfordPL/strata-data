  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovapd %ymm1, %ymm5             #  1     0     4      OPC=vmovapd_ymm_ymm          
  vpmovzxwq %xmm1, %xmm0           #  2     0x4   5      OPC=vpmovzxwq_xmm_xmm        
  vfmsub132ss %xmm0, %xmm0, %xmm1  #  3     0x9   5      OPC=vfmsub132ss_xmm_xmm_xmm  
  movdqa %xmm5, %xmm1              #  4     0xe   4      OPC=movdqa_xmm_xmm           
  retq                             #  5     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target
