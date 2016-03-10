  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                   
.target:                             #        0     0      OPC=<label>              
  vmovshdup %xmm1, %xmm9             #  1     0     4      OPC=vmovshdup_xmm_xmm    
  vcvtdq2pd %ymm9, %ymm11            #  2     0x4   5      OPC=vcvtdq2pd_ymm_ymm    
  vandnps %ymm11, %ymm11, %ymm8      #  3     0x9   5      OPC=vandnps_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xe   5      OPC=callq_label          
  punpcklqdq %xmm1, %xmm1            #  5     0x13  4      OPC=punpcklqdq_xmm_xmm   
  retq                               #  6     0x17  1      OPC=retq                 
                                                                                    
.size target, .-target
