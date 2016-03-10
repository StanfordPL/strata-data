  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  vmovmskpd %ymm1, %rbx  #  1     0    4      OPC=vmovmskpd_r64_ymm  
  movw %bx, %bx          #  2     0x4  3      OPC=movw_r16_r16       
  retq                   #  3     0x7  1      OPC=retq               
                                                                     
.size target, .-target
