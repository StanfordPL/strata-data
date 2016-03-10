  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  xorq %rdi, %rdi      #  1     0    3      OPC=xorq_r64_r64      
  cmovngel %edi, %eax  #  2     0x3  3      OPC=cmovngel_r32_r32  
  testb %ah, %bl       #  3     0x6  2      OPC=testb_r8_rh       
  retq                 #  4     0x8  1      OPC=retq              
                                                                  
.size target, .-target
