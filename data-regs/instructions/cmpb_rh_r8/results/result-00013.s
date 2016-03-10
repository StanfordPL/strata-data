  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %ah, %edi  #  1     0    3      OPC=movzbl_r32_rh  
  shlq $0x1, %rdi   #  2     0x3  3      OPC=shlq_r64_one   
  sbbb %bl, %ah     #  3     0x6  2      OPC=sbbb_rh_r8     
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
