  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpcklpd %xmm1, %xmm1, %xmm10  #  1     0    4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovaps %ymm10, %ymm4           #  2     0x4  5      OPC=vmovaps_ymm_ymm        
  cvtss2sil %xmm4, %ebx           #  3     0x9  4      OPC=cvtss2sil_r32_xmm      
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
