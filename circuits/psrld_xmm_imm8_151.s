  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovaps %xmm1, %xmm10        #  1     0     4      OPC=vmovaps_xmm_xmm     
  vpandn %xmm1, %xmm10, %xmm7  #  2     0x4   4      OPC=vpandn_xmm_xmm_xmm  
  movapd %xmm7, %xmm5          #  3     0x8   4      OPC=movapd_xmm_xmm      
  cvtps2pd %xmm5, %xmm13       #  4     0xc   4      OPC=cvtps2pd_xmm_xmm    
  movq %xmm13, %xmm1           #  5     0x10  5      OPC=movq_xmm_xmm        
  retq                         #  6     0x15  1      OPC=retq                
                                                                             
.size target, .-target
