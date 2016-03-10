  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmulps %ymm3, %ymm2, %ymm13       #  1     0     4      OPC=vmulps_ymm_ymm_ymm       
  vpxor %xmm3, %xmm3, %xmm11        #  2     0x4   4      OPC=vpxor_xmm_xmm_xmm        
  vpunpckldq %ymm11, %ymm13, %ymm9  #  3     0x8   5      OPC=vpunpckldq_ymm_ymm_ymm   
  vunpcklps %ymm11, %ymm9, %ymm15   #  4     0xd   5      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpcklqdq %ymm9, %ymm9, %ymm12  #  5     0x12  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vhaddps %ymm12, %ymm15, %ymm1     #  6     0x17  5      OPC=vhaddps_ymm_ymm_ymm      
  retq                              #  7     0x1c  1      OPC=retq                     
                                                                                       
.size target, .-target
