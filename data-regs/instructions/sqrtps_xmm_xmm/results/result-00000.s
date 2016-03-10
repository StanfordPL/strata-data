  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  pxor %xmm1, %xmm1     #  1     0    4      OPC=pxor_xmm_xmm     
  vsqrtps %xmm2, %xmm2  #  2     0x4  4      OPC=vsqrtps_xmm_xmm  
  xorps %xmm2, %xmm1    #  3     0x8  3      OPC=xorps_xmm_xmm    
  retq                  #  4     0xb  1      OPC=retq             
                                                                  
.size target, .-target
