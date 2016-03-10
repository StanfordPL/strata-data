  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  vmovmskpd %ymm1, %rbx  #  1     0    4      OPC=vmovmskpd_r64_ymm  
  movzbl %bl, %edx       #  2     0x4  3      OPC=movzbl_r32_r8      
  xorq %rdx, %rdx        #  3     0x7  3      OPC=xorq_r64_r64       
  setl %bh               #  4     0xa  3      OPC=setl_rh            
  retq                   #  5     0xd  1      OPC=retq               
                                                                     
.size target, .-target
