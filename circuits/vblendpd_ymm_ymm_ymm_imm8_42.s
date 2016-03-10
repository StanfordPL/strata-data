  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovdqa %ymm3, %ymm5            #  1     0     4      OPC=vmovdqa_ymm_ymm        
  vmovddup %ymm2, %ymm15          #  2     0x4   4      OPC=vmovddup_ymm_ymm       
  sqrtss %xmm3, %xmm5             #  3     0x8   4      OPC=sqrtss_xmm_xmm         
  vunpckhpd %ymm5, %ymm15, %ymm1  #  4     0xc   4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                            #  5     0x10  1      OPC=retq                   
                                                                                   
.size target, .-target
