  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vandps %xmm1, %xmm1, %xmm12       #  1     0    4      OPC=vandps_xmm_xmm_xmm       
  vmovupd %xmm2, %xmm1              #  2     0x4  4      OPC=vmovupd_xmm_xmm          
  vfmsub132pd %xmm3, %xmm12, %xmm1  #  3     0x8  5      OPC=vfmsub132pd_xmm_xmm_xmm  
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
