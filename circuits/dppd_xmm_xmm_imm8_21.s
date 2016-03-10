  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                  
.target:                         #        0     0      OPC=<label>             
  movdqu %xmm1, %xmm5            #  1     0     4      OPC=movdqu_xmm_xmm      
  vxorps %xmm1, %xmm5, %xmm13    #  2     0x4   4      OPC=vxorps_xmm_xmm_xmm  
  mulsd %xmm2, %xmm1             #  3     0x8   4      OPC=mulsd_xmm_xmm       
  movapd %xmm1, %xmm12           #  4     0xc   5      OPC=movapd_xmm_xmm      
  vaddsd %xmm12, %xmm13, %xmm12  #  5     0x11  5      OPC=vaddsd_xmm_xmm_xmm  
  movq %xmm12, %xmm1             #  6     0x16  5      OPC=movq_xmm_xmm        
  retq                           #  7     0x1b  1      OPC=retq                
                                                                               
.size target, .-target
