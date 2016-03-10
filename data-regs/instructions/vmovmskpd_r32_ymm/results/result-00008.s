  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  vmovmskpd %ymm1, %rbx  #  1     0    4      OPC=vmovmskpd_r64_ymm  
  negb %bh               #  2     0x4  2      OPC=negb_rh            
  retq                   #  3     0x6  1      OPC=retq               
                                                                     
.size target, .-target
