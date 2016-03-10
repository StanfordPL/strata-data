  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP   Bytes  Opcode               
.target:                #        0     0      OPC=<label>          
  vmovapd %xmm2, %xmm4  #  1     0     4      OPC=vmovapd_xmm_xmm  
  movd %ebx, %xmm0      #  2     0x4   4      OPC=movd_xmm_r32     
  vmovupd %xmm4, %xmm1  #  3     0x8   4      OPC=vmovupd_xmm_xmm  
  movss %xmm0, %xmm1    #  4     0xc   4      OPC=movss_xmm_xmm    
  retq                  #  5     0x10  1      OPC=retq             
                                                                   
.size target, .-target
