  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vxorps %xmm1, %xmm1, %xmm9  #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  vcvtps2dq %xmm9, %xmm8      #  2     0x4   5      OPC=vcvtps2dq_xmm_xmm   
  vpor %ymm9, %ymm8, %ymm6    #  3     0x9   5      OPC=vpor_ymm_ymm_ymm    
  movddup %xmm6, %xmm1        #  4     0xe   4      OPC=movddup_xmm_xmm     
  retq                        #  5     0x12  1      OPC=retq                
                                                                            
.size target, .-target
