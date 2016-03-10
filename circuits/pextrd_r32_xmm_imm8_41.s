  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  movshdup %xmm1, %xmm4  #  1     0    4      OPC=movshdup_xmm_xmm  
  movapd %xmm4, %xmm0    #  2     0x4  4      OPC=movapd_xmm_xmm    
  movd %xmm0, %ebx       #  3     0x8  4      OPC=movd_r32_xmm      
  retq                   #  4     0xc  1      OPC=retq              
                                                                    
.size target, .-target
