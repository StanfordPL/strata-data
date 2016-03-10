  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  unpckhps %xmm1, %xmm1  #  1     0    3      OPC=unpckhps_xmm_xmm  
  vmovupd %xmm1, %xmm7   #  2     0x3  4      OPC=vmovupd_xmm_xmm   
  orps %xmm7, %xmm7      #  3     0x7  3      OPC=orps_xmm_xmm      
  movd %xmm7, %ebx       #  4     0xa  4      OPC=movd_r32_xmm      
  retq                   #  5     0xe  1      OPC=retq              
                                                                    
.size target, .-target
