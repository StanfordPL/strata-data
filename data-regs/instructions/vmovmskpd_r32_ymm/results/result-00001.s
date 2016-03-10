  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  vmovapd %ymm1, %ymm7   #  1     0    4      OPC=vmovapd_ymm_ymm    
  vmovdqu %ymm7, %ymm9   #  2     0x4  4      OPC=vmovdqu_ymm_ymm    
  vmovmskpd %ymm9, %rbx  #  3     0x8  5      OPC=vmovmskpd_r64_ymm  
  retq                   #  4     0xd  1      OPC=retq               
                                                                     
.size target, .-target
