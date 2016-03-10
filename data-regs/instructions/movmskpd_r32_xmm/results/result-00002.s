  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  vmovmskpd %xmm1, %rbx  #  1     0    4      OPC=vmovmskpd_r64_xmm  
  orb %bh, %bl           #  2     0x4  2      OPC=orb_r8_rh          
  xchgw %bx, %bx         #  3     0x6  3      OPC=xchgw_r16_r16      
  retq                   #  4     0x9  1      OPC=retq               
                                                                     
.size target, .-target
