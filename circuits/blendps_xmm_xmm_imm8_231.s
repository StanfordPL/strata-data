  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovsd %xmm2, %xmm1, %xmm10       #  1     0     4      OPC=vmovsd_xmm_xmm_xmm       
  vmovshdup %xmm1, %xmm0            #  2     0x4   4      OPC=vmovshdup_xmm_xmm        
  vunpckhps %xmm0, %xmm2, %xmm9     #  3     0x8   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpcklqdq %ymm9, %ymm10, %ymm5  #  4     0xc   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movdqa %xmm5, %xmm1               #  5     0x11  4      OPC=movdqa_xmm_xmm           
  retq                              #  6     0x15  1      OPC=retq                     
                                                                                       
.size target, .-target
