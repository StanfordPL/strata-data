  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vmovupd %xmm3, %xmm11         #  1     0     4      OPC=vmovupd_xmm_xmm      
  vpxor %xmm11, %xmm2, %xmm14   #  2     0x4   5      OPC=vpxor_xmm_xmm_xmm    
  vandnps %xmm2, %xmm3, %xmm11  #  3     0x9   4      OPC=vandnps_xmm_xmm_xmm  
  vorpd %xmm14, %xmm11, %xmm1   #  4     0xd   5      OPC=vorpd_xmm_xmm_xmm    
  retq                          #  5     0x12  1      OPC=retq                 
                                                                               
.size target, .-target
