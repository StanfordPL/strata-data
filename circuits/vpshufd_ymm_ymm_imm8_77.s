  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vmovshdup %ymm2, %ymm1               #  1     0     4      OPC=vmovshdup_ymm_ymm        
  vmovshdup %ymm1, %ymm4               #  2     0x4   4      OPC=vmovshdup_ymm_ymm        
  callq .move_128_64_xmm1_xmm10_xmm11  #  3     0x8   5      OPC=callq_label              
  vpand %xmm11, %xmm2, %xmm8           #  4     0xd   5      OPC=vpand_xmm_xmm_xmm        
  vpunpcklqdq %ymm4, %ymm8, %ymm11     #  5     0x12  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  mulsd %xmm4, %xmm4                   #  6     0x16  4      OPC=mulsd_xmm_xmm            
  vunpckhps %ymm4, %ymm11, %ymm8       #  7     0x1a  4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpcklqdq %ymm2, %ymm8, %ymm1      #  8     0x1e  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                 #  9     0x22  1      OPC=retq                     
                                                                                          
.size target, .-target
