  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vandnps %xmm1, %xmm2, %xmm14  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  pxor %xmm1, %xmm14            #  2     0x4  5      OPC=pxor_xmm_xmm         
  movups %xmm14, %xmm1          #  3     0x9  4      OPC=movups_xmm_xmm       
  retq                          #  4     0xd  1      OPC=retq                 
                                                                              
.size target, .-target
