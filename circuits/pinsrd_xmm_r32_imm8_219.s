  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovhlps %xmm1, %xmm1, %xmm4    #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm   
  vmovd %ebx, %xmm15              #  2     0x4   4      OPC=vmovd_xmm_r32          
  vunpcklps %xmm15, %xmm4, %xmm8  #  3     0x8   5      OPC=vunpcklps_xmm_xmm_xmm  
  movlhps %xmm8, %xmm1            #  4     0xd   4      OPC=movlhps_xmm_xmm        
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
