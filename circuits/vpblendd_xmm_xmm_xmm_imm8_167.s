  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vmovshdup %xmm2, %xmm13           #  1     0    4      OPC=vmovshdup_xmm_xmm        
  vunpckhps %xmm13, %xmm3, %xmm10   #  2     0x4  5      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpcklqdq %xmm10, %xmm3, %xmm1  #  3     0x9  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                              #  4     0xe  1      OPC=retq                     
                                                                                      
.size target, .-target
