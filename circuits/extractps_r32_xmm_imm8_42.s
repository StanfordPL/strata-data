  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpckhpd %xmm1, %xmm1, %xmm13  #  1     0    4      OPC=vunpckhpd_xmm_xmm_xmm  
  movd %xmm13, %ebx               #  2     0x4  5      OPC=movd_r32_xmm           
  retq                            #  3     0x9  1      OPC=retq                   
                                                                                  
.size target, .-target
