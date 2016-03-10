  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vandnps %xmm2, %xmm1, %xmm11  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  pxor %xmm11, %xmm2            #  2     0x4  5      OPC=pxor_xmm_xmm         
  movaps %xmm2, %xmm1           #  3     0x9  3      OPC=movaps_xmm_xmm       
  retq                          #  4     0xc  1      OPC=retq                 
                                                                              
.size target, .-target
