  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP   Bytes  Opcode                 
.target:                 #        0     0      OPC=<label>            
  vmovmskps %xmm1, %esp  #  1     0     4      OPC=vmovmskps_r32_xmm  
  movq $0x0, %rbx        #  2     0x4   10     OPC=movq_r64_imm64     
  orb %bh, %bl           #  3     0xe   2      OPC=orb_r8_rh          
  cmovnbl %esp, %ebx     #  4     0x10  3      OPC=cmovnbl_r32_r32    
  retq                   #  5     0x13  1      OPC=retq               
                                                                      
.size target, .-target
