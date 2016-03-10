  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  vmovapd %ymm1, %ymm7   #  1     0    4      OPC=vmovapd_ymm_ymm    
  vmovmskpd %ymm7, %rbx  #  2     0x4  4      OPC=vmovmskpd_r64_ymm  
  retq                   #  3     0x8  1      OPC=retq               
                                                                     
.size target, .-target
