  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  movaps %xmm2, %xmm6            #  1     0     3      OPC=movaps_xmm_xmm         
  vmovshdup %xmm1, %xmm3         #  2     0x3   4      OPC=vmovshdup_xmm_xmm      
  vunpckhps %xmm3, %xmm2, %xmm7  #  3     0x7   4      OPC=vunpckhps_xmm_xmm_xmm  
  movq %xmm6, %xmm1              #  4     0xb   4      OPC=movq_xmm_xmm           
  unpcklpd %xmm7, %xmm1          #  5     0xf   4      OPC=unpcklpd_xmm_xmm       
  retq                           #  6     0x13  1      OPC=retq                   
                                                                                  
.size target, .-target
