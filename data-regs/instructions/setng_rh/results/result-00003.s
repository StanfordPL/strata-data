  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  setng %al        #  1     0    3      OPC=setng_r8      
  xorl %ebx, %ebx  #  2     0x3  2      OPC=xorl_r32_r32  
  shlq $0x1, %rbx  #  3     0x5  3      OPC=shlq_r64_one  
  xorb %bh, %al    #  4     0x8  2      OPC=xorb_r8_rh    
  setnz %ah        #  5     0xa  3      OPC=setnz_rh      
  retq             #  6     0xd  1      OPC=retq          
                                                          
.size target, .-target
