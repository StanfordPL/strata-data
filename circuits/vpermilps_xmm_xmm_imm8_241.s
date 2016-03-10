  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovshdup %xmm2, %xmm13          #  1     0     4      OPC=vmovshdup_xmm_xmm      
  vmovdqu %xmm13, %xmm1            #  2     0x4   5      OPC=vmovdqu_xmm_xmm        
  vunpcklps %xmm2, %xmm13, %xmm12  #  3     0x9   4      OPC=vunpcklps_xmm_xmm_xmm  
  movsd %xmm12, %xmm1              #  4     0xd   5      OPC=movsd_xmm_xmm          
  retq                             #  5     0x12  1      OPC=retq                   
                                                                                    
.size target, .-target
