  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  movapd %xmm1, %xmm10         #  1     0    5      OPC=movapd_xmm_xmm      
  vmovss %xmm10, %xmm2, %xmm9  #  2     0x5  5      OPC=vmovss_xmm_xmm_xmm  
  movapd %xmm9, %xmm1          #  3     0xa  5      OPC=movapd_xmm_xmm      
  retq                         #  4     0xf  1      OPC=retq                
                                                                            
.size target, .-target
