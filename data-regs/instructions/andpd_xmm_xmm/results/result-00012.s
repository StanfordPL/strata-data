  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  vmovaps %xmm2, %xmm7  #  1     0    4      OPC=vmovaps_xmm_xmm  
  pxor %xmm7, %xmm1     #  2     0x4  4      OPC=pxor_xmm_xmm     
  andnps %xmm2, %xmm1   #  3     0x8  3      OPC=andnps_xmm_xmm   
  retq                  #  4     0xb  1      OPC=retq             
                                                                  
.size target, .-target
