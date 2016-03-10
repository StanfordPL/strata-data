  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vbroadcastsd %xmm3, %ymm10       #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  vmovdqu %xmm10, %xmm14           #  2     0x5   5      OPC=vmovdqu_xmm_xmm        
  movdqa %xmm2, %xmm0              #  3     0xa   4      OPC=movdqa_xmm_xmm         
  movddup %xmm0, %xmm11            #  4     0xe   5      OPC=movddup_xmm_xmm        
  vunpckhps %xmm14, %xmm11, %xmm1  #  5     0x13  5      OPC=vunpckhps_xmm_xmm_xmm  
  retq                             #  6     0x18  1      OPC=retq                   
                                                                                    
.size target, .-target
