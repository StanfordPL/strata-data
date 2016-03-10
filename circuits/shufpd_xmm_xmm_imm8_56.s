  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vminpd %xmm2, %xmm2, %xmm4  #  1     0    4      OPC=vminpd_xmm_xmm_xmm  
  vmovddup %ymm4, %ymm0       #  2     0x4  4      OPC=vmovddup_ymm_ymm    
  punpcklqdq %xmm0, %xmm1     #  3     0x8  4      OPC=punpcklqdq_xmm_xmm  
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
