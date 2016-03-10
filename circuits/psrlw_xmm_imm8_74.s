  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vcvtss2sd %xmm1, %xmm1, %xmm6  #  1     0     4      OPC=vcvtss2sd_xmm_xmm_xmm  
  vcvtdq2pd %xmm6, %xmm4         #  2     0x4   4      OPC=vcvtdq2pd_xmm_xmm      
  movapd %xmm4, %xmm1            #  3     0x8   4      OPC=movapd_xmm_xmm         
  xorpd %xmm4, %xmm1             #  4     0xc   4      OPC=xorpd_xmm_xmm          
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
