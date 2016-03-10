  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vandnps %xmm3, %xmm3, %xmm14  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  xorpd %xmm3, %xmm3            #  2     0x4  4      OPC=xorpd_xmm_xmm        
  vpaddd %ymm14, %ymm3, %ymm1   #  3     0x8  5      OPC=vpaddd_ymm_ymm_ymm   
  retq                          #  4     0xd  1      OPC=retq                 
                                                                              
.size target, .-target
