  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vmaxps %ymm2, %ymm2, %ymm1        #  1     0     4      OPC=vmaxps_ymm_ymm_ymm        
  vpunpckhqdq %ymm1, %ymm2, %ymm6   #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm   
  vfnmsub132sd %xmm2, %xmm1, %xmm1  #  3     0x8   5      OPC=vfnmsub132sd_xmm_xmm_xmm  
  vfnmadd213pd %ymm3, %ymm1, %ymm2  #  4     0xd   5      OPC=vfnmadd213pd_ymm_ymm_ymm  
  punpckhqdq %xmm2, %xmm3           #  5     0x12  4      OPC=punpckhqdq_xmm_xmm        
  vpunpcklqdq %ymm3, %ymm6, %ymm1   #  6     0x16  4      OPC=vpunpcklqdq_ymm_ymm_ymm   
  retq                              #  7     0x1a  1      OPC=retq                      
                                                                                        
.size target, .-target
