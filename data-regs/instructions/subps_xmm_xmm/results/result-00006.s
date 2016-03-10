  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP  Bytes  Opcode                        
.target:                            #        0    0      OPC=<label>                   
  vpxor %xmm2, %xmm2, %xmm6         #  1     0    4      OPC=vpxor_xmm_xmm_xmm         
  vfnmsub231ps %xmm6, %xmm6, %xmm2  #  2     0x4  5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  addps %xmm2, %xmm1                #  3     0x9  3      OPC=addps_xmm_xmm             
  retq                              #  4     0xc  1      OPC=retq                      
                                                                                       
.size target, .-target
