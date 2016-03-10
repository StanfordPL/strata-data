  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  movzbl %cl, %eax     #  1     0    3      OPC=movzbl_r32_r8     
  movb %ch, %ah        #  2     0x3  2      OPC=movb_rh_rh        
  cltq                 #  3     0x5  2      OPC=cltq              
  rolq $0x1, %rax      #  4     0x7  3      OPC=rolq_r64_one      
  cmovngel %ecx, %ebx  #  5     0xa  3      OPC=cmovngel_r32_r32  
  retq                 #  6     0xd  1      OPC=retq              
                                                                  
.size target, .-target
