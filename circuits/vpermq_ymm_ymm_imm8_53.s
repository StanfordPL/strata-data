  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovdqa %ymm2, %ymm11           #  1     0     4      OPC=vmovdqa_ymm_ymm        
  vunpcklpd %xmm2, %xmm11, %xmm0  #  2     0x4   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vbroadcastsd %xmm0, %ymm1       #  3     0x8   5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhpd %ymm1, %ymm2, %ymm1   #  4     0xd   4      OPC=vunpckhpd_ymm_ymm_ymm  
  punpcklqdq %xmm1, %xmm1         #  5     0x11  4      OPC=punpcklqdq_xmm_xmm     
  retq                            #  6     0x15  1      OPC=retq                   
                                                                                   
.size target, .-target
