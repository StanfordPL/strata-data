  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP   Bytes  Opcode                 
.target:                 #        0     0      OPC=<label>            
  vmovd %xmm1, %ecx      #  1     0     4      OPC=vmovd_r32_xmm      
  xaddb %cl, %cl         #  2     0x4   3      OPC=xaddb_r8_r8        
  cvtsi2ssl %ecx, %xmm1  #  3     0x7   4      OPC=cvtsi2ssl_xmm_r32  
  andnpd %xmm1, %xmm1    #  4     0xb   4      OPC=andnpd_xmm_xmm     
  hsubpd %xmm1, %xmm1    #  5     0xf   4      OPC=hsubpd_xmm_xmm     
  retq                   #  6     0x13  1      OPC=retq               
                                                                      
.size target, .-target
