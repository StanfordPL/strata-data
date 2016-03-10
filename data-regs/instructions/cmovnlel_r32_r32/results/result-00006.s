  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  setle %al          #  1     0    3      OPC=setle_r8        
  movsbl %al, %edx   #  2     0x3  3      OPC=movsbl_r32_r8   
  shlq $0x1, %rdx    #  3     0x6  3      OPC=shlq_r64_one    
  cmovzl %ecx, %ebx  #  4     0x9  3      OPC=cmovzl_r32_r32  
  retq               #  5     0xc  1      OPC=retq            
                                                              
.size target, .-target
