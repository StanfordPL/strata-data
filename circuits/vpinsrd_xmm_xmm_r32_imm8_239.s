  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  movd %ebx, %xmm13                 #  1     0     5      OPC=movd_xmm_r32             
  vmovsd %xmm2, %xmm2, %xmm4        #  2     0x5   4      OPC=vmovsd_xmm_xmm_xmm       
  vmovddup %xmm13, %xmm9            #  3     0x9   5      OPC=vmovddup_xmm_xmm         
  vunpckhps %xmm9, %xmm4, %xmm10    #  4     0xe   5      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpcklqdq %xmm10, %xmm2, %xmm1  #  5     0x13  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                              #  6     0x18  1      OPC=retq                     
                                                                                       
.size target, .-target
