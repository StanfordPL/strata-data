  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmaxsd %xmm3, %xmm3, %xmm12    #  1     0     4      OPC=vmaxsd_xmm_xmm_xmm     
  movq %xmm2, %xmm1              #  2     0x4   4      OPC=movq_xmm_xmm           
  vunpcklpd %xmm1, %xmm1, %xmm1  #  3     0x8   4      OPC=vunpcklpd_xmm_xmm_xmm  
  unpcklps %xmm12, %xmm1         #  4     0xc   4      OPC=unpcklps_xmm_xmm       
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
